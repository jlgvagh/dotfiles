# dotFiles for Windows

**Note**: Must run as Administrator 

example 1:  **vscode** user config
```shell
# navigate to config file loaction
> pwd
C:\Users\< user >\AppData\Roaming\Code\User
# move config file to repository location
> mv settings.json C:\Users\< user >\<path to git repository>\vscode\user\settings.json
# create symlink to config file in git repository
# settings.json --> <git repository>\<path to settings.json>
# git repository here is ~\repos\dotfiles
# patch to config file is vscode\user\setttings.json
> New-Item -ItemType SymbolicLink -Path settings.json `
>> -target C:\Users\< user >\<path to git repository>\vscode\user\settings.json
```

example 2: **powershell core** profile settings

```powershell
> pwd
C:\Users\< user >\Documents\PowerShell
> ls
Microsoft.PowerShell_profile.ps1
> mv Microsoft.PowerShell_profile.ps1 C:\Users\< user >\<path to git repository>\powershell\core\Microsoft.PowerShell_profile.ps1
> New-Item -ItemType SymbolicLink -Path Microsoft.PowerShell_profile.ps1 `
>> -target C:\Users\< user >\<path to git repository>\powershell\core\Microsoft.PowerShell_profile.ps1
```