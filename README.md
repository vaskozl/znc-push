## Usage

To generate the config invoke znc interactively.
```bash
mkdir znc-data **&& chown -R 100:100 znc-data
docker run -it -v $PWD/znc-data:/znc-data --rm vaskozl/znc-push --makeconf
```


After that you can run znc as a daemon
```bash
docker run -d -v $PWD/znc-data:/znc-data vaskozl/znc-push 
```
