mcollective-haproxyctl
======================

mcollective agent to manage haproxy using haproxyctl

Usage
-----------

### Viewing backends/health/stat/info/errors

mco rpc haproxyctl show mode=<health|backends|stat|errors|info>

### Enabling/disabling servers

mco rpc haproxyctl <enable|enable_all|enable_all_except|disable|disable_all|disable_all_except> <SERVER>
