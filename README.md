# dotFiles for Windows

example 1:  **vscode** user config
```shell
# navigate to config file loaction
> pwd
C:\Users\VHAISFGARCIJ\AppData\Roaming\Code\User
# copy config file to repository location
> cp settings.json C:\Users\VHAISFGARCIJ\<path to git repository>\vscode\user\settings.json
# delete config file
> rm settings.json
# create symlink to config file in git repository
# settings.json --> <git repository>\<path to settings.json>
# git repository here is ~\repos\dotfiles
# patch to config file is vscode\user\setttings.json
> New-Item -ItemType SymbolicLink -Path settings.json -target C:\Users\VHAISFGARCIJ\repos\dotfiles\vscode\user\settings.json
```