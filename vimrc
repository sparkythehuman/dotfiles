"----------- Plugins --------------"
set nocompatible                                        " We want the latest Vim settings/options

so ~/.vim/plugins.vim                                   " Load the plugins




"----------- Config --------------"
set backspace=indent,eol,start                          " Backspace config to work with indentation, end of line and start of line
set tabstop=4 shiftwidth=4 expandtab                    " No tabs in the source file and all tab characters are 4 space characters
set pastetoggle=<F4>                                    " Toggle paste
set showcmd                                             " Show the commands I run
let mapleader = ','                                     " The default is \, but comma is easier
set directory^=$HOME/.vim/tmp//                         " Put my swap (.swp) files all in one place
"Disable the Print key for MacVim.
if has('gui_running' || 'gui_macvim')
    macmenu File.Print key=<nop>
endif
set rtp+=/usr/local/opt/fzf                             " required to use fzf, indicates that fzf is installed via Homebrew
set diffopt+=iwhite                                     " ignore whitespace changes in diff mode
set diffexpr=""                                         " ignore whitespace changes in diff mode




"----------- Visuals --------------"
syntax enable
set background=light
colorscheme solarized

set number                                              " Add line numbers
set wrap linebreak nolist                               " Set lines to soft wrap

set linespace=5                                         " Macvim-specific line-height.
set t_CO=256                                            " Use 256 colors. This is useful for Terminal Vim.
set guifont=Inconsolata-dz\ for\ Powerline:h15          " Set the default font family and size.

let g:airline_powerline_fonts = 1                       " Powerline fonts are installed
set laststatus=2                                        " Show vim-airline all the time
let g:airline_theme = 'solarized'
"let g:airline_solarized_bg = 'dark'

" Disable Gui scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set showtabline=2                                       " Always show tab bar



"------------- Search --------------"
set hlsearch                                            " Highlight all matched terms.
set incsearch                                           " Incrementally highlight, as we type.




"------------- Split Management --------------"
set splitbelow                                          " Make splits default to below...
set splitright                                          " And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"------------- Mappings --------------"
"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Change working directory to current file
nmap <Leader>lcd :lcd %:p:h<cr>:pwd<cr>
nmap <Leader>cd :cd %:p:h<cr>:pwd<cr>

"Reindent the entire file  --  http://vim.wikia.com/wiki/Fix_indentation
nmap <Leader><F7> mzgg=G`z

"Remove unwanted trailing spaces -- http://vim.wikia.com/wiki/Remove_unwanted_spaces
nmap <Leader><F6> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <cr>

"Normall this is <F5> but that's currently used to startup Xdebug, so I had to remap
nmap <F3> :CtrlPClearCache<cr>

"See if the file uses tabs or spaces with <F2>
nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

"To convert spaces to tabs run this then :%retab!
nmap <Leader>ft :set tabstop=4 noexpandtab <CR>




"------------- Plugins --------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>




"------------- Auto-Commands --------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END




"----------------Commands------------------"
"Credit where credit is due: http://vimcasts.org/episodes/project-wide-find-and-replace/
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction




"------------- Language Specific Settings --------------"
"/
"/ JavaScript
"/
" set 2 tabs to two spaces in JS files
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab 

"/
"/ CSS
"/
autocmd BufNewFile,BufRead *.sass set filetype=sass
" set 2 tabs to two spaces in sass files
autocmd FileType sass setlocal tabstop=2 shiftwidth=2 expandtab 




"------------- Project Specific Settings --------------"
autocmd BufRead,BufNewFile /Users/joshuagarcia/Work/Current/BookKeeper/bookkeeper-extension/* setlocal tabstop=4 shiftwidth=4 expandtab 




"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
" - Control+d is down half a page (down) Control+u is up half a page,
"   Control+F is forward a full page (forward) and Control+B is back a full
"   page (back)
" - 'di)' deletes everything inside a parethesis, 'ci{' deletes everything
"   inside a curly brace and puts you in insert mode (change), 'va"' selects
"   in visual mode everything between and including a quote
" - Ctrl-[ or Ctrl-c is the same as Esc key
