" Add to GIT
" Usefull doc links
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Documentation Vim
" Vim Tips Wiki
" http://vim.wikia.com/wiki/Vim_Tips_Wiki
" Vim Sourceforge
" https://vim.sourceforge.io
" Vim Doc
" http://vimdoc.sourceforge.net/htmldoc/usr_toc.html
" Comments
" http://vimdoc.sourceforge.net/htmldoc/cmdline.html#:comment
" Download PHP Vim vmb.gz files "wget --content-disposition"
" https://superuser.com/questions/301044/how-to-wget-a-file-with-correct-name-when-redirected
" save them in extra folder "vimball"
" alternative plugin-manager is VAM
" http://www.vim.org/scripts/script.php?script_id=2905
" http://vim.wikia.com/wiki/Use_Vim_like_an_IDE
" install vim-nox for python compatibilty
" https://sanctum.geek.nz/arabesque/vim-as-debian-default/
" install python https://linuxconfig.org/how-to-change-default-python-version-on-debian-9-stretch-linux
" examples of vimrc
" https://github.com/victormours/dotfiles/blob/master/vim/vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
"
" Basics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
" https://stackoverflow.com/questions/5700389/using-vims-persistent-undo
" Vim "undo", "backup", "swap" and "viminfo" files
" mkdir -P $HOME/.vim/.undo $HOME/.vim/.backup $HOME/.vim/.swp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://vim.wikia.com/wiki/Using_undo_branches
" http://vimdoc.sourceforge.net/htmldoc/options.html#'undofile'
set undofile                				" Save undos after file closes
" http://vimdoc.sourceforge.net/htmldoc/options.html#'undodir'
set undodir=$HOME/.vim/.undo// 				" where to save undo histories
" http://vimdoc.sourceforge.net/htmldoc/options.html#'undolevels'
set undolevels=1000         				" How many undos
" http://vimdoc.sourceforge.net/htmldoc/options.html#'undoreload'
set undoreload=10000        				" number of lines to save for undo
" http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
" http://vimdoc.sourceforge.net/htmldoc/options.html#'nobackup'
"set nobackup
" http://vimdoc.sourceforge.net/htmldoc/options.html#'backupdir'
"set backupdir=$HOME/.vim/.backup// 			" where to put backup files
" http://vimdoc.sourceforge.net/htmldoc/options.html#'backupext'
"set backupext=.bak 					" backup file extencion
" http://vimdoc.sourceforge.net/htmldoc/options.html#'noswapfile'
"set noswapfile
" http://vimdoc.sourceforge.net/htmldoc/options.html#'directory'
set directory=$HOME/.vim/.swp// 			" directory to place swap files in
" http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
" http://vimdoc.sourceforge.net/htmldoc/options.html#'viminfo'
set viminfo='50,<1000,s100,:0,n$HOME/.vim/.viminfo 	" Move viminfo to .vim directory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" http://vimdoc.sourceforge.net/htmldoc/usr_06.html
set syntax=enabled
"set syntax=ON						" enable syntax, but not switch it on automatically when starting to edit
set syntax=sh
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Other Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config
"
"
set number                      "Line numbers are good
set scrolloff=20		"Keep 10 lines (top/bottom) for scope
set sidescrolloff=10 		"Keep 5 lines at the size
set showmatch			"show matching brackets

" Mouse Setting
"set ttyfast
"set mouse=a
"set ttymouse=xterm2
"
"
"
" Text Formating/Layout
" Tabs
set smarttab " Handle tabs more intelligently"
set tabstop=4 " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set noexpandtab " In Insert mode use tabs, dont expand to number of spaces
" Search and autocompletion
set ignorecase " case insensitive by default
set infercase " case inferred by default
set smartcase " if there are caps, go case-sensitive
" To display long lines as just one line
" https://stackoverflow.com/questions/2280030/how-to-stop-line-breaking-in-vim
set nowrap " do not wrap line
" http://vim.1045645.n5.nabble.com/shiftround-option-td5712100.html
"set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40
"Hilfslinie erstellen damit Textefeld ncht länger als 80 Charakter wird
let &colorcolumn=join(range(111,999),",")
highlight ColorColumn ctermbg=LightGreen guibg=#2c2d27
let &colorcolumn="111,".join(range(127,999),",")



" Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" deprecated by vim-airline Plugin 
"set laststatus=2
"function! GitBranch()
"	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction
"function! StatuslineGit()
"	let l:branchname = GitBranch()
"	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction
"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-pathogen
" manage your runtimepath
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-fugitive
" Git wrapper
" https://github.com/tpope/vim-fugitive
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-airline
" lean & mean status/tabline for vim
" https://github.com/vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':p:~'
let g:airline_detect_paste=1
let g:airline_detect_modified=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-colors-solarized
" precision colorscheme for the vim text editor
" https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors= 256
"let g:solarized_termtrans = 1
"let g:solarized_degrade = 1
"let g:solarized_bold = 1
"let g:solarized_underline = 1
"let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"
let g:solarized_hitrail = 0
"let g:solarized_menu =  1

"syntax enable
" http://vimdoc.sourceforge.net/htmldoc/options.html#'background'
"set background=light
set background=dark
colorscheme solarized
call togglebg#map("<F5>")
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Automatically set paste mode in Vim when pasting in insert mode
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
        set pastetoggle=<Esc>[201~
        set paste
        return ""
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-jinja
" jinja plugins for vim (syntax and indent)
" https://github.com/lepture/vim-jinja
"
" Plugin - vim-ansible-yaml
" Add additional support for Ansible in VIM
" https://github.com/chase/vim-ansible-yaml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - nerdtree
" A tree explorer plugin for vim
" https://github.com/scrooloose/nerdtree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrows=0
" fix bad arrow display
" https://stackoverflow.com/questions/9927217/vim-nerdtree-suddenly-broke
" show hidden files in NERDtree
" https://stackoverflow.com/questions/5057359/how-can-i-show-hidden-files-starting-with-period-in-nerdtree
let NERDTreeShowHidden = 1
" https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:vim_markdown_folding_disabled = 1
let g:NERDTreeShowGitStatus = 1
let g:NERDTreeUpdateOnWrite = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" vim-do not able to install
" nerdtree-git-plugin also not able to install
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - nerdtree-git-plugin
" A plugin of NERDTree showing git status
" https://github.com/Xuyuanp/nerdtree-git-plugin
" Fix git status in NERDtree
" https://github.com/Xuyuanp/nerdtree-git-plugin/issues/70
" https://github.com/Xuyuanp/nerdtree-git-plugin/commit/7b2b554fbecd62fbc193543bffeb81d019c3cd53
" -    let l:statusesStr = system('cd "' . l:root . '" && ' . l:gitcmd)
" +    let l:statusesStr = system('cd "' . l:root . '" ; ' . l:gitcmd)
"
"```vimscript
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"```
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - vim-gitgutter
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_max_signs = 500  " default value
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - Vim-Plug
" not installed because mainly using pathogen
" https://github.com/junegunn/vim-plug
"call plug#begin('~/.vim/plugged')
"Plug 'vim-scripts/writebackupVersionControl'
"Plug 'https://github.com/vim-scripts/writebackupVersionControl.git'
"Plug 'vim-scripts/writebackup'
"Plug 'https://github.com/vim-scripts/writebackup.git'
"Plug 'vim-scripts/ingo-library'
"Pulg 'https://github.com/vim-scripts/ingo-library.git'
"Plug 'vim-scripts/writebackupAutomator'
"Plug 'https://github.com/vim-scripts/writebackupAutomator.git'
" Initialize plugin system
"call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin - writebackup
" Write backups of current file with date file extension
" http://www.vim.org/scripts/script.php?script_id=1828
" Plugin - ingo-library (dependency)
" Vimscript library of common functions
" http://www.vim.org/scripts/script.php?script_id=4433
let g:WriteBackup_BackupDir = "~/.vim/.backup" " Festlegung des Backupverzeichnis
function IfWriteBackup() " Backup mittels plugin WriteBackup auf Anfrage sichern
       let choice = confirm("Execute WriteBackup cmd?", "&yes\n&no")
       if choice == 1
       silent! WriteBackup
       elseif choice == 2
       else
       echo "Valid inputs are: y/n!"
       endif
endfunction
autocmd BufReadPost * call IfWriteBackup() " call WriteBackup on open of existing file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
