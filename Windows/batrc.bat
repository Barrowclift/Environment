 @echo off
 
 rem Add more things to your path like Python here
 set PATH=C:\Windows\System32\;%PATH%

 rem Setting file colors for ls.exe
 set LS_OPTIONS=-bhAC --more --color=auto --recent --streams
 set LS_COLORS=no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33:cd=40;33:or=40;36;01:ex=01;32:re=00:co=;01;36:st=;01;34:*.cmd=01;32:*.bat=01;32:*.exe=01;32:*.com=01;32:*.tar=01;36:*.tgz=01;36:*.arj=01;36:*.taz=01;36:*.lzh=01;36:*.zip=01;36:*.z=01;36:*.Z=01;36:*.gz=01;36:*.bz2=01;36:*.deb=01;36:*.rpm=01;36:*.jpg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.cdr=01;35:*.mpg=01;35:*.wmv=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:

 prompt $e[1;36m$P$e[1;31m$_$$$S$e[1;37m
 
 alias /r "C:\PATH\TO\ALIASES\aliases.txt"