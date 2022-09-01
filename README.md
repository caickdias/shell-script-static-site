# Static site with shell script

This is a script for generating static html sites

# Getting started

## Dependencies

```
Ubuntu 22.04
```

## Installing

```
git clone https://github.com/caickdias/shell-script-static-site.git
cd shell-script-static-site
```

## Usage

You can pass your contact list directly through your command line or via a text file. You should separate your contact's name and phone with a comma (,), for example: Caick,38291092.

To use the text file, edit it and do the command:

```
sh main.sh "$(cat list.txt)"
``` 

Through your command line:

```
sh main.sh caick,38928019 john,1928391 ana,1023981
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
