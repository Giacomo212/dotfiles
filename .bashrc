PS1=" \[\033[31m\]\w\[\033[37m\] $ "
alias ls='ls --color=auto -h'
alias ll='ls --color=auto -lah'
alias data='cd /mnt/data'
alias linux='cd /mnt/linux'
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="$PATH:/home/marcin/.dotnet/tools"


ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}






#old ps
####################################################################################
#PS1="\[\033[32m\]\u@\h: \[\033[31m\]\w\[\033[37m\]$ "



