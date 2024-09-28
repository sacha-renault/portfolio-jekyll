---
layout: post
title: "Emotion Classification with Vision Transformers"
date: November 2023
tags: [project, Python, AI]
thumbnail-img: /assets/img/projects/emotions.jpg
cover-img: /assets/img/projects/emotions.jpg
---

This was a relatively short but fascinating project where I experimented with **Vision Transformers (ViT)**—a model architecture I hadn’t explored much before. The main goal was to apply a **pre-trained ViT** for **emotion classification**. I learned a lot about how ViTs work and their potential applications in computer vision tasks.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Hugging Face](https://img.shields.io/badge/Hugging%20Face-FFD700?style=for-the-badge&logo=huggingface&logoColor=black)
![Kaggle](https://img.shields.io/badge/Kaggle-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white)

## Approach

I took a **pre-trained Vision Transformer** and **removed the classification head**. Afterward, I trained a new head specifically for **emotion classification**. This allowed me to leverage the powerful feature extraction capabilities of ViT, while adding a custom classification layer tailored for my task. The result was a model that could classify facial emotions effectively, even with a relatively short training period.

## Key Takeaways

- **Exploring ViTs**: I was new to Vision Transformers, and this project gave me a hands-on understanding of their structure and how they differ from traditional convolutional networks.
- **Transfer Learning**: By using a pre-trained model and only retraining the head, I was able to complete the project efficiently while still getting good performance.
- **Short but Impactful**: Although this was a short project, it was an **interesting exploration** into ViTs, and it really showed me the power of transformers beyond NLP tasks.

## Conclusion

The main goal of this project was to use Vision Transformers (ViT) and gain hands-on experience with them. The emotion classification aspect was _simply_ a pretext to explore and understand how ViTs work in practice. Despite being a short project, it provided me with a better understanding of transformers in computer vision and allowed me to learn new techniques along the way.

## Resources

[dataset](https://www.kaggle.com/datasets/noamsegal/affectnet-training-data) used for training.
