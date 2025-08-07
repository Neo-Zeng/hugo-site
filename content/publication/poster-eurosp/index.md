---
title: "Poster: Lightweight Network Intrusion Detection System for RISC-V Based Edge Devices"
authors:
- Songxuan Liu
- admin
- Jan Tobias Mühlberg
- Yuko Hara
author_notes:
- ""
- ""
- ""
- ""
date: "2025-06-30T00:00:00Z"
doi: "https://doi.org/10.5281/zenodo.16758609"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-05-31T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: " *IEEE European Symposium on Security and Privacy (EuroS&P)*, Venice, Italy, Jun. 2025."
publication_short: ""

abstract: Network Intrusion Detection Systems (NIDS) are essential for protecting cloud, fog, and edge computing from cyberattacks. With the rapid proliferation of edge devices in the Internet of Things (IoT) ecosystem and their important role in data processing and computing, these devices have become a major target for cyberattacks. Although most of anomaly-based NIDS built with machine learning have shown promise in detecting malicious network traffic, deploying these NIDS models on edge devices remains challenging, mainly because of the limited computational and memory resources of edge devices, their susceptibility to tampering of model parameters, related scalability issues of large NIDS models, and high false-positive rates. To address these challenges, we propose lightweight NIDS that is protected in a multi-enclave Trusted Execution Environment (TEE) architecture. We use neural network unstructured pruning techniques to reduce NIDS model size, and leverage the Keystone Enclave's multi-enclave  TEE architecture to enhance the security and scalability of NIDS. We evaluate the proposed NIDS using the CICIDS 2018 and NSL-KDD datasets and report a 75% reduction for our model's memory usage without significant impact on detection accuracy.
# Summary. An optional shortened abstract.
summary: 
tags:
- International Conference
featured: false

# links:
# - name: ""
#   url: ""
url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ''
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: example
---

