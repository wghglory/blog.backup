# git clone https://github.com/wghglory/wghglory.github.io.git .deploy/wghglory.github.io

hexo generate
cp -R public/* .deploy/wghglory.github.io
cd .deploy/wghglory.github.io
git add .
git commit -m "update"
git push origin master
