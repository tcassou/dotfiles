# Python Setup

## PyEnv - Python Version Management
To maintain several versions of python on the same machine (e.g. 2.x.x and 3.x.x), follow [the steps here](https://github.com/pyenv/pyenv)
Useful commands:
```
pyenv versions
pyenv version
pyenv global x.x.x
pyenv local x.x.x
```

## Pip - Package Management
`pip` for `python2`, `pip3` for `python3`. Get `get-pip.py` from [this page](https://pip.pypa.io/en/stable/installing/).
Install with `python2 get-pip.py` or `python3 get-pip.py`.

## Virtualenv - local python environments for your projects
Inside your project directory,
```
pip install virtualenv
```
or (depending on current python version)
```
pip3 install virtualenv
```

Then create your virtual environment:
```
virtualenv my_env
```
and activate/deactivate it with
```
. ./my_env/bin/activate
deactivate
```

## Project requirements

In your project, you can define a `requirements.txt` file, with your dependencies, e.g.
```
numpy>=1.8.2
pandas>=0.13.1
scipy>=0.13.3
matplotlib>=1.3.1
requests>=2.18.4
pillow>=4.3.0
genty>=1.3.2
nose>=1.3.7
rednose>=1.3.0
```

Simply install them with
```
. ./my_env/bin/activate
pip install -r ./requirements.txt
```

## Editor
I use `Sublime` with a bunch of useful packages (there are a lot more I have not tried):
- Package Control
- Advanced New File
- Git
- Git Gutter
- Markdown Preview
- Super Calculator
- Trailing Spaces
- Sublime Code Intel

## Useful tools
Replace your default python interpretor with `IPython`: `pip install ipython`.
You can also try `Jupyter` notebooks ([see more here](http://jupyter.org/)): `pip install jupyter`. Notebooks are useful for scripting/prototyping, not to write proper code. The updated version, `JupyterLab` looks more like an editor (access to terminal, keyboard shortcuts, etc).
