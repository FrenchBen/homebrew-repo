# French Ben's Homebrew MacOS repo
This repo contains some formulae for Homebrew, that didn't fit in the normal core/cask formulas. 

See discussion here: [#78848 Flutter support](https://github.com/Homebrew/homebrew-cask/issues/78848)

## Install

```
$ brew install frenchben/repo/<formula>
```

e.g. to install [Flutter](https://flutter.dev):
```
$ brew install frenchben/repo/flutter
Updating Homebrew...
....
==> Installing flutter from frenchben/repo
==> Downloading https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.12.13+hotfix.8-stable.zip
...
Updating cache folder permissions to u+rw for: /usr/local/Cellar/flutter/1.12.13/bin/cache
🍺  /usr/local/Cellar/flutter/1.12.13: 3,076 files, 1.7GB, built in 1 minute 51 seconds
```

See docs here: [How to Create and Maintain a Tap](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap#installing)


## Supported tap

| App | Version | Homepage |
| --- | --- | --- |
| Flutter | 1.12.13+hotfix.8 (installed as v1.12.13) | https://flutter.dev/docs/get-started/install/macos |
