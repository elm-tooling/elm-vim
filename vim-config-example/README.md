# Example Vim Elm Configuration

Small (not minimal) configuration to setup a working Elm environment leveraging the [elm-language-server](https://github.com/elm-tooling/elm-language-server) in Vim. It's using [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager and [coc](https://github.com/neoclide/coc.nvim) as a language client.

## Setup

Requires `vim`, `elm`, `elm-format`, `elm-test`, `elm-language-server` installed globally by default.

### .vimrc

Copy [`.vimrc`](./.vimrc) into the user `$HOME` directory.

Or instead use `vim -u .vimrc` to pass to path to the `.vimrc` file.

### Install plugins

```sh
vim +PlugInstall +qall
```

### coc-settings.json

Copy [`coc-settings.json`](./coc-settings.json) to `$HOME/.vim/`.

## Usage

Open an elm file e.g. `vim Main.elm`

* Format: `,p`
* Hover: `,g`
* Show usages: `,u`
* Jump to definition: `,d`
* Jump to error: `,a`
* Solve error: `,s`
* Rename variable: `,r`

## Debugging

* `:CocInfo<Enter>` shows log messages
* `:CocConfig<Enter>` opens coc configuration
