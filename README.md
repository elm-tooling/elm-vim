# elm-vim

Instructions to get started with Elm tooling in Vim.

## Language Server

[`elm-language-server`](https://github.com/elm-tooling/elm-language-server) provides most features, e.g. diagnostics (`elm make`), linting ([`elm-analyse`](https://github.com/stil4m/elm-analyse)), jump to definition, formatting ([`elm-format`](https://github.com/avh4/elm-format)) and more. It is a standalone implementation of the language server protocol (LSP). 

### Usage with ale

Install [`ale`](https://github.com/w0rp/ale) and use `elm_ls` linter. See [elm-language-server README](https://github.com/elm-tooling/elm-language-server#ale) and [ale README](https://github.com/w0rp/ale#usage) for usage instructions. 

### Usage with Coc.nvim

Install [`Coc`](https://github.com/neoclide/coc.nvim). Look into [elm-language-server README](https://github.com/elm-tooling/elm-language-server#cocnvim) for setup and usage instructions.

## Syntax highlighting

Install [`elm-vim-syntax`](https://github.com/andys8/vim-elm-syntax). It'll provide syntax highlighting and indentation.

## Code formatting

Code formatting (`elm-format`) is part of `elm-language-server`. An alternative is [`ale`](https://github.com/w0rp/ale)'s [`elm-format` fixer](https://github.com/w0rp/ale/blob/8768a309b8ef1c2e819dcb6f4630f73acab59792/doc/ale-elm.txt#L6-L29).

## Snippets

Install [`Ultisnips`](https://github.com/SirVer/ultisnips) for snippet functionality. Install [`honza/vim-snippets`](https://github.com/honza/vim-snippets) which contains [`elm.snippets`](https://github.com/honza/vim-snippets/blob/master/snippets/elm.snippets)

Or snippets of `elm-language-server` e.g. with `coc`.

## Tests

Install [`vim-test`](https://github.com/janko/vim-test). It contains [`elmtest.vim`](https://github.com/janko/vim-test/blob/master/autoload/test/elm/elmtest.vim). `:TestFile` will execute `elm-test`.

## Tagbar

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

## Configuration examples / dotfiles

* [`andys8/dotfiles`](https://github.com/andys8/dotfiles/blob/master/vimrc.local)
* [`Augustin82/vim`](https://github.com/Augustin82/vim)
* [`antoine-atmire/vim-elmc`](https://github.com/antoine-atmire/vim-elmc)
* [`pehota/dotfiles`](https://github.com/pehota/dotfiles/blob/vim-elm/vimrc)
* [`hulufei/dotfiles`](https://github.com/hulufei/dotfiles)
* [`Miaxos/Home-`](https://github.com/Miaxos/Home-/blob/master/.vimrc)
