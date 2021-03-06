# Content for ddd-ruby.github.io

Generated with Hugo (https://gohugo.io/)

Current setup is implemented after the tutorial here:

- https://gohugo.io/tutorials/github-pages-blog/


## Requirements

- Install Hugo: `brew update && brew install hugo`
- Clone content: `git clone git@github.com:ddd-ruby/ddd-ruby-hugo.git`

## Making changes:

Start server with live-updating on `http://localhost:1313/`

```bash
make server
```

Add some content to the `content` folder. For examples looks in `themes/exampleSite/content`.
Review changes and commit them.


## Deployment

This will generate static content and push it to ddd-ruby/ddd-ruby.github.io.

```bash
make deploy
```

## Acknowledgements

- Hugo: - fast static site generator
- Theme: - [Material Docs](http://themes.gohugo.io/theme/material-docs/)
