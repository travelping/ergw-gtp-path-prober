ergw-gtp-path-prober
===============

OTP application to package a erGW GTP Path Prober.

Build
-----

    $ rebar3 compile

Docker images
-------------

This repository creates a [Docker
image](https://hub.docker.com/r/ergw/ergw-gtp-path-prober/) which can be used
to probe paths to GTP nodes with Echo requests.

To add a custom configuration to the container, you may use a volume to provide the configuration in
`/etc/erlang-gtp-path-prober/erlang-gtp-path-prober.config` or alter this file in
a running container.

erGW metrics
-------------

erGW uses exometer core to implement various operation metrics.
If the HTTP API has been enable the metrics of the Echo requests, among many others,
can be read at `/metrics`.
More about the API at [Promotheus](https://prometheus.io).
