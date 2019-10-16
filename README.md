# jlenv-each: Update jlenv and all installed plugins

This [jlenv](http://jlenv.github.io/jlenv) plugin adds the `jlenv update`
command that updates jlenv and all installed plugins.

## Installation

To install jlenv-update, clone this repository into your jlenv plugins directory.

```bash
mkdir -p "$(jlenv root)/plugins"
git clone https://github.com/jlenv/jlenv-update.git "$(jlenv root)/plugins/jlenv-update"
```

## Usage

```bash
jlenv help update
```

## Version History

**1.0.0** (October 13, 2019)

* Initial public release for Julia.

## License

Released under the MIT license. See `LICENSE` for details.
