# Example Vim Elm Configuration

Small (not minimal) configuration to setup a working Elm environment leveraging the `elm-language-server` in Vim.

## Setup

Requires `vim`, `elm`, `elm-format` and `elm-test` installed globally by default.

### [`.vimrc`](./.vimrc)

Use `vim -u .vimrc` or copy `.vimrc` to `$HOME`

### Install plugins

```sh
vim -u .vimrc +PlugInstall +qall
```

### [`coc-settings.json`](./coc-settings.json)

Copy `coc-settings.json` to `$HOME/.vim/`

## Usage

Open an elm file e.g. `vim -u .vimrc Main.elm`

* Format: `,p`
* Hover: `,g`
* Show usages: `,u`
* Jump to definition: `,d`
* Jump to error: `,a`
* Solve error: `,s`
* Rename variable: `,r`
