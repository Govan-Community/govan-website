# Govan Community Website


This websites hosts the meeting notes and the letters related to Govan Community Council.

It is based on the [Affiliates Jekyll Theme](https://wowthemesnet.github.io/affiliates-jekyll-theme/) | [Docs & Download](https://bootstrapstarter.com/template-affiliates-bootstrap-jekyll/)

To run the website locally first install the dependencies with

```
bundle install
```

Then run the server with.

```
bundle exec jekyll serve
```

The server is deployed using github actions.

## How to add new notes

The notes are taken using Microsoft Word, which of course is not web-friendly.
Before uploading, they are converted to _markdown_ using

```
pandoc -o notes.md file.docx
```

This converts all the titles, bullet points and styling to markdown, which
is then added to the `_post` directory.

Some metadata is added as a yaml header, including the title and date.

