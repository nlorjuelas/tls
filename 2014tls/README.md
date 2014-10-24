# Instructions

For now, the server does not mirror this git repository, so deployments are made in place by running the command below from this directory:

    rsync -r ./ tls@uts.cc.utexas.edu:public_html/2014tls/

You might need to use `/usr/bin/rsync` explicitly, if your rsync is too new.

**Update:**

The only relevant page to leave on the `uts.cc.utexas.edu` server is `redirect.html`:

    scp redirect.html tls@uts.cc.utexas.edu:public_html/2014tls/index.html


## Github Pages

As we incrementally migrate the old sites to version control in this repository, they will also be served as Github Pages.

Github Pages for [TLS 15](https://linguistics.github.io/tls/2014tls/):
`https://linguistics.github.io/tls/2014tls/`
