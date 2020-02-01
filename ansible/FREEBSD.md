# FreeBSD

We have two hypervisor hosts runnig bhyve and FreeBSD.

## Configuration

Add the following to a fresh version of FreeBSD `12.0`

```
cat << EOF >> /boot/loader.conf
boot_multicons="YES"
boot_serial="YES"
comconsole_speed="115200"
console="comconsole,vidconsole"
EOF
```

Configure the boot environments:

```
pkg install beadm
beadm create slotA
```

churchers-vm controller: https://github.com/churchers/vm-bhyve

## Kermit

### Controls

To get back to your own system, you must type the "escape character", which is
Control-Backslash (^\) unless you have changed it with the SET ESCAPE command,
followed by a single-character command, such as C for "close connection".
Single-character commands may be entered in upper or lower case.  They include:

  C     Return to C-Kermit.  If you gave an interactive CONNECT command, return
        to the C-Kermit prompt.  If you gave a -c or -n option on the command
        line, close the connection and return to the system prompt.
  B     Send a BREAK signal.
  0     (zero) send a null.
  S     Give a status report about the connection.
  H     Hangup the phone.
  !     Escape to the system command processor "under" Kermit.  Exit or logout
        to return to your CONNECT session.
  Z     Suspend Kermit (UNIX only).
  \nnn  A character in backslash-code form.
  ^\    Send Control-Backslash itself (whatever you have defined the escape
        character to be, typed twice in a row sends one copy of it).
