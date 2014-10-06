## Instructions for contributing

GitHub offers some handy tools for making small changes to code (like the TLS website's pages) without having to know much about Git. To get started, you'll need a GitHub account.

1. Go to [github.com](https://github.com/), make an account, and tell one of the administrators (right now, that's just me, [Chris](io@henrian.com)) what username you picked.
  * Maybe use your name or nickname or something as part of your GitHub username? It's a lot easier to remember who `nick9_coder` is, compared than `raptormachineX7`, for example.
2. Using that username, I'll invite you as a writer to the [linguistics/tls](https://github.com/linguistics/tls) repository.


### Making changes

Once I've invited you (you may or may not get a notification, based on your GitHub email preferences), you'll be able to edit any of the pages. Let's say you want to fix some presentation titles on the 2014 webpage.

1. Go to the TLS repository: [https://github.com/linguistics/tls](https://github.com/linguistics/tls)
2. Navigate through the file system by clicking `2014tls`, then `index.html`
3. Edit that page by clicking the pencil icon (which will take you to [this page](https://github.com/linguistics/tls/edit/gh-pages/2014tls/index.html))
4. Write a short description of the change in the first "Commit changes" text box, e.g., "Fixed typo in Emilie's pres title". It doesn't have to be much, but don't just say "Updated index.html".

The changes will be immediately (or within a couple of minutes) viewable on [the site](http://linguistics.github.io/tls/2014tls/)


### Making changes carefully, first

Unfortunately it's not awfully easy to preview your changes before they go live, with GitHub's online editor. If you're making small changes, you can probably envision what effect edits to the HTML will have on the webpage, but if you really want to preview your changes before committing them, you can:

1. Fork the `tls` repository to your own user account (by going to the repository's [main page](https://github.com/linguistics/tls) and clicking the "Fork" button)
2. Make the changes to that copy (fork) of the code, and commit. This won't change the upstream (main) [website](http://linguistics.github.io/tls/).
3. Assuming your username is `chbrown`, you can view the changes at something like [http://chbrown.github.io/tls/2014tls/](http://chbrown.github.io/tls/2014tls/)

If needed, go back, make some more edits, commit again, and look at the result.
Once they look good from there, you can merge back into the upstream repository.

1. Send a pull request with those changes to the linguistics/tls repository
2. Accept and merge the pull request from the linguistics/tls repository page

Check out [try.github.com](https://try.github.io/) for a more thorough git tutorial.


### Syncing changes to the legacy server

There are a couple extra steps to sync the changes over to [UT's server](http://uts.cc.utexas.edu/~tls/); see [2014tls/README.md](https://github.com/linguistics/tls/blob/gh-pages/2014tls/README.md).
