@ECHO OFF
choco upgrade chocolatey
ECHO "Ïnstall NodeJS:"
choco install nodejs.install -y
ECHO "Install python and upgrade pip:"
choco install python --upgrade -y
python -m pip install -U pip
ECHO "Install git:"
choco install git -y
ECHO "Install vs code:"
choco install vscode -y