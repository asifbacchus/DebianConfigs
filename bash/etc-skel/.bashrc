### append the following to the end of /etc/skel/.bashrc

# Command aliases available for logins via 'su' or 'sudo -u'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Colourize prompt based on type of user
# user@host will appear red(31) for ROOT users, all others in green(32)
# prompt format: (white)[12-hr time][space](red/green)user@hostname(white):[space](yellow)path/to/current/dir[space](red/green)$[space]
force_color_prompt=yes
if [ $(id -u) -eq 0 ];
then
    PS1="\[\e[37m\][\[\e[m\]\[\e[37m\]\@\[\e[m\]\[\e[37m\]]\[\e[m\] \[\e[31m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[37m\]:\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
else
    PS1="\[\e[37m\][\[\e[m\]\[\e[37m\]\@\[\e[m\]\[\e[37m\]]\[\e[m\] \[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[37m\]:\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[32m\]\\$\[\e[m\] "
fi
