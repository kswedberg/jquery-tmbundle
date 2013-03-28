# jQuery Bundle for TextMate ![Project status](http://stillmaintained.com/kswedberg/jquery-tmbundle.png)

This is a TextMate bundle to help with jQuery functions.

## Authors

* Karl Swedberg
* Jonathan Chaffer

## License

This bundle is dual-licensed under MIT and GPL licenses (just like jQuery).

* [http://www.opensource.org/licenses/mit-license.php](http://www.opensource.org/licenses/mit-license.php)
* [http://www.gnu.org/licenses/gpl.html](http://www.gnu.org/licenses/gpl.html)

Use it, change it, fork it, sell it. Do what you will, but please leave the author attribution.

## Installation

You can install this bundle in TextMate by opening the preferences and going to the bundles tab. After installation it will be automatically updated for you. (This requires 2.0+)

## Manual Installation

The quickest way to install the bundle is via the command line. If you have Git installed, you'll probably want to install with Git. With or without, you can simply copy and paste each line one by one into the Terminal instructions ( lifted from [drnic](http://github.com/drnic/ruby-on-rails-tmbundle) ):

### Install with Git

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/kswedberg/jquery-tmbundle.git "JavaScript jQuery.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

### Install without Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    wget http://github.com/kswedberg/jquery-tmbundle/tarball/master
    tar zxf kswedberg-jquery-tmbundle*.tar.gz
    rm kswedberg-jquery-tmbundle*.tar.gz
    mv kswedberg-jquery-tmbundle* "JavaScript jQuery.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

## Download

If you'd like to avoid the command line altogether, you can download the bundle and install it:

1. download the zip from [http://github.com/kswedberg/jquery-tmbundle/zipball/master](http://github.com/kswedberg/jquery-tmbundle/zipball/master)
2. find the zip file on your local machine and double-click to unzip it
3. change the file name from *kswedberg-jquery-tmbundle-really_long_alpha_numeric_sequence* to *JavaScript jQuery.tmbundle* (with a dot rather than a hyphen).
4. double-click the *JavaScript jQuery.tmbundle* file
5. open TextMate and select the following menu item: *Bundles > Bundle Editor > Reload Bundles*
6. show the Bundle Editor (*Bundles > Bundle Editor > Show Bundle Editor*)
7. scroll through the list of bundles to confirm that the bundle has been properly installed

## Other Stuff

* You can [report a bug or request a feature here](http://github.com/kswedberg/jquery-tmbundle/issues)
* Find out about [getting jQuery bundle to work within script tags embedded in HTML](http://wiki.github.com/kswedberg/jquery-tmbundle/getting-jquery-bundle-to-work-within-script-tags-embedded-in-html)
