---
layout: post
title: "Data Processing Pipeline"
date: August 2024
tags: [project, Python]
thumbnail-img: /assets/img/projects/pipeline.png
cover-img: /assets/img/projects/pipeline.png
---

This project is **not** a traditional data engineering pipeline like the ones used to move data between systems. Instead, it's a pipeline specifically designed to process data for **deep learning** workflows. It focuses on tasks like preparing, transforming, and augmenting data right before it’s fed into a machine learning model.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

#### Key Features

- **Deferred Execution**: The pipeline supports deferred execution, allowing users to define the pipeline without immediately executing it. This feature is useful for building complex data transformations and processing steps.
- **Flexible Input/Output Nodes**: Users can define multiple input and output nodes to handle various data formats and workflows.
- **Modular Design**: The pipeline consists of nodes that can be combined in various ways to form complex processing graphs.
- **Validator Integration**: Built-in validators ensure that inputs and outputs meet certain criteria before execution.

#### Example Use Case

Here's a simple example of how to use the pipeline:

```python
# Import the necessary module
import dl_data_pipeline as dp
from dl_data_pipeline.process_functions import process_2d

# Define the inputs for the pipeline
input_node1 = dp.InputNode(name="1")

# Pass the input through functions to create the graph
x = process_2d.open_rgb_image(input_node1)
out1 = process_2d.padding_2d(x, (256,256), fill_value = 0.0)

# Create the pipeline by specifying the inputs and outputs
pipe = dp.Pipeline(inputs=[input_node1], outputs=[out1])

# Call the pipeline with the required inputs and get the outputs
img = pipe("path/to/image.png")
```

---

[documentation](https://sacha-renault.github.io/DataPipeline/)  
[GitHub](https://github.com/sacha-renault/DataPipeline)  
[PyPI package](https://pypi.org/project/dl-data-pipeline/)
