mcollective-haproxyctl
======================

simpleRPC agent to manage haproxy using haproxyctl

Assumptions
-----------

The agent assumes install locations of

haproxy at /usr/sbin/haproxy (default for yum install haproxy)

and

haproxyctl at /usr/bin/haproxyctl 

Alternate installation locations will require updates within the ../agent/haproxyctl.rb file

Installation
-----------

Copy the haproxyctl.rb and haproxyctl.ddl to the mcollective agent directory.

Restart the mcollective service to load it in.

Usage
-----------

### Viewing backends/health/stat/info/errors

mco rpc haproxyctl show mode=*health|backends|stat|errors|info*

e.g.

mco rpc haproxyctl show mode=backends

will do the equivalent to...

./haproxyctl show backends

### Enabling/disabling servers

mco rpc haproxyctl *enable|enable_all|enable_all_except|disable|disable_all|disable_all_except* SERVER

e.g.

mco rpc haproxyctl enable_all app1

will do the equivalent to...

./haproxyctl enable all app1
