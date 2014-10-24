## Instructions for contributing

GitHub offers some handy tools for making small changes to code (like the TLS website's pages) without having to know much about Git. To get started, you'll need a GitHub account.

1. Go to [github.com](https://github.com/), make an account, and tell one of the administrators (right now, that's just me, [Chris](io@henrian.com)) what username you picked.
  * Maybe use your name or nickname or something as part of your GitHub username? It's a lot easier to remember who `nick9_coder` might be, compared to `raptormachineX7`, for example.
2. Using that username, I'll invite you as a writer to the [linguistics/tls](https://github.com/linguistics/tls) repository.


### Making changes

Once I've invited you (you may or may not get a notification, based on your GitHub email preferences), you'll be able to edit any of the pages. Let's say you want to fix some presentation titles on the 2014 webpage.

1. Go to the TLS repository: [https://github.com/linguistics/tls](https://github.com/linguistics/tls)
2. Navigate through the file system by clicking `2014tls`, then `index.html`
3. Edit that page by clicking the pencil icon (which will take you to [this page](https://github.com/linguistics/tls/edit/gh-pages/2014tls/index.html))
4. Write a short description of the change in the first "Commit changes" text box, e.g., "Fixed typo in Emilie's pres title". It doesn't have to be much, but don't just say "Updated index.html".

The changes will be immediately (or within a couple of minutes) viewable on [the site](http://linguistics.github.io/tls/2014tls/).


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


## Making more involved changes, like uploading files

The GitHub web interface is limited compared to git at the command line. If you need to upload files or use a more powerful text editor, the basic process (on a Mac) goes like the following. Let's say you just added an abstract and want to add it to the site:

1. Open up Terminal
2. Make sure you have `git` installed (which comes with all recent OS X versions)
3. `git clone https://github.com/linguistics/tls.git`
4. Enter your GitHub username and password when prompted. Your password will not appear at the command line as you type it, or even asterisks like on a webpage, but just keep typing and press enter when you're finished.
5. Add the abstract to the `2014tls/abstracts/` folder inside the newly created `tls/` folder in your current directory. (`open .` will open the current directory in Finder.)
6. `cd tls/2014tls`
7. `git add abstracts/beaver.txt`
8. `git commit -m "Added David's abstract"`
9. `git push -u origin master`

You only need to do steps 1, 5-8 on subsequent updates, now that you've cloned the repository. However, you should make sure you've synchronized your copy of the repository with the canonical copy on GitHub before you start making further changes. To do this, simply find the `tls/` directory in Terminal, and run `git pull` to pull down the latest changes.

If you get tired of typing in your password all the time, there are ways to make that easier:

* [StackOverflow: Is there a way to skip password typing ...](http://stackoverflow.com/q/5343068/424651)
* [SSH Keys](https://help.github.com/articles/generating-ssh-keys/)


### Syncing changes to the legacy server

There are a couple extra steps to sync the changes over to [UT's server](http://uts.cc.utexas.edu/~tls/); see [2014tls/README.md](https://github.com/linguistics/tls/blob/gh-pages/2014tls/README.md).
