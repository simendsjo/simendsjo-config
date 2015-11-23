"==============================================================================
" BEGIN: Pre plugin load settings
" Some settings might be used when loading some plugins, while others might
" give some plugins problems. I have to set these settings for my current
" plugins to load correctly.
"==============================================================================

" Don't care about vi compatibility. This enables more options
set nocompatible

" Use Python3 for neovim
let g:python3_host_prog = '/usr/bin/python3'

" Clear all existing autocommands
autocmd!

" Number of terminal colors available
set t_Co=256

" Some programs will automatically change the background to light,
" so this will force it dark
set background=dark

" Don't run file specific commands while loading scripts
filetype off
"==============================================================================
" END: Pre plugin load settings
"==============================================================================

"==============================================================================
" BEGIN: NeoBundle
"==============================================================================
if has('vim_starting')
    set runtimepath+=~/.config/nvim/bundle/neobundled/neobundle.vim
    set encoding=utf-8
endif

call neobundle#begin(expand('~/.config/nvim/bundle/neobundled'))

NeoBundleFetch 'Shougo/neobundle.vim'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'JesseKPhillips/d.vim'
NeoBundle 'https://bitbucket.org/ludovicchabant/vim-lawrencium'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'derekwyatt/vim-fswitch'
NeoBundle 'Wolfy87/vim-expand'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'fsharp/vim-fsharp'
NeoBundle 'rking/ag.vim'
NeoBundle 'itchyny/calendar.vim'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Omnisharp/omnisharp-vim'
NeoBundle 'gorkunov/smartpairs.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'gcmt/taboo.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'embear/vim-localvimrc'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'jez/vim-superman'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'machakann/vim-textobj-delimited'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'vimwiki/vimwiki'
NeoBundle 'othree/xml.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'

NeoBundle 'tpope/vim-pathogen'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'

NeoBundle 'mikewest/vimroom'

NeoBundle 'bling/vim-airline'
NeoBundle 'PProvost/vim-ps1'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-session'
NeoBundle 'sgur/unite-everything'
NeoBundle 'sgur/unite-qf'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'ujihisa/unite-locate'

call neobundle#end()

" Install uninstalled bundles
NeoBundleCheck
"==============================================================================
" END: NeoBundle
"==============================================================================


"==============================================================================
" BEGIN: Pathogen
" Some scripts are just added directly to my config files. These are best 
" managed by pathogen
"==============================================================================
call pathogen#infect('~/.vim/bundle/pathogen/{}')
"==============================================================================
" END: Pathogen
"==============================================================================


"==============================================================================
" BEGIN: Misc settings
" All plugins loaded. Turn on syntax et.al.
"==============================================================================
filetype plugin indent on
syntax on

colorscheme solarized

set shellslash
set grepprg=grep\ -nH\ $*

set timeoutlen=250
set ttimeout
set ttimeoutlen=100
set complete-=i
set nrformats-=octal

set display+=lastline
set autoread
set history=1000
set tabpagemax=50

" Indent settings
set shiftround
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list
set listchars=tab:»\ ,trail:·
set autoindent " Use indent from previous line when starting new line
set smartindent " Better indentation for C-like language editing
set cindent
set foldmethod=indent
set foldlevelstart=99 " Start with all open
" Number of lines that has to be visible above and below the cursor when
" scrolling
set scrolloff=3

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell!
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set wrap
set textwidth=79
set colorcolumn=+1 " Color column after textwidth
set formatoptions=qrn1

" Don't automatically insert the longest match for completion
set completeopt+=longest,menuone

" UNSAFE! Opening files can inject code into vim
set modelines=5

" Tab
set sessionoptions+=tabpages,globals
"==============================================================================
" END: Misc settings
"==============================================================================


"==============================================================================
" BEGIN: GUI
"==============================================================================
if has("gui_running")
    " For console vim, this is handled by setting font for the terminal
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
    set guioptions-=m " Remove menu
    set guioptions-=T " Remove toolbar
    set guioptions-=r " Remove right scrollbar
    set guioptions-=e " Use curses rendering for tab pages
    set guioptions+=c " Use curses for simple dialog boxes
    set guioptions-=i " No vim icon
    set guioptions-=L " No left scrollbar

    set langmenu=en_US.utf-8
    language C " language for menus
    "winpos 0 0 " Startup window position - not neccessary for all OSes/WMs

    " Autosave
    au FocusLost * :wa
else " Terminal
    set ttyfast " More smooth redrawing when TERM is a local connection
    " Enable mouse in console vim
    set mouse=a

    if !has('nvim')
        " Urxvt as ttymouse doesn't work well when under tmux
        " NVim doesn't understand ttymouse, so try without ttymouse for vim too
        set ttymouse=xterm
    endif
endif
"==============================================================================
" END: GUI
"==============================================================================


"==============================================================================
" BEGIN: Common keyboard shortcuts
"==============================================================================
" These are common shortcuts that other might be overridden by other plugins
let mapleader = ","

nmap ZX :x<cr>

" Clear shell
nmap !c :!clear<cr><cr>

" We really don't use ; much.
" Default as ex mode is better.
nnoremap ; :
vnoremap ; :

nnoremap <silent><leader>n :noh<cr>

" Pane movement
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Helpers so I don't have to leave
" insert mode for doing very basic
" operations like starting editing
" on the next line, adding ; at the end etc.
inoremap <leader>, <C-o>A,
inoremap <leader>l <C-o>l
inoremap <leader>o <C-o>o
inoremap <leader>O <C-o>O
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j
inoremap <leader>a <C-o>A
inoremap <leader>; <C-o>A;
inoremap <leader>. <C-o>A.
inoremap <leader>{ <C-o>o{<cr>}<C-o>O
inoremap <leader>l ,<esc>

" Delete scope. Useful for deleting ifs etc.
nnoremap dS vaBokd
nnoremap cS vaBokc

" Comment out
vnoremap <leader>/ :s/^/\/\/<cr>:noh<cr>
nnoremap <leader>/ :.,. s/^/\/\//<cr>:noh<cr>
" Remove comment //
vnoremap <leader>\ :s/^\/\//<cr>:noh<cr>
nnoremap <leader>\ :.,. s/^\/\//<cr>:noh<cr>

" Wrap in {} block
vnoremap <leader>{ xi{<cr>}<cr><Esc>kP>iB
nnoremap <leader>{ ddi{<cr>}<cr><Esc>kP>iB

" Simplify wrapping code in selections (like try/catch)
" by storing in another register
vnoremap <leader>y "ty
vnoremap <leader>d "td
vnoremap <leader>c "tc
vnoremap <leader>p "t]p
inoremap <leader>p <esc>"t]p

" Avoid having to use shift
noremap <leader>, :

nmap g{ /\{<cr>
nmap g} /\}<cr>
nmap g[ /\[<cr>
nmap g] /\]<cr>

" Copy entire file to clipboard
nnoremap <silent><leader>y :%y+<CR>

" Repeat ex commands using @; in addition to @:
nmap @; @:
"==============================================================================
" END: Shortcut keybindings
"==============================================================================


"==============================================================================
" BEGIN: incsearch
"==============================================================================
let g:incsearch#magic = '\v'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"==============================================================================
" END: incsearch
"==============================================================================


"==============================================================================
" BEGIN: Delimitmate
"==============================================================================
let delimitMate_expand_cr = 1
"==============================================================================
" END: Delimitmate
"==============================================================================


"==============================================================================
" BEGIN: NerdTree
"==============================================================================
nnoremap <leader>t :NERDTree<CR>
"==============================================================================
" END: NerdTree
"==============================================================================


"==============================================================================
" BEGIN: vim-over
"==============================================================================
nnoremap <leader>r :<c-u>OverCommandLine<cr>%s/
xnoremap <leader>r :<c-u>OverCommandLine<cr>%s/\%V
"==============================================================================
" END: vim-over
"==============================================================================


"==============================================================================
" BEGIN: EasyAlign
"==============================================================================
vmap <leader>a :EasyAlign<cr>
"==============================================================================
" END: EasyAlign
"==============================================================================


"==============================================================================
" BEGIN: Bling
"==============================================================================
let g:bling_time = 75

" Continue editing after block
imap <leader>c <c-c>:let g:bling_count=0<cr>g}:let g:bling_count=2<cr>:noh<cr>o
"==============================================================================
" END: Bling
"==============================================================================

"==============================================================================
" BEGIN: OmniComplete
"==============================================================================
" Found here: http://stackoverflow.com/questions/7722177/how-do-i-map-ctrl-x-ctrl-o-to-ctrl-space-in-terminal-vim
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>
inoremap <expr> <CR>  pumvisible() ? "\<C-n><C-y>" : "\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n><C-y>" : "\<CR>"
"==============================================================================
" END: OmniComplete
"==============================================================================


"==============================================================================
" BEGIN: Unite
"==============================================================================
nmap <space> :Unite -complete source<CR>
nmap <leader><space> :Unite 
"==============================================================================
" END: Unite
"==============================================================================


"==============================================================================
" BEGIN: fswitch
" Switch between h and cpp
"==============================================================================
" au! BufEnter *.cpp let b:fswitchdst = 'hpp' | let b:fswitchlocs = '../include'
" au! BufEnter *.hpp let b:fswitchdst = 'cpp' | let b:fswitchlocs = '../src'
nnoremap <silent> <leader>gl :FSRight<cr>
nnoremap <silent> <leader>gh :FSLeft<cr>
nnoremap <silent> <leader>gg :FSHere<cr>

"==============================================================================
" END: fswitch
"==============================================================================


"==============================================================================
" BEGIN: CtrlP
"==============================================================================
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pt :CtrlPTag<cr>
nnoremap <leader>pm :CtrlPMRUFiles<cr>
nnoremap <leader>pi :CtrlPMixed<cr>
nnoremap <leader>pl :CtrlPLine<cr>
nnoremap <leader>pc :CtrlPChange<cr>
nnoremap <leader>pd :CtrlPDir<cr>
nnoremap <leader>pq :CtrlPQuickfix<cr>

"nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>pf :CtrlP<cr>
" nnoremap <leader>a :CtrlPTag<cr>
nnoremap <leader>l :CtrlPBuffer<cr>
"==============================================================================
" END: CtrlP
"==============================================================================


"==============================================================================
" BEGIN: EasyMotion
" Use EasyMotion rather than regular motion for some motions
"==============================================================================
let g:EasyMotion_keys = 'aoeusnthlrcgzvwmqjk'
let g:EasyMotion_space_jump_first = 1
nmap f <leader><leader>f
nmap F <leader><leader>F
nmap t <leader><leader>t
nmap T <leader><leader>T
nmap e <leader><leader>e
nmap ge <leader><leader>ge
nmap <leader>j <leader><leader>j
nmap <leader>k <leader><leader>k
vmap f <leader><leader>f
vmap F <leader><leader>F
vmap t <leader><leader>t
vmap T <leader><leader>T
vmap e <leader><leader>e
vmap ge <leader><leader>ge
vmap <leader>j <leader><leader>j
vmap <leader>k <leader><leader>k
nmap <leader>j <leader><leader>j
nmap <leader>k <leader><leader>k
imap <leader>f <C-o>f
imap <leader>F <C-o>F
imap <leader>t <C-o>t
imap <leader>T <C-o>T
imap <leader>e <C-o>e
imap <leader>ge <C-o>ge
imap <leader>k <C-o>k
imap <leader>j <C-o>j
"==============================================================================
" END: EasyMotion
"==============================================================================


"==============================================================================
" BEGIN: Makefile
" Shortcuts for running makefile rules
"==============================================================================
if has('nvim')
    map <f1> :wa<cr>:make doc<cr>
    map <f2> :wa<cr>:make tags<cr>
    map <f3> :wa<cr>:make test<cr>
    map <f5> :wa<cr>:make run<cr>
    map <f6> :wa<cr>:make build<cr>
    map <f7> :wa<cr>:make debug<cr>
else
    map <f1> :wa<cr>:silent !clear<cr>:Dispatch make -j8 --no-print-directory doc<cr>
    map <f2> :wa<cr>:silent !clear<cr>:Dispatch make -j8 --no-print-directory tags<cr>
    map <f3> :wa<cr>:silent !clear<cr>:make -j8 --no-print-directory test<cr>
    map <f5> :wa<cr>:silent !clear<cr>:make -j8 --no-print-directory run<cr>
    map <f6> :wa<cr>:silent !clear<cr>:Dispatch make -j8 --no-print-directory build<cr>
    map <f7> :wa<cr>:silent !clear<cr>:make -j8 debug<cr>
endif

imap <f1> <esc><f1>
imap <f2> <esc><f2>
imap <f3> <esc><f3>
imap <f5> <esc><f5>
imap <f6> <esc><f6>
imap <f7> <esc><f7>
"==============================================================================
" END: Makefile
"==============================================================================


"==============================================================================
" BEGIN: Session
"==============================================================================
" Don't load the default session when starting vim
let g:session_autoload = 'no'

" We only wish to save session state when it's good
" This way we can save a session before doing some temporary work, and reload
" it later
let g:session_autosave = 'no'

let g:session_directory = '~/.vimfiles/snippets'

nnoremap <leader>s :SaveSession!<cr>
"==============================================================================
" END: Session
"==============================================================================


"==============================================================================
" BEGIN: YouCompleteMe
"==============================================================================
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
let g:ycm_enable_diagnostics_signs = 1
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/bundle/neobundled/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"==============================================================================
" END: YouCompleteMe
"==============================================================================


"==============================================================================
" BEGIN: UltiSnips
"==============================================================================
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-s>"

let g:UltiSnipsSnippetsDir = '~/.vimfiles/snippets'

nnoremap <leader>u <C-w>v<C-w>l :UltiSnipsEdit<cr>
"==============================================================================
" END: UltiSnips
"==============================================================================


"==============================================================================
" BEGIN: Indent Guides
"==============================================================================
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=0
"==============================================================================
" END: Indent Guides
"==============================================================================


"==============================================================================
" BEGIN: LaTeX
"==============================================================================
let g:tex_flavor='latex'
"==============================================================================
" END: LaTeX
"==============================================================================



"==============================================================================
" BEGIN: tmux navigate NeoVim hack
"==============================================================================
if has('nvim')
    " nvim (or libtermkey?) has an issue using <c-h> from within tmux. The key
    " is just substituted for <bs>. As I don't use backspace in normal mode,
    " this remap works fine.
    nmap <silent> <bs> :TmuxNavigateLeft<cr>
endif
"==============================================================================
" BEGIN: tmux navigate NeoVim hack
"==============================================================================


"==============================================================================
" BEGIN: Change font size
"==============================================================================
function! SetFontSize(sz)
    if has("gui_running")
        let &guifont="DejaVu\ Sans\ Mono\ for\ Powerline\ " . a:sz
    else
        " Use terminal specific keys to change font size
    endif
endfunction
"==============================================================================
" END: Change font size
"==============================================================================


"==============================================================================
" BEGIN: Status line
"==============================================================================
let g:airline_theme = 'solarized'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Be sure to use a Powerline font
let g:airline_powerline_fonts = 1
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
  " These are uncommented as the palette seem to work fine now
  "if g:airline_theme == 'solarized'
  "  " normal mode background: s:base03
  "  let a:palette.normal.airline_a[2] = 8
  "  " normal mode foreground: s:green
  "  let a:palette.normal.airline_a[3] = 2
  "  " line no. background: s:base03
  "  let a:palette.normal.airline_z[2] = 8
  "  " line no. foreground: s:green
  "  let a:palette.normal.airline_z[3] = 2
  "endif
endfunction
"==============================================================================
" END: Status line
"==============================================================================


"==============================================================================
" BEGIN: Shortcuts for typing Norwegian characters on a non-norwegian keyboard
"==============================================================================
function! BindNorwegianCharacterSequences()
    inoremap ae æ
    inoremap oe ø
    inoremap /o ø
    inoremap oa å

    inoremap AE Æ
    inoremap Ae Æ
    inoremap OE Ø
    inoremap /O Ø
    inoremap Oe Ø
    inoremap OA Å
    inoremap Oa Å

    " Adding the exceptions is a *very* slow operation, so we need to only do
    " this once. The other mappings can be added at any time to allow
    " overriding other plugin mappings
    if !exists("g:nbreplace#loaded")
        " Exceptions
        " ----------
        " As the above replaces everything, "noe" becomes "nø". The following
        " exceptions have been created by looking at the characters I'm
        " replacing above and adds an abbreviation for these words to avoid
        " a lot of spelling errors.
        source ~/.config/nvim/bundle/pathogen/singlefiles/nbreplace/exceptions.vim

        let g:nbreplace#loaded = 1
    endif
endfunction
"==============================================================================
" END: Shortcuts for typing Norwegian characters on a non-norwegian keyboard
"==============================================================================


"==============================================================================
" BEGIN: Settings for writing emails
"==============================================================================
function! SetMailFormatOptions()
    set textwidth=66
    set formatoptions+=t
    set nocindent
endfunction

au FileType mail call SetMailFormatOptions()
au FileType pandoc call SetMailFormatOptions()
" A lot of emails are typed in norwegian, so load some character shortcuts
au FileType mail call BindNorwegianCharacterSequences()
"==============================================================================
" END: Settings for writing emails
"==============================================================================


"==============================================================================
" BEGIN: dlang
"==============================================================================
" These tags are uncommented until I need them....
"set tags=./tags;/
"set tags+=~/tags/druntime.tags
"set tags+=~/tags/phobos.tags
"set tags+=~/tags/mysql-native.tags
"set tags+=./simendlib.tags;/
"set tags+=~/tags/dub.tags
"set tags+=~/tags/vibed.tags
"set tags+=./simendlib-homepage.tags;/

let g:dcd_importPath=['/home/simendsjo/.dub/packages/vibe-d-master/source', '/usr/include/dlang/dmd']

function! SetDFTOptions()
    set omnifunc=dcomplete#Complete
    nmap gd :DCDsymbolLocation<cr>
    " Use D code comments for the vim-commentary plugin rather
    " than C-style /**/
    set commentstring=/+%s+/
endfunction
au Filetype d call SetDFTOptions()

function! SetJadeFTOptions()
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
endfunction
autocmd Filetype jade call SetJadeFTOptions()
" vibe.d diet tamplates are pretty much jade files
autocmd BufNewFile,BufReadPost *.dt set filetype=jade
"==============================================================================
" END: dlang
"==============================================================================


"==============================================================================
" BEGIN: fsharp
"==============================================================================
let g:fsharp_xbuild_path = "/usr/bin/xbuild"
"==============================================================================
" END: fsharp
"==============================================================================


"==============================================================================
" BEGIN: Syntastic
"==============================================================================
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['cs', 'ruby', 'php', 'd', 'rust', 'c', 'fsx', 'fsi', 'fs'],
                           \ 'passive_filetypes': ['puppet'] }
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_disabled_filetypes=['vimwiki']
"==============================================================================
" END: Syntastic
"==============================================================================


"==============================================================================
" BEGIN: Vimwiki
"==============================================================================
let g:vimwiki_list = [{'path':'~/vimwiki'}, {'path':'~/bachelorprosjekt/vimwiki'}, {'path':'~/work/bekk/notes/vimwiki'}]
"==============================================================================
" END: Vimwiki
"==============================================================================


"==============================================================================
" BEGIN: cscope
"==============================================================================
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb

    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
"==============================================================================
" END: cscope
"==============================================================================


"==============================================================================
" BEGIN: rust-lang
"==============================================================================
function! SetRustFTOptions()
    set tags+=/home/simendsjo/code/rust/rust/TAGS.vi
    imap <leader>{ <C-o>A {<cr>}<C-o>O
endfunction
au FileType rust call SetRustFTOptions()
"==============================================================================
" END: rust-lang
"==============================================================================

"==============================================================================
" BEGIN: Calendar
"==============================================================================
let g:calendar_first_day = "monday"
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"==============================================================================
" END: Calendar
"==============================================================================
