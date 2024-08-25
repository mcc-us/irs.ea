---
title: Matt's html help
layout: post
---

This page is markdown help favorites.

More information see: [Jekyll Git Book theme](https://github.com/sighingnow/jekyll-gitbook)

- **Scale images on page**

```
<img src="https://user-images.githubusercontent.com/link-to-your-image.png" width="100%" />
```

- **Add non-breaking space**

```
&nbsp;
```

- **Buttons**

<script> function button1() { window.open("Address"); } </script>
<button onclick="button1()">ButtonText</button>


```
<script> function button1() { window.open("Address"); } </script>
<button onclick="button1()">ButtonText</button>
```

- **PDF Containers**

```
<div class="pdf-container">
    <iframe src="dir/document.pdf#zoom=FitH" height="600" width="100%" allowFullScreen="true">
    </iframe>
</div>
```

- **Color text mods**

```
<span style="color:green;font-weight:700;font-size:20px">
    markdown color font styles
</span>
```

- **4 Info Blocks**

> GREEN tip
{: .block-tip }

```
> GREEN tip
{: .block-tip }
```

```
> YELLOW warning
{: .block-warning }
```

```
> RED Danger
{: .block-danger }
```

```
| Info Box: |
|:---------:|
| Information |
```

- **Emojis**

[https://gist.github.com/rxaviers/7360908](https://gist.github.com/rxaviers/7360908)

[https://github-emoji-picker.rickstaa.dev/](https://github-emoji-picker.rickstaa.dev/)

- **Links**

```
[AbsoluteLinks](https://mcc-us.github.io/2020-02-28-sample-markdown/)
```

```
[RelativeLinks](#local-urls)
```

- **Bookmark Links on the Same Page**

If you want to link to a heading on the same page, first add an ID tag to the header like this:

```## Headings with ID Tags {#someIdTag}```

Then reference it with a normal Markdown link:

```[Some link](#someIdTag)```


- **Pictures**

```
![lion](/dir/image.png)
```

Images can also be centered!

```
![lion](/dir/image.png){: .mx-auto.d-block :}
```

```
|ImageBox|
|:-:|
|![abc](/directory/image.png)|
```

- **Code chunks**

```javascript
var foo = function(x) {
  return(x + 5);
}
foo(3)
```

- **Tables**

```
| nameA | nameB | nameC |
| :---: |:----- | :---- |
| A1    | B1    | C1    |
```

```markdown
<div class="table-wrapper" markdown="block">
|title1|title2|title3|title4|title5|title6|title7|title8|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|1|2|3|4|5|6|7|8|
</div>
```

- **Dictionary lists**

```
<dl>
  <dt>Term 1</dt>
  <dd>Definition of term 1</dd>

  <dt>Term 2</dt>
  <dd>Definition of term 2a</dd>
  <dd>Definition of term 2b</dd>
</dl>
```

- **GPT chat prompt**

Please read the PDF document doc1.pdf and provide a summary.

After the summary, Also provide 5 questions and answers that encapsulate the most essential information in the document.

Place your response (answer, responses, output, results) in a "copy code" box. Your response should be formatted using Github markdown language. Please numbered lists instead of bullet points and hyphens. Do not use bold text, `**bold text**`, when possible.  I want to save this file as ".md". The results will be used on the internet.