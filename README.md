# My hexo-theme-next blog backup

You're most welcome to review my blog: https://wghglory.github.io

## Set up

Make sure `npm install hexo-cli -g` to install hexo before start.

```bash
git clone https://github.com/wghglory/blog.theme-next.backup.git
npm install
```
## Write posts

- `hexo n "postname"` to create a post
- Under source \_posts folder you will see the post created
- After finishing the post, `hexo g` to generate all files in public folder
- `hexo s` to see the changes at localhost:4000
- `hexo d` to deploy all files to the site

> #### Note: if you want to deploy manually, in the blog folder, run below:
>
```bash
git clone https://github.com/wghglory/wghglory.github.io.git .deploy/wghglory.github.io
```
run below and run _hexo.sh_ (sudo chmod 0755 "hexo.sh" to solve permission deny)
```bash
hexo generate
cp -R public/* .deploy/wghglory.github.io  # copy public folder contents to .deploy/wghglory.github.io
cd .deploy/wghglory.github.io
git add .
git commit -m "update"
git push origin master
```
