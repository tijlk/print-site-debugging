mkdocs build
sed -i '' 's/\/\/assets/assets/g' docs_html/print_page.html
htmlark docs_html/print_page.html -o documentation.html
