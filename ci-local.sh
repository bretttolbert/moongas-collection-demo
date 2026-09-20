#!/usr/bin/env bash
# Runs the same build/test steps as .github/workflows/ci.yml, using the
# moongas-mediascan-go, moongas-mediascan-python, and moongas-mediatest-python-pytest
# directories already checked out locally in or symlinked into the root 
# directory of this repository
set -euo pipefail

# Below is a Bash idiom used to reliably anchor a script's working directory 
# to the directory where the script itself is located (the repository root), 
# regardless of where you invoke it from in the terminal.
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_ROOT"

echo "==> Build and Install Go Module"
(cd moongas-mediascan-go && go install ./...)

echo "==> Run Go scanartistsyaml"
go -C "$REPO_ROOT/moongas-mediascan-go" run ./cmd/scan-to-artists-yaml "$REPO_ROOT/mediascan-config.yml" "$REPO_ROOT/mediascan-artists.yml" "$REPO_ROOT"

echo "==> Activating Python Virtual Environment"
source "$REPO_ROOT/.venv/bin/activate"

echo "==> Upgrade Pip"
python -m pip install --upgrade pip

echo "==> Install Local Python Packages"
python -m pip install pandas-stubs
python -m pip install --force-reinstall -e ./moongas-mediascan-python
python -m pip install --force-reinstall -e ./moongas-mediatest-python-pytest

echo "==> Run mediatest on moongas-library"
python -m mediatest --log-level=DEBUG -v -k "not test_album_dir_is_not_empty and not test_album_cover_exists" "$REPO_ROOT/mediatest-config.yml"
