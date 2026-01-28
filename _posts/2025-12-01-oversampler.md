---
layout: post
title: "Audio Oversampler"
date: December 2025
tags: [project, Rust, Audio, Library]
thumbnail-img: /assets/img/projects/oversampler.png
cover-img: /assets/img/projects/oversampler.png
---

A high-performance real-time oversampling library for audio plugin development in Rust.

![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![Audio](https://img.shields.io/badge/Audio_DSP-FF6B6B?style=for-the-badge)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

# Audio Oversampler

## Project Overview

When applying non-linear effects like distortion, saturation, or wave shaping to audio, aliasing artifacts can occur that degrade sound quality. Oversampling solves this by processing audio at a higher sample rate, then downsampling back to the original rate.

This library provides 2x, 4x, 8x, and higher-order oversampling with a focus on the constraints of real-time audio processing: zero allocations during processing, predictable latency, and efficient CPU usage.

<img src="{{ '/assets/img/projects/Clipping.gif' | relative_url }}" style="width:25vw;"/>

## Technical Implementation

**Core Architecture**

The library is built around a trait-based design that separates the oversampling algorithm from the buffer management. The main `Oversampler<T>` struct handles:
- Pre-allocated working buffers sized for the maximum oversampling factor
- Cascaded 2x stages that can be chained to achieve 4x, 8x, 16x oversampling
- Automatic buffer routing between upsampling, processing, and downsampling
- Latency calculation across the entire processing chain

**FIR Filter**

The default implementation uses FIR (Finite Impulse Response) filters for high-quality upsampling and downsampling. FIR filters are preferred in audio because they:
- Have linear phase response (no phase distortion)
- Are inherently stable
- Provide predictable frequency response

The implementation supports configurable quality/latency tradeoffs through filter tap count and stopband attenuation settings.

**Real-Time Constraints**

Audio plugins run on a real-time thread where memory allocations or blocking operations can cause audio dropouts. The library addresses this by:
- Pre-allocating all working buffers during initialization
- Using in-place processing to minimize memory copies
- Providing compile-time guarantees through Rust's type system

## Design Decisions

**Trait-Based Extensibility**

The `OversamplerStage` trait allows users to implement custom oversampling algorithms (IIR filters, polyphase filters, etc.) while reusing the buffer management and staging logic. This separation of concerns makes the library flexible without sacrificing performance.

**NIH-Plug Integration**

The library is designed to work seamlessly with the NIH-plug framework by:
- Operating directly on NIH-plug's `Buffer` type
- Providing latency information for DAW delay compensation
- Supporting parameter automation at oversampled rates

**Configurable Quality**

Different use cases need different quality/latency tradeoffs. A mastering plugin might prioritize quality over latency, while a live performance tool needs minimal latency. The library exposes these tradeoffs through configuration rather than forcing a one-size-fits-all approach.

## Links

[![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sacha-renault/nih_oversampler)