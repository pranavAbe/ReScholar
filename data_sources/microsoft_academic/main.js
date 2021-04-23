const { request } = require("node:https");
const puppeteer = require("puppeteer");

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  const svc = request.args.get("svc");

  svc == "search_results" ? get_results(request) : get_paper_details(request);

  async function get_results(request) {
    const default_query: string = "residual_learning";
    const query: string = request.args.get("q") ?? default_query;
    const item_count: number = request.args.get("item_count") ?? 10;
    const sort_by: number = request.args.get("sort_by") ?? 0;
    const url: string = `https://academic.microsoft.com/search?q=${query}&f=&orderBy=${sort_by}&skip=0&take=10`;

    await page.goto(url, { waitUntil: "domcontentloaded" });

    const getResults = page.evaluate(() => {
      let items = [];
      const resultsNodeList = document.querySelectorAll(
        "#mainArea > router-view > ma-serp > div > div.results > div > compose > div > div.results > ma-card > div > compose > div > div.primary_paper"
      );
      for (let div of [...resultsNodeList]) {
        const title = div.children[0].innerText;
        const link = div.children[0].href;

        items.push({
          title: title,
          link: link,
        });
      }

      return JSON.stringify(getResults);
    });
  }

  // get paper details function
  async function get_paper_details(request) {
    const parse_url: String = request.args.get("url");
    const url: String = parse_url;

    await page.goto(url, { waitUntil: "domcontentloaded" });

    const getDetail = page.evaluate(() => {
      const title = document.querySelector(
        "#mainArea > router-view > div > div > div > div > h1"
      ).innerText;
      const year = document.querySelector(
        "#mainArea > router-view > div > div > div > div > a.au-target.publication > span.year"
      ).innerText;
      const references = document.querySelector(
        "#mainArea > router-view > div > div > div > div > div.stats > ma-statistics-item:nth-child(1) > div.ma-statistics-item.au-target > div.data > div.count"
      ).innerText;
      const citations = document.querySelector(
        "#mainArea > router-view > div > div > div > div > div.stats > ma-statistics-item:nth-child(2) > div.ma-statistics-item.au-target > div.data > div.count"
      ).innerText;
      const doi = document
        .querySelector(
          "#mainArea > router-view > div > div > div > div > a.doiLink.au-target"
        )
        .innerText.split(" ")[2];
      const journal =
        document.querySelector(
          "#mainArea > router-view > div > div > div > div > a.au-target.publication > span.pub-name.au-target"
        ).innerText ?? "";
      // get authors
      let authors = [];
      const authorsNodeList = document.querySelectorAll(
        "#mainArea > router-view > div > div > div > div > ma-author-string-collection > div > div > div"
      );
      for (let author of [...authorsNodeList]) {
        authors.push(author.children[0].innerText);
      }
      // abstract
      const abstract = document.querySelector(
        "#mainArea > router-view > div > div > div > div > p"
      ).innerText;
      // references, cited by and related links
      const referencesLink = document.URL;
      const citationsLink = referencesLink.replace("reference", "citedby");
      const relatedLink = referencesLink.replace("reference", "related");
      // * TODO
      const links = [];
      const pdfLinks = [];

      return {
        title: title,
        authors: authors,
        journal: journal,
        year: year,
        citations: citations,
        citationsLink: citationsLink,
        doi: doi,
        abstract: abstract,
        links: links,
        pdfLinks: pdfLinks,
        references: references,
        referencesLinks: referencesLink,
        relatedLink: relatedLink,
      };
    });

    return JSON.stringify(getDetail);
  }

  await browser.close();
})();
