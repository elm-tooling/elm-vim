# elm-vim

Instructions to get started with [Elm](https://elm-lang.org) tooling in [Vim](https://www.vim.org).

- [Setup](#setup)
- [Configuration examples](#configuration-examples)
- [FAQ](#faq)

## Setup

### Language Server

Install [`elm-language-server`](https://github.com/elm-tooling/elm-language-server) and its [dependencies](https://github.com/elm-tooling/elm-language-server#requirements). It provides most features, e.g. diagnostics (`elm make`), linting ([`elm-analyse`](https://github.com/stil4m/elm-analyse)), jump to definition, formatting ([`elm-format`](https://github.com/avh4/elm-format)) and more. It is a standalone implementation of the language server protocol (LSP). There exist multiple language server client implementations (e.g. CoC or ale).

#### Usage with CoC.nvim _(recommended)_

Install [`Coc`](https://github.com/neoclide/coc.nvim). Look into [elm-language-server README](https://github.com/elm-tooling/elm-language-server#cocnvim) or [`CoC` wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elm) for setup and usage instructions.

#### Usage with ale

Install [`ale`](https://github.com/dense-analysis/ale) and use `elm_ls` linter. See [`elm-language-server` README](https://github.com/elm-tooling/elm-language-server#ale), [`ale` README](https://github.com/dense-analysis/ale#usage) and [`ale` docs](https://github.com/dense-analysis/ale/blob/master/doc/ale-elm.txt) for usage instructions.

### Syntax highlighting

Install [`elm-vim-syntax`](https://github.com/andys8/vim-elm-syntax). It'll provide syntax highlighting and indentation.

### Code formatting

[`elm-format`](https://github.com/avh4/elm-format) is used by `elm-language-server` to format code. An alternative is [`ale`](https://github.com/dense-analysis/ale)'s [`elm-format` fixer](https://github.com/w0rp/ale/blob/8768a309b8ef1c2e819dcb6f4630f73acab59792/doc/ale-elm.txt#L6-L29).

### Linting

[`elm-analyse`](https://github.com/stil4m/elm-analyse) is used by `elm-language-server` for static code analysis of elm code. It doesn't need to be installed manually. Its [checks](https://stil4m.github.io/elm-analyse/#/messages) can be [configured](https://stil4m.github.io/elm-analyse/#/configuration).

### Snippets

`elm-language-server` provides snippets (e.g. with `Coc`).

An alternative is to install [`Ultisnips`](https://github.com/SirVer/ultisnips) for snippet functionality. Install [`honza/vim-snippets`](https://github.com/honza/vim-snippets) which contains [`elm.snippets`](https://github.com/honza/vim-snippets/blob/master/snippets/elm.snippets)

### Tests

Install [`vim-test`](https://github.com/janko/vim-test) to run tests. It contains [`elmtest.vim`](https://github.com/janko/vim-test/blob/master/autoload/test/elm/elmtest.vim). `:TestFile` will execute `elm-test`.

### Tagbar

Install [`majutsushi/tagbar`](https://github.com/majutsushi/tagbar) and configure content displayed in the tagbar.

```vim
let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}
```

## Configuration examples

There is an [example configuration](./vim-config-example/README.md) to showcase a small Vim setup for Elm.

### User configurations

It's a good idea to take a look how others are configuring their environments. Here are some examples:

- [`andys8/dotfiles`](https://github.com/andys8/dotfiles)
- [`Augustin82/vim`](https://github.com/Augustin82/vim)
- [`antoine-atmire/vim-elmc`](https://github.com/antoine-atmire/vim-elmc)
- [`pehota/dotfiles`](https://github.com/pehota/dotfiles/blob/vim-elm/vimrc)
- [`hulufei/dotfiles`](https://github.com/hulufei/dotfiles)
- [`Miaxos/Home-`](https://github.com/Miaxos/Home-/blob/master/.vimrc)
- [`leojpod/dotfiles`](https://github.com/leojpod/dotfiles)

## FAQ

Frequently asked questions. Feel free to contribute.

### "CoC shows only first lines of error message in floating window"

CoC uses floating windows to display diagnostics (error messages). By default only the first 8 lines are shown.

- Raise maximum number of error lines displayed with [`diagnostic.maxWindowHeight`](https://github.com/neoclide/coc.nvim/blob/2bd1385d9d443948d06d5bce82cadfdac185fcc1/doc/coc.txt#L379)
- [Disable floating window](https://github.com/neoclide/coc.nvim/wiki/F.A.Q#how-could-i-disable-floating-window) and use `diagnostic.messageTarget` `"echo"` instead
- Look into how to [scroll inside the floating window](https://github.com/elm-tooling/elm-vim/issues/3).

### "How can I disable elm-analyse inside of elm-language-server?"

It's possible to configure when `elm-analyse` will be triggered or disable it with config `"elmAnalyseTrigger": "never"`. See ["server settings"](https://github.com/elm-tooling/elm-language-server#server-settings).

### "How can I disable an elm-analyse rule?"

Add a `elm-analyse.json` config file like this and add [check names](https://stil4m.github.io/elm-analyse/#/messages).

```json
{
  "checks": {
    "UnusedTypeAlias": false
  }
}
```

### "How can I format files on save with CoC?"

Add `"coc.preferences.formatOnSaveFiletypes": ["elm"]` to `coc-settings.json`.

### "What about `ElmCast/elm-vim`?"

It's an older vim plugin people used before there existed a language server implementation. We're grateful it existed in the past, but [seems to be unmaintained](https://github.com/ElmCast/elm-vim/issues/189) and isn't necessary anymore.
