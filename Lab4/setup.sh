#!/bin/bash
set -e

uv sync
uv run jupyter lab notebooks/lab4_regression_classification.ipynb
