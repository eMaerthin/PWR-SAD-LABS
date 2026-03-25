# Temat: EDA, klasteryzacja i redukcja wymiarów
## Cel zajęć
Celem laboratorium jest krótkie wejście w eksploracyjną analizę danych (EDA) oraz przygotowanie gruntu pod metody nienadzorowane: klasteryzację i redukcję wymiarów do wizualizacji.

Docelowo chcemy pracować na danych studenckich, ale w tej wersji laboratorium korzystamy ze zbioru Titanic jako zbioru referencyjnego.

## Charakter laboratorium
Materiały są podzielone na część podstawową oraz osobne notebooki rozszerzające dla chętnych:
- `notebooks/lab3_eda_clustering.ipynb` — wersja podstawowa,
- `notebooks/lab3-tsne-umap.ipynb` — redukcja wymiarów na `digits`,
- `notebooks/lab3-geopandas.ipynb` — krótki przykład wizualizacji geograficznej.

## Przygotowanie środowiska z użyciem `uv`
W katalogu `Lab3` uruchom:

```bash
uv sync
```

Notebook podstawowy:

```bash
uv run jupyter lab notebooks/lab3_eda_clustering.ipynb
```

Notebooki rozszerzające:

```bash
uv run jupyter lab notebooks/lab3-tsne-umap.ipynb
uv run jupyter lab notebooks/lab3-geopandas.ipynb
```

## Instalacja `uv`

### Windows PowerShell

1. Zainstaluj `uv` za pomocą Chocolatey (jeśli jeszcze nie masz Chocolatey, najpierw odwiedź https://chocolatey.org/install):

```powershell
choco install uv -y
```

2. Uruchom terminal PowerShell ponownie, aby odświeżyć zmienną `PATH`, następnie w katalogu `Lab3`:

```powershell
uv sync
uv run jupyter lab notebooks/lab3_eda_clustering.ipynb
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

3. W katalogu `Lab3`:

```bash
uv sync
uv run jupyter lab notebooks/lab3_eda_clustering.ipynb
```

## Uwaga techniczna
- Środowisko podstawowe obejmuje notebook główny oraz `GeoPandas`.
- `UMAP` moze wymagać osobnego doinstalowania lub pinowania zależności w tym środowisku Python 3.10 ze względu na problem `llvmlite/numba` z nowym `setuptools`.
- Jeśli chcesz uruchomić te przykłady lokalnie, najbezpieczniej instalować je osobno i warunkowo, a notebooki zawierają odpowiednie komunikaty.
