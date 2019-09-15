set -eux

target=$1

make dockerfile dir=${target}

git status
git add -A ${target}
git diff --quiet && git diff --staged --quiet || git commit m "[skip ci] Update ${target} image"

make -s new-tags dir=${target} | xargs -ITAG make push dir=${target} tag=TAG
