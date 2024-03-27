---
title: "Hardware/Software Codesign of Real-Time Intrusion Detection System for Internet of Things Devices"
authors:
- **Qingyu Zeng**
- Yuko Hara-Azumi
author_notes:
- "corresponding author"
- ""
date: "2024-03-22T00:00:00Z"
doi: "10.1109/JIOT.2024.3380822"

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-27T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Internet of Things Journal*, 2024. (*accepted)"
publication_short: ""

abstract: The rapid expansion of the Internet of Things (IoT) has increased security concerns, thereby necessitating efficient intrusion detection systems (IDS). In this paper, we propose a real-time IoT IDS designed by combining a random forest (RF) classifier with an ensemble feature selection technique (EFST). The proposed IDS can be deployed on a small-scale field-programmable gate array (FPGA) board. The system utilizes a two-metric ensemble feature selection process to reduce computational complexity and enhance classification accuracy. In addition, the EFST aggressively extracts a limited number of features, thereby reducing the complexity of the RF model. Then, the tailored RF classifier is mapped onto an FPGA-based hardware accelerator to realize real-time detection. The proposed method was evaluated experimentally on the benchmark BoT-IoT dataset. The results demonstrate that the proposed IDS realizes significant improvements in terms of resource utilization and processing time compared to several state-of-the-art FPGA-based IDS implementations while maintaining sufficient detection accuracy. In particular, our implementation on the Xilinx PYNQ Z2 achieved 10.2×, 135.7×, and 8.43× speed-up compared to state-of-the-art IDSs running on an Intel Core i7 CPU, an ARM Cortex-A9 microprocessor, and a neural network-based accelerator on the PYNQ, respectively. In addition, our approach exhibits the lowest resource utilization among FPGA-based IDS solutions. These results demonstrate that this work contributes to developing secure and sustainable IoT ecosystems by integrating EFST, RF classification, and FPGA-based acceleration.

# Summary. An optional shortened abstract.
summary: 
tags:
- Journal Paper
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


