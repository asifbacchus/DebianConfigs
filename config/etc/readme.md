Configuration files and/or changes to default config files in /etc/
=

 - Setup timesyncd for NTP syncing (using systemd, not ntp package)  
   - set to use global pool.ntp.org, you should change this!
   - verify timesyncd is working with 'timedatectl' command

 - Setup nano with helpful configurations both locally and via SSH  
   - rebind number lock
   - constant show cursor position at bottom of screen
   - constant show line numbers on the left
   - added shortcuts for cut, copy, paste using alt-x,c,v respectively
   - enable multi-buffer for concurrent open files
   - cut to end-of-line
   - bracket and quote matching
   - tabs converted to spaces, tab = 4 spaces
   - activate default colourization

 - Colourize prompt  
   - red username for root user or shell accessed as root (su, sudo -s, etc.)
   - green username for regular users
   - display time and full path

 - Setup SSH server  
   - use non-standard port 222
   - use host-keys (RSA and ED25519 - you need to generate these!)
   - display a banner on sucessful connection
   - do not allow root login
   - require keyfile authentication (disable password authentication)
