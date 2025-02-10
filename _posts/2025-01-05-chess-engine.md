---
layout: post
title: "Rust Chess Engine"
date: January 2025
tags: [project, Rust]
thumbnail-img: /assets/img/projects/chess.jpg
cover-img: /assets/img/projects/chess.jpg
---

A chess engine that demonstrates advanced algorithms through tree search optimization. 

![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

# Chess Engine (Rust)

## Project Highlights

- Implemented complete chess rules and validation in Rust, leveraging the language's memory safety and zero-cost abstractions
- Developed efficient board representation using bitboards and lookup tables
- Applied advanced tree search techniques for move evaluation:
  - Alpha-beta pruning with iterative deepening
  - Zobrist hashing for board state optimization
  - Transposition tables to cache evaluated positions
  - Move ordering with MVV-LVA (Most Valuable Victim - Least Valuable Attacker)

## Technical Challenges Solved

- Designed efficient move generation algorithms minimizing memory allocations
- Implemented time management system handling move urgency and game phase
- Optimized search algorithms through pruning techniques

## Current Focus

Enhancing the engine's strength through advanced search techniques:
- Quiescence Search implementation
- Null Move Pruning optimization
- Late Move Reductions
- Parallel search using Lazy SMP

## Skills Demonstrated

The search algorithme was evaluated around 1800 elo by chess.com. This cannot beat Magnus Carlsen yet but it's still evolving.

<img src="{{ '/assets/img/projects/chess_eval.png' | relative_url }}"/>

One thing is sure, it beats me !

## Links
[![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sacha-renault/chess_engine)