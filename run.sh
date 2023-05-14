HTML_TEMPLATE="./templates/template.html"
CSS_TEMPLATE="./templates/min_style.css"

for md_file in ./md/*.md; do
  html_file="./html/$(basename "${md_file%.*}").html"
  pandoc -s "$md_file" --self-contained --css "$CSS_TEMPLATE" --template "$HTML_TEMPLATE" -o "$html_file"
done