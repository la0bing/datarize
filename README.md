# repo-template

This repository is a template for creating new repositories, mainly for python projects. There are a few configuration enforced to make sure dependencies are managed properly and commits follow a certain formats.

# Tools
Some of the tools that we uses includes:
1. Dependencies and environment: [Poetry](https://python-poetry.org/)
2. Pre-commit checks: [Pre-commit](https://pre-commit.com/)
3. Pre-commit message checks: [Conventional commit](https://www.conventionalcommits.org/en/v1.0.0/#summary)
4. Custom code formatting in pre-commit:
    * Code formatting: [Flake8](https://flake8.pycqa.org/en/latest/)
    * Imports sorting: [iSort](https://pycqa.github.io/isort/)

# Setup
This are some of the steps to run to fully utilize what is configurated.

## Install Poetry
Run the following command to install poetry
Linux, macOS, Windows (WSL):
```
curl -sSL https://install.python-poetry.org | python3 -
```
Windows (Powershell):
```
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```
\* refer to the [poetry official documentation](https://python-poetry.org/docs/) if it is not working as intended.

## VSCode
This part is only required if you plan to use Visual Studio Code and select the interpreted to test:
```
poetry config virtualenvs.in-project true
```
If you have already ran ```poetry install```, run the following code after the line above to recreate a new environment so that VSCode can detect it.
```
poetry env list;  # shows the name of the current environment
poetry env remove <current environment>;
poetry install;  # will create a new environment using your updated configuration
```

## Install dependencies
Run the following command to install pre-defined library required for this repo:
```
poetry install
```


# Developing

## Testing on the environment
Run the following command to start an isolated sub-shell with the poetry environment:
```
poetry shell
```

## Adding new package/library
The following command will add the specified package and resolve the dependencies if required:
```
poetry add <package-name>
```
