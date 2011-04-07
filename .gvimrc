set number
"set backup=/tmp
set directory=/tmp
colorscheme railscasts
set guifont=monaco
set ai
set cin
set backspace=2   " backspace can join lines set   shiftwidth=2	" <Tab> at start of line tabs 4 chars
set smarttab		" <Tab> at start of line tabs <shiftwidth> chars
set ruler			" show cursor position
set magic			" regular expressions the way I'm used to them
set nobackup		" don't clutter my account with *.bak!
set nowritebackup	" don't keep a backup copy during the edit session
set nodigraph		" I don't need sticking digraphs ...
set incsearch		" Incremental search.
set joinspaces
set tabstop=2 
set shiftwidth=2 
set expandtab
set autoindent

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set list
set hidden

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    ""
if has("syntax")
  syntax on
endif
augroup lenguaje_ruby
	       au!
	       au BufNewFile,BufRead *.rb setfiletype ruby
"	       au Filetype ruby set foldmethod=syntax
	augroup END

	augroup archivos_rhtml
	       au!
	       au BufNewFile,BufRead *.rhtml,*.rhtm setfiletype eruby
	augroup END

au BufNewFile,BufRead *.rhtml set syn=eruby  
au BufNewFile,BufRead *.clj set syn=clojure
au BufNewFile,BufRead *.md set filetype=md
runtime! plugin/matchit.vim
map <C-h> :bnext<CR>
map <C-l> :bNext<CR>
map <C-c> :bdelete<CR>
"map <C-h> :tabprevious<CR>
"map <C-l> :tabnext<CR>
"map <C-c> :tabclose<CR>
"map <C-n> :tabnew<CR>
"imap <C-Space> <C-X><C-O>
nnoremap j gj
nnoremap k gk
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
" create html from haml
nmap <c-g><c-h> ggVGy:new<CR>pggVG:!haml<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬


"map to fuzzy finder text mate stylez
"nnoremap <c-f> :FuzzyFinderTextMate<CR>
nnoremap <c-f> :CommandT<CR>

"source ~/.vim/snippets/support_functions.vim
"autocmd vimenter * call s:SetupSnippets()
"autocmd vimenter * call ExtractSnips("~/.vim/snippets/c","c")
"function! s:SetupSnippets()
"
" if we're in a rails env then read in the rails snippets
"    if filereadable("./config/environment.rb")
"      call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
"      call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
"  endif

" call ExtractSnips("~/.vim/snippets/html", "eruby")
" call ExtractSnips("~/.vim/snippets/html", "xhtml")
"  call ExtractSnips("~/.vim/snippets/html", "php")
" endfunction

set go=ac "wywal menu z obrazkami
