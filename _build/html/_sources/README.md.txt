# Sphinx Templates

## 種類

- markdown
- jupyter
- jupyter + markdown

## インストールガイド

Pythonをインストールしていることが前提となります。
Pythonのインストール方法を下記で説明しています。

- [WindowsでPythonを使って『機械学習』を学ぶための環境構築](https://qiita.com/yoshizaki_kkgk/items/1057ed4dcc36ed9be7f5)
- [MacでPythonを使って『機械学習』を学ぶための環境構築](https://qiita.com/yoshizaki_kkgk/items/4663148a2b3ca078ddbc)

### Windowsの方（Anacondaでインストールを前提）

```bash
python -m pip install sphinx
python -m pip install recommonmark
python -m pip install nbsphinx
python -m pip install sphinx_rtd_theme
```

### Macの方（Home Brewでインストールを前提）

```bash
pip3 instal sphinx
pip3 install recommonmark
pip3 install nbsphinx
pip3 install sphinx_rtd_theme
```

## ビルド手順

HTMLファイルをビルドする手順は以下の通りです。

### Windowsの方

```bash
./make.bat html
```

### Macの方

```bash
make html
```