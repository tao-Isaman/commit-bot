

info="Commit: $(date)"
echo "$info" >> output.txt
echo "$info"
echo

git add .
git commit -m "$info"

