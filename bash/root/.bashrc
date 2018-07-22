### append the following to the end of /root/.bashrc

# format prompt and colourize user@host to red(31) to remind user that this is
# a ROOT account
# prompt format: (white)[12-hr time][space](red/green)user@hostname(white):[space](yellow)path/to/current/dir[space](red/green)$[space]
force_color_prompt=yes
PS1="\[\e[37m\][\[\e[m\]\[\e[37m\]\@\[\e[m\]\[\e[37m\]]\[\e[m\] \[\e[31m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[37m\]:\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
