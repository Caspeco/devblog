# caspeco.github.io
Devblog for us awesome devs at Caspeco.

## About this blog

The blog is served from http://devs.caspeco.se.

Every article is stored in this public Github Repo as markdown documents. We use a tool called *hugo * to build these markdown documents into a static website.
The static files are then uploaded to the branch gh-pages where they are served.


## 0. Checkout the repository
`git clone https://github.com/Caspeco/devblog.git`
All the posts and changes are made in the `master` branch.


## 1. Write a new post
Creating a new post is simply creating a new markdown document in post/my-new-post.md and editing this file in e.g. Code.

We have a simple help script that will create a new document and open VS code.
Run  `.\newpost.bat name-of-article`. This will create a `name-of-article.md` *(Using hugo new for templating)* and launch VS code.

## 2. Add yourself as an author.

Edit the following files to add your author metadata:
```
layouts/partials/author_detail.html
layouts/partials/author_image.html
layouts/partials/author_name.html

# Add your image to
/static/images/your_image.jpg|png
```

## 3. Preview & Publish 

You can preview your changes by running the blog locally.
Run `hugo.exe serve --buildDrafts` to **preview** the blog (with drafts) on `http://localhost:1313`.

When you're satisfied with the result you can **publish by running** `.\publish.bat`. This will publish the generated html files to the gh-pages branch which will be served from http://devs.caspeco.se


## Feel free to hack the html & css
You're invited to improve the blogs html & css which are mainly located in the `/themes/hugo-dgraph-theme`-folder.
