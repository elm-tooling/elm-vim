# Example Vim Elm Configuration

Small (not minimal) configuration to setup a working Elm environment leveraging the [elm-language-server](https://github.com/elm-tooling/elm-language-server) in Vim. It's using [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager and [coc](https://github.com/neoclide/coc.nvim) as a language client.

## Setup

Requires `vim`, `elm`, `elm-format`, `elm-test`, and `elm-language-server` to be installed globally by default.

```sh
git clone https://github.com/elm-tooling/elm-vim.git
cd elm-vim/vim-config-example
cp .vimrc ~
mkdir ~/.vim
cp coc-settings.json ~/.vim/
vim
```

### Setup steps explained

#### .vimrc

Copy [`.vimrc`](./.vimrc) into the user `$HOME` directory.
Or use `vim -u .vimrc` instead to pass to path to the `.vimrc` file.

#### coc-settings.json

Copy [`coc-settings.json`](./coc-settings.json) to `$HOME/.vim/` (create directory if missing).

#### Install plugins

Opening `vim` will download the plugins. Close with `:q!<Enter>`.

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
