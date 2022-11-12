
INPUT_BRANCH="main"
REPOSITORY=${INPUT_REPOSITORY:-$GITHUB_REPOSITORY}


info="Commit: $(date)"
echo "$info" >> output.txt
echo "$info"
echo

git config --global user.email "tao.isaman@gmail.com"
git config --global user.name "tao-Isaman"

remote_repo="https://${GITHUB_ACTOR}:${INPUT_GITHUB_TOKEN}@github.com/${REPOSITORY}.git"

git add .
git commit -m "$info"
git push "${remote_repo}" HEAD:"${INPUT_BRANCH}" --follow-tags $_FORCE_OPTION $_TAGS;
# git push origin main

