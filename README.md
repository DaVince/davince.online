# davince.online

This is the hackiest thing in existence. But it's all I needed.

Make webpages in simple Markdown. Then autoconvert to HTML, rsync it to my host quickly and stop worrying about it.


## Requirements

* pandoc binary in a tools subdirectory (easiest way to just use pandoc on Steam Deck)
* rsync
* .env file with `DAVINCE_REMOTE_DESTINATION` environment variable pointing to the destination server + path for rsync


## Updating the site

```sh
./build.sh && ./deploy.sh
```
