---
title: "Resilient and Interpretable Power Fingerprinting for IoT DDoS Defense"
authors:
- admin
- Mingyu Yang
- Yuko Hara
author_notes:
- ""
- ""
date: "2026-05-04T00:00:00Z"
doi: "10.1109/OJCOMS.2026.3690041"

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-27T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Open Journal of the Communications Society*, vol.7, pp.4574-4589, 2026"
publication_short: ""

abstract: The proliferation of Internet of Things (IoT) devices has introduced severe vulnerabilities, notably Distributed Denial-of-Service (DDoS) attacks. Traditional network-layer intrusion detection relies on deep packet inspection and flow analysis, which struggle against modern encrypted traffic and raise severe privacy violations. To address these limitations, we propose a novel physical-layer framework that strictly preserves payload privacy by exploiting power side-channel signals. This study elevates the detection paradigm through three core pillars. First, we design a dynamic data acquisition and multi-domain feature engineering pipeline. Leveraging this robust feature space, our optimized XGBoost-based engine achieves an exceptional Macro-F1 score of 0.9988 for macroscopic anomaly detection and a robust 0.9658 for a multi-class identification task, seamlessly disentangling stealthy attacks from diverse legitimate IoT workloads (e.g., OpenHAB, ThingsBoard) across varying sampling scales. Second, we systematically evaluate the system’s resilience under extremely injected additive white Gaussian noise (AWGN). Even at 0 dB Signal-to-Noise Ratio, our system sustains a high anomaly detection F1-score of 0.9553, significantly outperforming traditional baselines. Third, to bridge the trust gap inherent in “closed-box” machine learning, we integrate the SHapley Additive exPlanations (SHAP) framework. The comprehensive interpretability analysis demonstrates that our model generates highly transparent and trustworthy alerts, explicitly mapping complex classification decisions back to physical root causes. Furthermore, zero-shot evaluations against unseen attack tools confirm the system’s generalization, achieving a Macro-F1 of 0.9755 for anomaly detection and a Macro-AUC of 0.8928 for attack identification. Ultimately, this research establishes a transparent, highly resilient, and privacy-centric methodological framework for IoT edge security.

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

