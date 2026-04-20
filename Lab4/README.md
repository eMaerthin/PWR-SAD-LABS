# Temat: Intro do modelowania statystycznego
## Cel zajęć
Celem laboratorium jest krótkie wejście w modelowanie nadzorowane: regresję liniową i logistyczną oraz podstawy oceny jakości modeli.

Docelowo chcemy pracować na danych studenckich, ale w tej wersji laboratorium korzystamy z lokalnie dostępnego zbioru diabetes z `scikit-learn` oraz zbioru Breast Cancer Wisconsin, żeby skupić się na interpretacji modeli i metryk.

## Charakter laboratorium
Materiały są podzielone na część podstawową oraz osobne notebooki rozszerzające dla chętnych:
- `notebooks/lab4_regression_classification.ipynb` — wersja podstawowa,
- `notebooks/lab4_regularization.ipynb` — krótki przykład regularyzacji liniowej,
- `notebooks/lab4_thresholds_metrics.ipynb` — wpływ progu klasyfikacji na metryki.

## Przygotowanie środowiska z użyciem `uv`
W katalogu `Lab4` uruchom:

```bash
uv sync
```

Notebook podstawowy:

```bash
uv run jupyter lab notebooks/lab4_regression_classification.ipynb
```

Notebooki rozszerzające:

```bash
uv run jupyter lab notebooks/lab4_regularization.ipynb
uv run jupyter lab notebooks/lab4_thresholds_metrics.ipynb
```

## Instalacja `uv`

### Windows PowerShell

1. Zainstaluj `uv` za pomocą Chocolatey (jeśli jeszcze nie masz Chocolatey, najpierw odwiedź https://chocolatey.org/install):

```powershell
choco install uv -y
```

2. Uruchom terminal PowerShell ponownie, aby odświeżyć zmienną `PATH`, następnie w katalogu `Lab4`:

```powershell
uv sync
uv run jupyter lab notebooks/lab4_regression_classification.ipynb
```

### macOS (Homebrew)

1. Upewnij się, że Homebrew jest zainstalowany. Jeśli jeszcze nie, uruchom:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Zainstaluj `uv` i zaktualizuj `PATH` (jeśli wymagane):

```bash
brew install uv
```

3. W katalogu `Lab4`:

```bash
uv sync
uv run jupyter lab notebooks/lab4_regression_classification.ipynb
```

## Uwaga techniczna
- Środowisko obejmuje notebook główny oraz dwa krótkie notebooki rozszerzające.
- W notebooku głównym pokazujemy ten sam pipeline przygotowania danych dla regresji i klasyfikacji, żeby łatwiej porównać zadania.
- Zbiór regresyjny jest ładowany funkcją `load_diabetes`, więc notebook działa offline bez dodatkowego pobierania danych.
- Jeśli chcesz uruchomić ćwiczenia na własnych danych, podmień źródło danych i zachowaj ten sam schemat: podział na zbiór treningowy/testowy, preprocessing, dopasowanie modelu i ocenę jakości.
