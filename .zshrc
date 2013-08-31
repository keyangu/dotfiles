# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
# $BF1$8%3%^%s%I$O=EJ#$7$J$$(B
setopt hist_ignore_dups
# $BB>$N%?!<%_%J%k$HMzNr$r6&M-$9$k(B
# $B$b$7$+$7$?$i<YKb$+$b$7$l$J$$$J$!!D(B
# setopt share_history

unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yanagi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Vi$B%i%$%/%-!<%P%$%s%I@_Dj(B
bindkey -v

# $B%W%m%s%W%H(B
case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    PROMPT="%{[31m%}%/%%%{[m%} "
    PROMPT2="%{[31m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

