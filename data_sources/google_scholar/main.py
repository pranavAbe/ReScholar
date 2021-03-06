from multiprocessing import Process, Queue, Manager
import scrapy.spiders
from scrapy.crawler import CrawlerProcess
from urllib.parse import urlencode
import re
import json


def GoogleScholar(request):
    def SearchResultsScraper(request):
        def script(queue, output):
            try:           
                API_KEY = '2e2d79e9d8b5d22114ae3b4b4ba6b507'

                def get_url(url):
                    payload = {'api_key': API_KEY, 'url': url, 'country_code': 'us'}
                    proxy_url = 'http://api.scraperapi.com/?' + urlencode(payload)
                    return proxy_url

                class SearchResultsSpider(scrapy.Spider):
                    name = 'GoogleScholarSearchResultsSpider'

                    # allowed_domains = ['scholar.google.com']
                    allowed_domains = ['api.scraperapi.com']

                    def start_requests(self):
                        url = 'https://scholar.google.com/scholar?' + urlencode({'hl': 'en', 'q': self.query})
                        # yield scrapy.Request(url, callback=self.parse, meta={'position': 0})
                        yield scrapy.Request(get_url(url), callback=self.parse, meta={'position': 0})

                    def parse(self, response):
                        print(response.url)
                        position = response.meta['position']
                        
                        for res in response.xpath('//*[@data-rp]'):
                            # Links
                            links = [res.xpath('.//h3/a/@href').extract_first()]
                            # Title
                            temp = res.xpath('.//h3/a//text()').extract()
                            if not temp:
                                title = "[C] " + "".join(res.xpath('.//h3/span[@id]//text()').extract())
                            else:
                                title = "".join(temp)
                            # Snippet 
                            snippet = "".join(res.xpath('.//*[@class="gs_rs"]//text()').extract()).replace("\u2026","...").replace("\u00a0","")
                            # Citations
                            if res.xpath('.//a[starts-with(text(),"Cited")]/text()').extract_first() is not None:
                                citations = res.xpath('.//a[starts-with(text(),"Cited")]/text()').extract_first().replace("Cited by ", "")
                            else:
                                citations = ""
                            # Citations Link
                            temp = res.xpath("//div[@class='gs_fl']/a[3]/@href").extract_first()
                            citations_link = "https://scholar.google.com" + temp if temp else ""
                            # Related Link
                            temp = res.xpath('.//a[starts-with(text(),"Related")]/@href').extract_first()
                            related_link = "https://scholar.google.com" + temp if temp else ""
                            # Version Link
                            temp = res.xpath(".//a[@class='gs_nph']/@href").extract_first()
                            versions_link = "https://scholar.google.com" + temp if temp else ""
                            # Version Count
                            if res.xpath('.//a[contains(text(),"version")]/text()').extract_first() is not None:
                                versions = res.xpath('.//a[contains(text(),"version")]/text()').extract_first().replace("All ", "").replace(" versions", "")
                            else:
                                versions = ""
                            # Publisher Data
                            publisher_data = "".join(res.xpath('.//div[@class="gs_a"]//text()').extract()).replace("\u2026","...").replace("\u00a0","")
                            year = re.search("\d+", publisher_data)[0]
                            if (publisher_data.split("-")[1].split(",")[0].strip() != re.search("\d+", publisher_data)[0]):
                                journal = publisher_data.split("-")[1].split(",")[0].strip()
                            else:
                                journal = ""
                            authors = []
                            for author in publisher_data.split("-")[0].split(","):
                                authors.append(author.strip()) 
                            
                            position += 1
                            paper = {'title': title,  'authors': authors, 'journal': journal, 'year': year, 
                                    'snippet': snippet, 'detailsLink': "None", 'links': links, 'citations': citations, 'citationsLink': citations_link,
                                    'relatedLink': related_link, 'versions': versions, 'versionsLink': versions_link,}
                            
                            output.append(paper)
                            yield paper
                            
                        next_page = response.xpath('//td[@align="left"]/a/@href').extract_first()
                        if next_page:
                            url = "https://scholar.google.com" + next_page
                            # yield scrapy.Request(url, callback=self.parse,meta={'position': position})
                            yield scrapy.Request(get_url(url), callback=self.parse,meta={'position': position})

                # Receive arguments from HTTP request
                default_query = ['Residual learning']
                query = request.args.get('q') if request.args.get('q')!=None else default_query
                paper_count = request.args.get('paper_count') if request.args.get('paper_count')!=None else 10
                custom_settings = {'CLOSESPIDER_ITEMCOUNT':f'{paper_count}',}

                # Instantiate and run spider
                process = CrawlerProcess(custom_settings)
                process.crawl(SearchResultsSpider, query = query)
                process.start()
                
                queue.put(None)

            # Check for errors in process and add to queue
            except Exception as e:
                queue.put(e)         

        queue = Queue()
        manager = Manager()
        output = manager.list()

        # Wrapping the spider in a child process
        main_process = Process(target=script, args=(queue, output,))
        main_process.start()    
        main_process.join()     

        # Display error checking results
        result = queue.get()
        if result is not None:
            raise result

        return json.dumps(list(output))
        
    service = request.args.get('svc')
    if service == 'search_results':
        return SearchResultsScraper(request)
    elif service == 'paper_details':
        return "ERROR: Paper details not found for Google Scholar"
    else: 
        return "ERROR: Service request invalid"