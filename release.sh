git checkout main
helm package argo-tunnel
helm repo index .
git add -A
git commit -m "dump"
git push
git checkout gh-pages
git checkout main -- index.yaml
git checkout main -- 'argo-tunnel-*'
git commit -m "dump"
git push
git checkout main