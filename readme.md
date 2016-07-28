# Markoff.vim
Preview documents in [Markoff](https://robots.thoughtbot.com/markoff-free-markdown-previewer) from Vim.

## Usage

Either call `:Markoff` to open the current file, or pass an argument to open another file.

## Options

You can set the path to the Markoff application:

```vim
let g:markoff_application_path = "/Users/usename/Applications/Markoff.app"
```

## Installation

Using [Pathogen](https://github.com/tpope/vim-pathogen):
 ```bash
git clone https://github.com/aliou/markoff.vim.git ~/.vim/bundle/markoff.vim
```

Using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'aliou/markoff.vim'
```

Using [NeoBundle](https://github.com/Shougo/neobundle.vim):
```vim
NeoBundle 'aliou/markoff.vim'
```

Using [Vundle](https://github.com/gmarik/vundle):
```vim
Plugin 'aliou/markoff.vim'
```

## License
Copyright (c) Aliou Diallo. Distributed under the same terms as Vim itself. See `:help license.`
