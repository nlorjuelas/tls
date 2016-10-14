Please visit this site at [tls.ling.utexas.edu](http://tls.ling.utexas.edu/).

The site was originally hosted on a UT server at `http://uts.cc.utexas.edu/~tls`,
but that server was retired (without announcement) in Summer 2016,
so `tls.ling.utexas.edu` is now both the canonical and only URL.


## Archival remarks on legacy directories

`97tls`, `98tls`, and `99tls` weren't exactly named with an optimist outlook for the conference, but that's okay, it was a common mistake back then.

But `tls2009`? There's no excuse. Still, we'll retain a link for backward compatibility.

To be clear, the pattern you should follow for new conferences is <code><b>YEAR</b>tls/</code>.
Honestly, yes, I agree that the trailing "tls" is redundant — that only the year would be cleaner and just as clear.
But see [xkcd #927](https://xkcd.com/927/).


## Administrative notes

`tls.ling.utexas.edu` is a CNAME record (a DNS entry that aliases one domain name to another, rather than from one domain to an IP address, like A records do) that points to `linguistics.github.io`.
Thanks to the [`CNAME`](CNAME) file in this repository, GitHub knows that incoming requests with the header `Host: tls.ling.utexas.edu` should be served static files from this directory. GitHub uses Fastly to serve GitHub pages, so we get the benefit of an incredibly fast CDN (content delivery network), for free. The disadvantage is that GitHub pages only serves static files — no PHP, ASP.net, etc. But static files have much greater longevity, so in the long run, it's a healthy constraint to have.

UT ITS controls allocation of all `*.utexas.edu` domains, so if any issues arise with that DNS entry, your best bet is to search for "UTnic" on the [utexas.edu](https://www.utexas.edu/) website or file a ticket with the IT folks.


## Files

* [`.nojekyll`](.nojekyll): this is just a configuration file that tells GitHub pages not to run [Jekyll](https://jekyllrb.com/) on these files.
  Jekyll is handy in some cases, but didn't fit with the archival needs of this repository.
  This is optional; since none of the files contain Jekyll directives, nothing would be changed in the Jekyll-rendered result, but by skipping Jekyll, you'll see changes on the live site more quickly after you do a `git push`.
* [`archive.html`](archive.html): is a static listing of all conferences with direct links. This should probably be moved into `index.html`, after getting rid of the current `index.html` redirect.
* [`CNAME`](CNAME): another GitHub Pages configuration file that tells to GitHub to serve requests it receives for `tls.ling.utexas.edu` with files from this directory.
* [`index.html`](index.html): this is the file people get when they go to <http://tls.ling.utexas.edu/>.
  It is currently configured to serve a redirect to the most recent (TLS 2016) year-specific site.
  This is probably not the best solution. When linking to your conference you should use the full URL, but in some cases `tls.ling.utexas.edu` looks nicer, so in practice, you'll likely want to change the links in this page to the current year's site.


## Documents

* [`CONTRIBUTING.md`](CONTRIBUTING.md): Describes how to make changes to this repository; and as a result, how to add pages to the <http://tls.ling.utexas.edu/> website.
* [`2014tls/README.md`](2014tls/README.md): Records some notes and reflections on running TLS 2014, including general advice, overly optimistic thinking, and potentially out-of-date or overly specific suggestions.
