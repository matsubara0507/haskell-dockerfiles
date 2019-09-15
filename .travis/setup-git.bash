#!/bin/bash
set -eux

# setup ssh-agent and provide the GitHub deploy key
eval "$(ssh-agent -s)"
openssl aes-256-cbc -K $encrypted_ab476552e812_key -iv $encrypted_ab476552e812_iv -in .travis/id_rsa.enc -out .travis/id_rsa -d
chmod 600 .travis/id_rsa
ssh-add .travis/id_rsa

# commit the assets in docs/ if changed, and push to GitHub using SSH
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"
git remote set-url origin git@github.com:${TRAVIS_REPO_SLUG}.git
git checkout master