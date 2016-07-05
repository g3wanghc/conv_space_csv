find ./data -name "*.DS_Store" -depth -exec rm {} \;
find ./data -type f -exec sed -Ei.bak 's/[ ]+/, /g' {} \;
find ./data -name "*.DS_Store" -depth -exec rm {} \;
for old in ./data/*.txt; do mv $old `basename $old .txt`.csv; done