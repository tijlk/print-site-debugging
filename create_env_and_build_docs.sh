if [ -d venv ]; then rm -Rf venv; fi
conda create --prefix ./venv python=3.6 -y
eval "$(conda shell.bash hook)"
conda activate ./venv
pip install pip==21.3.1
pip install -r requirements.txt
mkdocs build
htmlark docs_html/print_page.html -o documentation.html