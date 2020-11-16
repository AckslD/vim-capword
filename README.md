# vim-capword

Capitalize start of current word in normal and insert mode.

# Installation
Use your favourite plugin manager, for example [`vim-plug`](https://github.com/junegunn/vim-plug):
```vim
Plug 'AckslD/vim-capword'
```

# Usage
In normal or insert mode, press `alt-k` to capitalize first letter in the current word under the cursor and `alt-j` to decapitalize.
The current cursor position will be left unchanged.

# Configuration
By default the mappings for capitalizing and uncapitalizing are `alt-k` (`m-k`) and `alt-j` (`m-j`) respectively in both normal and insert mode.
To change the mappings you can set the following variables in your vimrc:
```vim
let g:capword_normal_lower_mapping = "<m-j>"
let g:capword_normal_upper_mapping = "<m-k>"
let g:capword_insert_lower_mapping = "<m-j>"
let g:capword_insert_upper_mapping = "<m-k>"
```

You can also turn of any mappings by setting `g:capword_no_mappings` or `g:capword_no_insert_mappings`.
