# My Jupyter Notebok Blog



A new blog, powered by Jupyter Notebooks.

```python
import pathlib, re, urllib.parse
from IPython.display import display, Markdown
pages = [path.with_suffix('.html') for path in pathlib.Path("posts").glob('*.ipynb') if not str(path).startswith('.')]

display(Markdown("## Posts"))
for page in pages:
    display(Markdown(f" - [{page.stem}](/{urllib.parse.quote(str(page))})"))
```


## Posts



 - [Practical Deep Learning for Coders - Part 1](/posts/Practical%20Deep%20Learning%20for%20Coders%20-%20Part%201.html)

