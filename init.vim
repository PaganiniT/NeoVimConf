syntax on 
syntax enable

set nocompatible 
set mouse=a
set showcmd
set showmatch
set noerrorbells
set sw=2
set expandtab
set smartindent
set number
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamed
set encoding=UTF-8
set cursorline
set laststatus=2
set noshowmode
set colorcolumn=120
set termguicolors
highlight ColoColumn ctermbg=0 guibg=#0D82CF

call plug#begin('~/.local/share/nvim/plugged')
" Theme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
Plug 'Joshdick/Onedark.Vim'

" Color Schemes
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'rafi/awesome-vim-colorschemes'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'lilydjwg/colorizer'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Modificadores de Código
Plug 'yggdroot/indentline' 
Plug 'vim-scripts/indentLine.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'prettier/prettier'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Facilitador de Escritura
Plug 'townk/vim-autoclose'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'othree/html5.vim'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/loremipsum'
Plug 'ryanoasis/vim-devicons'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mlaursen/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-haml'
Plug 'KabbAmine/vCoolor.vim'

" Status Bar"
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


"KeyMaster
let mapleader = " "
let NERDTreeQuitOnOpen=1

"Atajos

nmap <Leader>s <Plug>(easymotion-s2)
"Explorador de archivos
nmap <Leader>nn :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :te<CR>
"Modificar tamaño de ventana"
nmap <c-right> :vertical resize +5<CR>
nmap <c-left> :vertical resize -5<CR>
nmap <c-up> :resize +5<CR>
nmap <c-down> :resize -5<CR>
"Abrir ventana"
nmap <Leader>a :tabe<CR>
"Navegar entre ventanas"
nmap <Leader>k :bnext<CR>
nmap <Leader>j :bprevious<CR>
"Ventana Vertical - Horizontal"
nmap <Leader>vs :vsp<CR>
nmap <Leader>sp :sp<CR>
"Abrir html en navegador"
nnoremap <Leader>. :silent update<Bar>silent !brave %:p &<CR>

"Navegar entre pestañas"
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap <C-z> :tabprevious<CR>
nnoremap <Tab> :tabnext<CR>


"Seleccionar Color-Theme
set background="dark" 
colorscheme miko
let g:lightline = { 
      \ 'colorscheme': 'onedark',
      \ }
let g:airline_theme = "molokai"

"Configuracion Plugins

" -- Prettier -- "
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"let g:prettier#config#parser = 'babylon'
"let g:prettier#autoformat = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" -- INDENTLINE -- " 
:set list lcs=tab:\|\ 
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#FFFFFF'

" .. EMMET -- "
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" -- NERDTreeFind -- "
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1 
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" HTML, JSX 
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"Lightline -Ale "

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129" 
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:lightline = {
       \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }


" --------------Configuracion FZF -------------- "
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>tg :Tags<CR>
nnoremap <leader>mk :Marks<CR>
nnoremap <leader>bl :BLines<CR>
nnoremap <leader>h  :History<CR>

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
