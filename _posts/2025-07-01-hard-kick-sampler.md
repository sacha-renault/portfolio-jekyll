---
layout: post
title: "Hard Kick Sampler"
date: July 2025
tags: [project, Rust, Audio]
thumbnail-img: /assets/img/projects/hardkicksampler.png
cover-img: /assets/img/projects/hardkicksampler.png
---

A VST3/CLAP plugin for hardstyle music production, built to give producers precise control over kick drum layering and synthesis.

![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![Audio](https://img.shields.io/badge/Audio_DSP-FF6B6B?style=for-the-badge)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

# Hard Kick Sampler

## Project Overview

This is a multi-layer sampler plugin designed specifically for hardstyle kick production. In hardstyle music, kicks are typically built from multiple components (punch, transient, crunch, bass) that need independent control. Most DAW samplers treat kicks as single monolithic samples, making it difficult to adjust individual layers without re-exporting from a separate project.

## Technical Implementation

The plugin is built using the NIH-plug framework for Rust, which handles the VST3/CLAP protocol implementation. Key technical features include:

**Audio Processing**
- Real-time sample playback with per-layer parameter control
- Two pitch-shifting algorithms: traditional sample rate conversion and PSOLA (Pitch Synchronous Overlap and Add)
- Custom ADSR envelope processing for each layer
- Configurable blend groups for layer mixing behavior

**Per-Layer Controls**
- Individual mute, gain, and tonal adjustments
- Root note configuration with semitone offset for pitch tracking
- Adjustable ADSR envelopes for each layer
- Sample start offset for precise transient shaping
- Configurable blend groups to control layer interaction

## Current Status

This was my first VST plugin and primarily served as a learning project to understand audio programming in Rust. It's feature-complete for my original goals and works reliably in production environments, but I'm not actively adding new features. 

## Links

[![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sacha-renault/hard_kick_sampler)
