# jekyll-course-theme

Jekyll theme for use on some University of Helsinki courses.

The theme repository itself is also a Jekyll site demonstrating the use of the
theme. See it on [GitHub Pages](https://ollpu.github.io/jekyll-course-theme/).

## Setup for existing site

This theme is currently not on RubyGems, and it is intended to be used via the
`jekyll-remote-theme` plugin on GitHub Pages.

Add this to your `_config.yml`:

```yaml
plugins:
  - jekyll-remote-theme

remote_theme: ollpu/jekyll-course-theme@v1
```

## Setup for new site

1.  **Initialize Jekyll (optional)**
    
    This step isn't strictly necessary if you don't want to develop the site
    locally. Start with an empty Git repository if you want to skip it.

    Run
    ```
    jekyll new site-name
    cd site-name
    ```
2.  **Configure site**

    Replace or create the file `_config.yml` with contents like this:

    ```yaml
    title: Site Name
    subtitle: e.g. Spring 2023
    lang: en # Or fi for Finnish
    baseurl: "/site-name"
    url: "https://GITHUB_USER.github.io"
    # Uncomment to change the theme color:
    # theme-color: '#60a6ec'

    plugins:
      - jekyll-remote-theme

    remote_theme: ollpu/jekyll-course-theme@v1

    markdown: kramdown
    highlighter: rouge
    kramdown:
      input: GFM
      # Uncomment for Finnish quotes:
      # smart_quotes: rsquo,rsquo,rdquo,rdquo

    permalink: /:title

    # If you want a collection of pages for course material:
    collections:
      # In Finnish you might want to write e.g. "materiaali:" instead.
      material:
        output: true
        permalink: /:collection/:title

    defaults:
      -
        scope:
          path: ""
        values:
          layout: "default"
    ```
3.  **Copy 404 page**

    Copy the file `404.md` from the theme repository into yours. Or copy it from
    here:

    ```
    ---
    title: 404
    permalink: /404.html
    layout: 404
    hide: true
    ---
    ```
4.  **Create index page**

    Create a file `00-index.md` with contents like this:

    ```
    ---
    title: Frontpage
    permalink: /
    ---
    
    # Site Name
    ```
5.  **Deploy to GitHub Pages**
    
    On your GitHub repository, go to
    `https://github.com/GITHUB_USER/site-name/settings/pages`.

    Set "Source" as "Deploy from a branch", select your main/master branch and
    click Save.

    Remember to configure a custom domain if applicable, and set that in
    `_config.yml` as well.
    

## Usage

### File names

Page order is determined by their file names, so it is recommended to prefix
names with a two-digit counter such as `00-index.md`, `01-page.md` etc. or have
names like `part-01.md`, `part-02.md` etc. within a collection. For this to not
be visible in the URL, set a [permalink](#page-front-matter).

Freestanding pages should be placed in the root of the repository. Pages inside
the course material collection should be placed under `_material/` (or
`_materiaali/` depending on the name of collection).

### Collections

Use Jekyll collections to group pages together in navigation.

If necessary, you can define multiple collections. In this case you should add
an `order` key to specify their order:

```yaml
collections:
  material:
    order: 1
    output: true
    permalink: /:collection/:title
  bonus:
    order: 2
    output: true
    permalink: /:collection/:title
```

### Page front matter

Jekyll pages start with "front matter", a block of yaml delimited by lines
of `---`. The following keys are relevant with this theme:

- `title`: Title of the page. Used for the `<title>` tag and in navigation.
- `permalink`: The URL of the page. Can be used with freestanding pages to
  set a specific URL, which is otherwise deduced from the file name.
- `slug`: The name of the page in the URL, i.e. `/material/[slug]`. Works only
  with collections, but there this can be used to change the last part of the
  URL without specifying the name of the collection.
- `sections`: A list of sections on the page to form a submenu in navigation.
  Each item should correspond to an anchor on the page.

  Example:
  ```md
  ---
  sections:
    - Section one
    - Section two
  ---
  ## Section one
  ## Section two
  ```

  In some cases, such as when there are underscores in the name, the automatic
  conversion will be incorrect. In this case, or if a different name is
  otherwise desired, the name and anchor ID can be specified separately:
  ```
  ---
  sections:
    - Section one
    - name: Section_two
      anchor: section_two
  ---
  ## Section one
  ## Section_two
  ```
- `hide`: Setting this to `true` will hide the page from navigation.

### All material on one page

The `collection` layout can be used form a page that contains all pages from a
specific collection. For example, create a file `all-material.md` in the root of
the repository with the following content:

```md
---
title: All Material
permalink: /material/all
hide: true

layout: collection
collection-label: material # Name of the collection to include
---
```

Any content after the front matter in `all-material.md` will be put on the start
of the page.

### Content

See these content elements in action on the [gallery
page](https://ollpu.github.io/jekyll-course-theme/gallery).

- Paragraph note
  ```
  {: .note }
  Paragraph text...
  ```
- Block note (more/other than one paragraph)
  ```
  <div class="note" markdown="1">
  Block content...
  </div>
  ```
- Use the `console` highlighter with appropriate flags for prompts.

  sqlite:
  ````
  ```console?lang=sql
  sqlite> SELECT * FROM x;
  ...
  ```
  ````

  Python:
  ````
  ```console?lang=python&prompt=>>>
  >>> print("test")
  test
  ```
  ````
- Title for code block, e.g. the name of the file
  ````
  {: .code-title }
  main.py
  ```python
  print("test")
  ```
  ````
- Surround text in a paragraph with `$$` for inline math. Start a paragraph with
  `$$` on its own line for block math.

  ```
  Inline $$\KaTeX$$ math

  $$
  y=f(x)
  $$
  ```
- Database table with title
  ```
  {: .inline title="Kurssit" }
  | id  | op |
  | --- | -- |
  | 111 | 5  |
  | 222 | 10 |
  | 333 | 5  |
  ```

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

