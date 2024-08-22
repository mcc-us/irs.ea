---
title: gitbook help
layout: post
---

This page is markdown help favorites. :blush:

More information see: [Jekyll Git Book theme](https://github.com/sighingnow/jekyll-gitbook)

### Scale images on page

```
<img src="https://user-images.githubusercontent.com/link-to-your-image.png" width="100%" />
```

### Add non-breaking space

`&nbsp;`


### PDF Containers

```
<div class="pdf-container">
    <iframe src="/bookkeeping/assets/mc-graw-accounting-course/biz.entities.test.pdf#zoom=FitH" height="600" width="100%" allowFullScreen="true">
    </iframe>
</div>
```


### 4 Blocks

>#### green tip
>
> green tip
{: .block-tip }

```
> #### green tip
>
> green tip
{: .block-tip }
```

```
> #### yellow warning
>
> yellow warning
{: .block-warning }
```

```
> #### red danger
>
> red danger
{: .block-danger }
```

| :warning: White box :warning: |
|:---------:|
| White box |

```
| :warning: White box :warning: |
|:---------:|
| White box |
```

### Emojis

https://gist.github.com/rxaviers/7360908

https://github-emoji-picker.rickstaa.dev/

### Links

```
[Absolute link to a page](https://mcc-us.github.io/2020-02-28-sample-markdown/)
```

```
[Relative link to a section inside a page](#local-urls)
```

### Bookmark Links on the Same Page

If you want to link to a heading on the same page, first add an ID tag to the header like this:

```## Headings with ID Tags {#someIdTag}```

Then reference it with a normal Markdown link:

```[Some link](#someIdTag)```


### Pictures

```
![lion](/bookkeeping/assets/img/lion_head-144x144.png)
```

Images can also be centered!

```
![lion](/bookkeeping/assets/img/lion_head-144x144.png){: .mx-auto.d-block :}
```

```
|ImageTitle|
|:-:|
|![abc](/bookkeeping/assets/a.png)|
```

### Code chunks 

```javascript
var foo = function(x) {
  return(x + 5);
}
foo(3)
```

### Tables

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

### Dictionary Markdown

```
<dl>
  <dt>Term 1</dt>
  <dd>Definition of term 1</dd>
  <dt>Term 2</dt>
  <dd>Definition of term 2a</dd>
  <dd>Definition of term 2b</dd>
</dl>
```

### GPT chat prompt

Please read the pdf doc pcir230.pdf and provide a summary.  

After the summary, Also provide 5 questions and answers that encapsulate the most essential information in the document.

For this and all answers provided to me, please format the output using the Github markdown. I want a "copy code" box. Please use hash marks for all headers. Use Outline numbering for all bullet points. I want to save this file as .md. The output must be compatible, such that I can save the resultant to a file .md and have it ready for reading.