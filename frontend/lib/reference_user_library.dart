/// User Library object containing user's library objects and data.
Map<String, dynamic> userLibrary = {
  /// Contains the paper count in the primary library sections.
  "libraryPaperCount": {
    "Papers": 30,
    "Favourites": 0,
    "Archive": 0,
    "Recycle Bin": 0,
  },

  /// Primary FolderTree data where:
  /// * Key: Folder Path
  /// * Label: Folder Name
  /// * Data: Additional properties of each folder, namely, the folder's colour and the count of papers within each folder
  "folderTree": [
    {
      "key": "ROOT/",
      "label": "Folders",
      "data": {"folderColour": 0xFF3D6BB8, "paperCount": 0},
      "children": [
        {
          "key": "ROOT/Medicine/",
          "label": "Medicine",
          "data": {"folderColour": 0xFF8BB6FF, "paperCount": 0},
          "children": [
            {
              "key": "ROOT/Medicine/Neuroscience/",
              "label": "Neuroscience",
              "data": {"folderColour": 0xFF8BB6FF, "paperCount": 0}
            }
          ]
        },
        {
          "key": "ROOT/Machine Learning/",
          "label": "Machine Learning",
          "data": {"folderColour": 0xFF8BB6FF, "paperCount": 0},
          "children": [
            {
              "key": "ROOT/Machine Learning/Deep Learning/",
              "label": "Deep Learning",
              "data": {"folderColour": 0xFF8BB6FF, "paperCount": 0}
            }
          ]
        }
      ]
    }
  ],

  /// List of all papers added to the library and state properties
  "papers": [
    {
      "title": "Deep residual learning for image recognition",
      "authors": ["K He", "X Zhang", "S Ren", "J Sun"],
      "journal": "Proceedings of the IEEE...",
      "year": "2016",
      "snippet":
          "Deeper neural networks are more difficult to train. We present a residual learning framework to ease the training of networks that are substantially deeper than those used previously. We explicitly reformulate the layers as learning residual functions with reference to the layer...",
      "detailsLink": "None",
      "links": [
        "http://openaccess.thecvf.com/content_cvpr_2016/html/He_Deep_Residual_Learning_CVPR_2016_paper.html"
      ],
      "citations": "76779",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:LrPNPdmMzoAJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "55",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=9281510746729853742&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-25 11:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title":
          "Beyond a gaussian denoiser: Residual learning of deep cnn for image denoising",
      "authors": ["K Zhang", "W Zuo", "Y Chen", "D Meng..."],
      "journal": "IEEE transactions on...",
      "year": "2017",
      "snippet":
          "The discriminative model learning for image denoising has been recently attracting considerable attentions due to its favorable denoising performance. In this paper, we take one step forward by investigating the construction of feed-forward denoising convolutional...",
      "detailsLink": "None",
      "links": ["https://ieeexplore.ieee.org/abstract/document/7839189/"],
      "citations": "3052",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:UUn5DRaDbnQJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "10",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=8389787286584772945&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-20 01:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Multimodal residual learning for visual qa",
      "authors": ["JH Kim", "SW Lee", "DH Kwak", "MO Heo", "J Kim..."],
      "journal": "arXiv preprint arXiv...",
      "year": "2016",
      "snippet":
          "Deep neural networks continue to advance the state-of-the-art of image recognition tasks with various methods. However, applications of these methods to multimodality remain limited. We present Multimodal Residual Networks (MRN) for the multimodal residual ...",
      "detailsLink": "None",
      "links": ["https://arxiv.org/abs/1606.01455"],
      "citations": "236",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:tFhXwZt6ddQJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "12",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=15309277317698115764&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-20 12:39:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Fixup initialization: Residual learning without normalization",
      "authors": ["H Zhang", "YN Dauphin", "T Ma"],
      "journal": "arXiv preprint arXiv:1901.09321",
      "year": "1901",
      "snippet":
          "Normalization layers are a staple in state-of-the-art deep neural network architectures. They are widely believed to stabilize training, enable higher learning rate, accelerate convergence and improve generalization, though the reason for their effectiveness is still an...",
      "detailsLink": "None",
      "links": ["https://arxiv.org/abs/1901.09321"],
      "citations": "134",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:AW0EAJYNh48J:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "5",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=10342250007176178945&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-20 11:19:42.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Deep residual learning for image steganalysis",
      "authors": ["S Wu", "S Zhong", "Y Liu"],
      "journal": "Multimedia tools and applications",
      "year": "2018",
      "snippet":
          "Image steganalysis is to discriminate innocent images and those suspected images with hidden messages. This task is very challenging for modern adaptive steganography, since modifications due to message hiding are extremely small. Recent studies show that...",
      "detailsLink": "None",
      "links": ["https://link.springer.com/article/10.1007/s11042-017-4440-4"],
      "citations": "241",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:1N0s5BrEfPYJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "6",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=17761286650218733012&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-20 12:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Crest: Convolutional residual learning for visual tracking",
      "authors": ["Y Song", "C Ma", "L Gong", "J Zhang..."],
      "journal": "Proceedings of the...",
      "year": "2017",
      "snippet":
          "Discriminative correlation filters (DCFs) have\\ryn been shown to perform superiorly in visual tracking. They\\ryn only need a small set of training samples from the initial frame to generate an appearance model. However, existing DCFs learn the filters separately from feature...",
      "detailsLink": "None",
      "links": [
        "http://openaccess.thecvf.com/content_iccv_2017/html/Song_CREST_Convolutional_Residual_ICCV_2017_paper.html"
      ],
      "citations": "399",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:jVpgNy_57i8J:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "9",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=3453971945427589773&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-20 11:14:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Shakedrop regularization for deep residual learning",
      "authors": ["Y Yamada", "M Iwamura", "T Akiba", "K Kise"],
      "journal": "IEEE Access",
      "year": "2019",
      "snippet":
          "Overfitting is a crucial problem in deep neural networks, even in the latest network architectures. In this paper, to relieve the overfitting effect of ResNet and its improvements (ie, Wide ResNet, PyramidNet, and ResNeXt), we propose a new regularization method...",
      "detailsLink": "None",
      "links": ["https://ieeexplore.ieee.org/abstract/document/8936428/"],
      "citations": "68",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:IxD67g2gYUUJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "3",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=4999453043062345763&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-03-20 11:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Attention residual learning for skin lesion classification",
      "authors": ["J Zhang", "Y Xie", "Y Xia", "C Shen"],
      "journal": "IEEE transactions on medical...",
      "year": "2019",
      "snippet":
          "Automated skin lesion classification in dermoscopy images is an essential way to improve the diagnostic performance and reduce melanoma deaths. Although deep convolutional neural networks (DCNNs) have made dramatic breakthroughs in many image classification...",
      "detailsLink": "None",
      "links": ["https://ieeexplore.ieee.org/abstract/document/8620285/"],
      "citations": "105",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:2yUzIOctv38J:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "7",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=9205126634069501403&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2020-04-20 11:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title": "Formresnet: Formatted residual learning for image restoration",
      "authors": ["J Jiao", "WC Tu", "S He", "RWH Lau"],
      "journal": "Proceedings of the IEEE...",
      "year": "2017",
      "snippet":
          "In this paper, we propose a deep CNN to tackle the image restoration problem by learning the structured residual. Previous deep learning based methods directly learn the mapping from corrupted images to clean images, and may suffer from the gradient...",
      "detailsLink": "None",
      "links": [
        "http://openaccess.thecvf.com/content_cvpr_2017_workshops/w12/html/Jiao_FormResNet_Formatted_Residual_CVPR_2017_paper.html"
      ],
      "citations": "34",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:F3t3oPZod3IJ:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "6",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=8248176651015781143&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-04-21 11:19:38.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    },
    {
      "title":
          "Cascade residual learning: A two-stage convolutional neural network for stereo matching",
      "authors": ["J Pang", "W Sun", "JSJ Ren", "C Yang..."],
      "journal": "Proceedings of the...",
      "year": "2017",
      "snippet":
          "Leveraging on the recent developments in convolutional neural networks (CNNs), matching dense correspondence from a stereo pair has been cast as a learning problem, with performance exceeding traditional approaches. However, it remains challenging to generate...",
      "detailsLink": "None",
      "links": [
        "https://openaccess.thecvf.com/content_ICCV_2017_workshops/w17/html/Pang_Cascade_Residual_Learning_ICCV_2017_paper.html"
      ],
      "citations": "273",
      "citationsLink":
          "https://scholar.google.com/scholar?cites=9281510746729853742&as_sdt=2005&sciodt=0,5&hl=en",
      "relatedLink":
          "https://scholar.google.com/scholar?q=related:S5gVi5RXF40J:scholar.google.com/&scioq=residual+learning&hl=en&as_sdt=0,5",
      "versions": "8",
      "versionsLink":
          "https://scholar.google.com/scholar?cluster=10166690979312408651&hl=en&as_sdt=0,5",
      "paperProperties": {
        "source": "Google Scholar",
        "timestamp": "2021-06-20 11:19:48.592",
        "isRead": false,
        "isFavourite": false,
        "isArchived": false,
        "isDeleted": false,
        "folderKey": "None"
      }
    }
  ]
};
