# Sphinx Templates

## 種類

- markdown
- jupyter
- jupyter + markdown

### インストール

```bash
python3 -m venv .env
source .env/bin/activate
pip install --upgrade pip ipython ipykernel
pip install -r requirements.txt

$ python -V
Python 3.7.13
```

## ビルド手順

HTMLファイルをビルドする手順は以下の通りです。

### Macの方

```bash
make html
```

## Tips
### Not scan
[あるディレクトリやファイルを読み込まないようにしたい](https://sphinx-users.jp/reverse-dict/system/excludepatterns.html)

## Pandoc wasn't found.
Jypter Note Book(ipynb)を使えるようにするために`nbsphinx`を入れたが何故か以下のエラーが出る。

```bash
# Notebook error:
# PandocMissing in src/2.ipynb:
# Pandoc wasn't found.
# Please check that pandoc is installed:
# https://pandoc.org/installing.html
# make: *** [html] Error 2
```

[これ](https://stackoverflow.com/questions/62398231/building-docs-fails-due-to-missing-pandoc)を参考に、conf.pyに以下のものを追加。

```
from inspect import getsourcefile
import os

# Get path to directory containing this file, conf.py.
DOCS_DIRECTORY = os.path.dirname(os.path.abspath(getsourcefile(lambda: 0)))

def ensure_pandoc_installed(_):
    import pypandoc

    # Download pandoc if necessary. If pandoc is already installed and on
    # the PATH, the installed version will be used. Otherwise, we will
    # download a copy of pandoc into docs/bin/ and add that to our PATH.
    pandoc_dir = os.path.join(DOCS_DIRECTORY, "bin")
    # Add dir containing pandoc binary to the PATH environment variable
    if pandoc_dir not in os.environ["PATH"].split(os.pathsep):
        os.environ["PATH"] += os.pathsep + pandoc_dir
    pypandoc.ensure_pandoc_installed(
        targetfolder=pandoc_dir,
        delete_installer=True,
    )


def setup(app):
    app.connect("builder-inited", ensure_pandoc_installed)
```

### Markdown対応
MD形式のファイルを扱うため`myst-parser`を追加。

conf.pyに以下の設定を追加。

```
extensions = [
    'sphinx.ext.autodoc',
    'nbsphinx',
    'sphinx.ext.mathjax',
    'myst_parser',
]

source_suffix = ['.rst', '.md']
```
