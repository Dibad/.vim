"  +----------------------------------------------+
"  |                                              |
"  |              Keyboard Mappings               |
"  |                                              |
"  +----------------------------------------------+


" ================  Leader      ====================
let mapleader=","


" ================  Movement    ====================
"--- Move through visual lines
nnoremap j gj
nnoremap k gk

"--- Faster window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"--- Move windows
nnoremap <C-w><C-h> <C-w>H
nnoremap <C-w><C-j> <C-w>J
nnoremap <C-w><C-k> <C-w>K
nnoremap <C-w><C-l> <C-w>L

"--- Resize windows
nnoremap <silent> <Up> :resize -2<CR>
nnoremap <silent> <Down> :resize +2<CR>
nnoremap <silent> <Left> :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>

"--- Change window size
nnoremap <C-w><C-m> <C-w>\| <C-W>_
nnoremap <C-w><C-e> <C-w>=

"--- [tags] Go to declaration
nmap <Leader>d <C-]>
"--- [tags] Go to definition
nmap <Leader>sd g<C-]>

"--- Move to next/prev error
noremap <C-n> :lnext<CR>
noremap <C-p> :lprev<CR>



" ================  Shortcuts   ====================

"--- Save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"--- Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

"--- Disable search highligh
nnoremap <silent> <Leader><space> :nohlsearch<CR>

"--- Change to pastemode
set pastetoggle=<F2>

"--- Easy quit shortcut
nnoremap <Leader>q :q<CR>

"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Easy block indentation
nnoremap <silent> <leader>> >iB
nnoremap <silent> <leader>< <iB

"--- Esc with C-c
inoremap <C-c> <Esc>

"--- Move through buffers
nmap <Leader>p :bp<CR>
nmap <Leader>n :bn<CR>

"--- Use system clipboard with leader
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p



" ================   Plugins    ====================

" ===========   NERDTree    ===============
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" ===========     Tagbar    ===============
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" ===========     a.vim     ===============
"--- Switch to header/cpp
nnoremap <silent> <Leader>a :A<CR>
nnoremap <silent> <Leader>s :AS<CR>

" ===========  Autoformat   ==============
nnoremap <F4> :Autoformat<CR>

" ===========  indent-gui   ==============
nnoremap <Leader>ig :IndentGuidesToggle<CR>

" ===========  Cscope.vim   ==============
nnoremap <Leader>gc :cs find c <C-R>=expand('<cword>')<CR><CR>
nnoremap <Leader>gd :cs find d <C-R>=expand('<cword>')<CR><CR>
nnoremap <Leader>ge :cs find e <C-R>=expand('<cword>')<CR><CR>
nnoremap <Leader>gf :cs find f <C-R>=expand('<cfile>')<CR><CR>
nnoremap <Leader>gg :cs find g <C-R>=expand('<cword>')<CR><CR>
nnoremap <Leader>gi :cs find i <C-R>=expand('<cfile>')<CR><CR>
nnoremap <Leader>gs :cs find s <C-R>=expand('<cword>')<CR><CR>
nnoremap <Leader>gt :cs find t <C-R>=expand('<cword>')<CR><CR>