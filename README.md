## Usage

To generate the config invoke znc interactively.
```
mkdir znc-data **&& chown -R 100:100 znc-data
docker run -it -v $PWD/znc-data:/znc-data --rm vaskozl/znc-push --makeconf
```


After that you can run znc as a daemon
docker run -d -v $PWD/znc-data:/znc-data vaskozl/znc-push 
