# Instructions

For now, the server does not mirror this git repository, so deployments are made in place by running the command below from this directory:

    rsync -r ./ tls@uts.cc.utexas.edu:public_html/2016tls/

You might need to use `/usr/bin/rsync` explicitly, if your rsync is too new.

**Update:**

The only relevant page to leave on the `uts.cc.utexas.edu` server is `redirect.html`:

    scp redirect.html tls@uts.cc.utexas.edu:public_html/2016tls/index.html

