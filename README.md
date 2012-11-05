These are some of my configuration files for terminal Vim and the Mutt email client.

I use `dotfilemanager.py` (available on [Github](http://github.com/seanh/dotfilemanager)) to create symlinks of these configuration files into my home directory.

I've broken up my `vimrc` files into small chunks saved in the `_vim` directory; this makes it easier to jump directly to the configuration commands I want without having to wade through all the general settings, most of which are in `general.vimrc`. All of the `vimrc` chunks are then sourced in the main `_vimrc` file, which becomes my `$HOME/.vimrc` file after running `dotfilemanager link`.

For more on how I use mutt, see [Tips for Using Mutt](http://wcm1.web.rice.edu/mutt-tips.html) on my homepage.
