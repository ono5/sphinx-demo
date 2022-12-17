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
[あるディレクトリやファイルを読み込まないようにしたい](https://sphinx-users.jp/reverse-dict/system/excludepatterns.html)
