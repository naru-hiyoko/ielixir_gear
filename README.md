# IElixirGear

The gear app of [antikythera](https://github.com/access-company/antikythera) used as [jupyter notebook kernel](https://github.com/jupyter/notebook).

IElixirGear has a dependency on Antikythera and [IElixir](https://github.com/pprzetacznik/IElixir) modules,
so you can use module functions on jupyter notebooks.

### Requirements

* erlang 20.3.8.x
* elixir 1.9.x
* nodejs 10.13.x
* [zeromq](https://github.com/pprzetacznik/IElixir#zeromq-header-files-missing)

### Install

```
git clone https://github.com/naru-hiyoko/ielixir_gear.git
cd ielixir_gear
bash install.sh
```

I added tiny elixir-mode to own codemirror and changed a dependency to it by editing `bowner.json`.

```
git clone https://github.com/jupyter/notebook
cd notebook
# edit bowner.json
python3 intall -e .
```

```
# bowner.json

  "dependencies": {
    "codemirror": "naru-hiyoko/codemirror#9b878284148bf4bfa999d95273605b3746231f46",

```

### Usage

```
cd /tmp
jupyter notebook
```






