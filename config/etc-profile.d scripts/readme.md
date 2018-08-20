Files to be added to /etc/profile.d

Files here do not need shebang or to be marked executable UNLESS actually running shell commands.

These files will be read after /etc/profile by most shells.  However, they are not read on logins such as 'su' or 'sudo -u'.
Variables set here are GLOBAL.