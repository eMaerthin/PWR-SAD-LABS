#!/bin/bash
set -euo pipefail

# Dedykowane środowisko UMAP znajduje się w katalogu umap_env.
(
  cd /Users/marcinbodych/Workspace/2026-pwr/statystyczna_analiza_danych/PWR-SAD-LABS/Lab3/umap_env
  uv sync
  uv run jupyter lab lab3-umap.ipynb
)
