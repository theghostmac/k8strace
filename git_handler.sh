#!/bin/bash
echo "Starting git workflow process..."

echo "# k8sTrace" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/theghostmac/k8sTrace.git
git push -u origin master


echo "Completed git control process ..."

say "Attention, the git process is completed."