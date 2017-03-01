+++
date = "2017-03-01T17:41:27+01:00"
title = "Windows $PATH and Command Line tips"
draft = false

+++

As a developer I spend quite some time in the windows command line. This is a setup I use to make life in the command line easier.

## 1. Create a C:\dev folder for easy access to random tools

I keep all my small developer tools like `ngrok`, `git-bash`, `hugo.exe` and `set-path.ps1` here. So whenever you download something that's conveniant to have around, I put the .exe/.ps1/.bat in my `C:\dev`.

## 2. Use the Set-Path.ps1 script

I recently wrote a nifty powershell script *(source below)* to make it easier to add things to the path while on the fly. It's a very useful helper for when you can't drop a .exe or .ps1 in the C:\dev.

#### Usage
Use it to add some specific bin folder to your path, like this:

```
$ C:\Program Files\Redis\bin>Set-Path .
```

How to install it (and do tip #1 in the same swoosh):
```
$ mkdir C:\dev
$ cd C:\dev
$ notepad Set-Path.ps1
# Paste source, save & close
$ Set-Path .
# ^Will add C:\dev to your path

```


#### Source
This is the full source. Just copy/paste as per the instructions above
```
param([string] $path)

# Save as Set-Path.ps1 in your C:\dev folder and then run "Set-Path.ps1 ." to add your C:\dev to the path.
# Written by @andersaberg, 2017-03-01

function Set-Path {
    param([string]$newPath)
    $envpath = $newPath
    $envpath += ";" + $Env:path
    $nl = [Environment]::NewLine
    

    Write-Output "Result: $nl"
    Write-Output $envpath
    
    Write-Host "$nl$nl + Added ""$newPath"" to the beginning of path..."
    $write = Read-Host 'Set PATH permanently ? (yes|no)'
    if ($write -eq "yes")
    {
        [Environment]::SetEnvironmentVariable("Path",$envpath, [System.EnvironmentVariableTarget]::User)
        Write-Output 'PATH updated'
    }
}

if ($path -eq "") {
    Write-Output "Missing argument, path"
    Write-Output "Call set-path with a folder, e.g: ""$ Set-Path ."" or ""$ Set-Path C:\devstuff"""
} else {
    Set-Path (Resolve-Path $path)
}
```

Thats all for now. Happy hacking. 

