# elm-vim

Instructions to get started with Elm tooling in Vim.

## Diagnostics

[`elm-language-server`](https://github.com/elm-tooling/elm-language-server) provides diagnostics (`elm make`), linting (`elm-analyse`), jump to definition, formatting (`elm-format`) and other features. It is a standalone implementation of the language server protocol (LSP). 

### Usage with `w0rp/ale`

Install [`ale`](https://github.com/w0rp/ale) and [`antew/vim-elm-language-server`](https://github.com/antew/vim-elm-language-server).
See [elm-language-server README](https://github.com/elm-tooling/elm-language-server#ale) and [ale README](https://github.com/w0rp/ale#usage) for usage instructions. 

**NOTE:** `antew/vim-elm-language-server` will be merged into `ale` itself in the future.

### Usage with `jvoorhis/coq.vim`

Install [`coq`](https://github.com/jvoorhis/coq.vim). Look into [elm-language-server README](https://github.com/elm-tooling/elm-language-server#cocnvim) for setup and usage instructions.

## Syntax highlighting

Install [`elm-vim-syntax`](https://github.com/andys8/vim-elm-syntax). It'll provide syntax highlighting and indentation.

## Snippets

Install [`Ultisnips`](https://github.com/SirVer/ultisnips) for snippet functionality.
Install [`honza/vim-snippets`](https://github.com/honza/vim-snippets) which contains [`elm.snippets`](https://github.com/honza/vim-snippets/blob/master/snippets/elm.snippets)

**NOTE:** Will probably provided by `elm-language-server` completion provider instead.

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

* [`andys8/dotfiles`](https://github.com/andys8/dotfiles)
* [`Augustin82/vim`](https://github.com/Augustin82/vim)
