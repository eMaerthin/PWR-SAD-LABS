#!/bin/bash

set -e

if [ ! -d ".venv" ]; then
  uv sync
fi

# Use the local environment managed by this lab's pyproject.toml.
uv sync
uv run jupyter lab notebooks
