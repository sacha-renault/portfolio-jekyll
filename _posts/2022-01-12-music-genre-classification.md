---
layout: post
title: "Music Genre CNN Classification"
date: 2022-12-01
tags: [project, Python]
thumbnail-img: /assets/img/projects/music-genre-classification.jpg
cover-img: /assets/img/projects/music-genre-classification.jpg
---

This was one of **my first deep learning projects**, and the one that sparked my love for deep learning. Working on music genre classification using a CNN was a great introduction to audio data processing and inspired me to explore more about neural networks and their applications.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)

## Goal of the Project

Using this [Kaggle dataset](https://www.kaggle.com/datasets/andradaolteanu/gtzan-dataset-music-genre-classification), the goal was to create a model that could classify music genres.

## Data Processing

All the audio files were **RMS normalized** to the same level since some music genres had significant volume disparities. Without normalization, the model tended to cluster genres based on volume rather than the frequency characteristics used. Normalizing ensured that the model focused more on the frequency patterns, improving the classification results.

## Analysis of Results

I was quite satisfied with the results on the validation data.

<!-- This image is a confusion matrix: metal and jazz have 1, reggae is the lowest at 0.64, with an average accuracy of 0.87 -->
<img src="{{ '/assets/img/projects/cm-cnn.png' | relative_url }}"/>

Using **Grad-CAM**, I also analyzed what the model was "looking at" to make its predictions. The heatmaps showed that the model often focused on "breaks" or pauses in the music. Generally, it seemed more interested in the empty parts of the spectrum rather than the fuller sections.
<img src="{{ '/assets/img/projects/grad_cam.png' | relative_url }}"/>

## Testing the model on real world

To truly test the model, I needed to evaluate it on music that we can find on YouTube. I was happy to see that it classified rock and metal songs quite well. On the other hand, some genres were not recognized as accurately.

Since the model classifies music by listening to 30-second chunks of audio, I divided real-world songs into 30-second segments, with a bit of overlap to ensure continuity. Most songs were Top-2 classified by the model for at least 50% of the song, which indicates promising performance.
