#!/bin/bash
set -e

uv sync
uv run jupyter lab notebooks/lab3_eda_clustering.ipynb
