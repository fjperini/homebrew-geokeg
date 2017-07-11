# geokeg
A keg for [homebrew](https://brew.sh)-installable GIS recipes.

## Tap Keg

    brew tap walker/geokeg

## Formula

### [geogig](http://geogig.org)

Geogig is a GIS version control system that works on a git-like command model. There are some fundamental differences though because of the way GIS files work, so it's not a 1:1 match.

You will need JRE 1.8+, the Java 8 runtime environment. You can install it with homebrew with the command `brew cask install java`.

    brew install walker/geokeg/geogig
