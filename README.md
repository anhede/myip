# myip
**myip [-i/--internal] [-e/--external]**

## Summary
A command-line tool for easily getting your own IP adress. Currently only works on Macbooks.
Using the free and open API https://ifconfig.me/ for checking public IP adress <br />

## Options
**-i/--internal** Output internal/private IP <br />
**-e/--external** Output external/public IP <br />
If no parameters specified, it will by default output both adresses in a easy to read manner. The parameters are useful when combining with other commands. E.g. ´ping $(myip -e)´


## Installation
### MacOS
To use ipgeo on MacOS you need to source it in your shell of choice. This is most likely Z Shell or Bash. To check which you're using: open the terminal and examine the window name, if it says 'zsh' then you're using Z Shell, otherwise it's Bash.
#### Z Shell
To source ipgeo on Z Shell you need to append a line on your 'zshrc' file. This file loads each time you start your shell and will as such source the command every time you open a new terminal window. **To do this, add the line** `source {PATH TO MYIP FILE}/myip.sh` **to the bottom of zshrc located at** `/etc/zshrc`.

#### Bash
To source ipgeo on Bash you need to append a line on your 'bashrc' file. This file loads each time you start your shell and will as such source the command every time you open a new terminal window. **To do this, add the line** `source {PATH TO MYIP FILE}/myip.sh` **to the bottom of bashrc located at** `/etc/bashrc`.
