---
layout: post
title: "Live transcription with vosk"
date: September 2024
tags: [project, Python, AI]
thumbnail-img: /assets/img/projects/stt.jpg
cover-img: /assets/img/projects/stt.jpg
---

A desktop application built with Tauri and Vue.js (TypeScript) that provides real-time speech-to-text functionality using Vosk.

![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![Vue.js](https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vue.js&logoColor=4FC08D)
![Tauri](https://img.shields.io/badge/Tauri-24C8D8?style=for-the-badge&logo=tauri&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)

# Tauri Speech-to-Text App

## Features

- Real-time speech recognition
- Local SQL database for persistent storage of transcriptions
- Desktop-native performance with Tauri
- Modern UI built with Vue.js
- Type-safe with TypeScript
- Local database management

## Screenshots

<img src="{{ '/assets/img/projects/vosk-add-transcript.png' | relative_url }}"/>
<img src="{{ '/assets/img/projects/vosk-transcript.png' | relative_url }}"/>

## Technical Stack

- Tauri
- Vue.js 3
- TypeScript
- Vosk Speech Recognition

## Current Status

This project served as a learning experience for:
- Building desktop applications with Tauri
- Integrating native speech recognition
- TypeScript with Vue.js
- Audio processing in Rust

Development has been paused as the primary learning objectives were achieved. The core functionality works within Vosk's capabilities, though there's room for improvements in accuracy and performance.

## Installation

```bash
# Install dependencies
npm install

# Run in development
npm run tauri dev

# Build
npm run tauri build
```
