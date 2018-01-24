

" mapeamento para as teclas pararem de funcionar
nmap <left> <NOP>
nmap <right> <NOP>
nmap <up> <NOP>
nmap <down> <NOP>

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
" tema do editor
"colorscheme monokai
"colorscheme molokai
colorscheme monokai-soda
" colorscheme onedark

" dando uma arrumada no airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Atalho para auto identação
map <F7> mqHmwgg=G`wzt`q

"mapeamento para navegar entre abas
map <c-left> gT
map <c-right> gt

imap <c-left> <esc> gT
imap <c-right> <esc> gt

"map <F7> mzgg=G`z
"mostrar numero das linhas
set nu

" Configurar o tab para 4 espaços
set expandtab ts=4 sw=4

"configuração para indentar de forma diferente em arquivos diferentes
" autocmd FileType php set softtabstop=4 tabstop=8 laststatus=2 shiftwidth=4 expandtab
" autocmd FileType html set softtabstop=2 tabstop=2 laststatus=2 shiftwidth=2 expandtab




"configurar o autocomplete para php
"set omnifunc=phpcomplete#CompletePHP

" configura uma regua para alertar o limite de caracteres por linha
set colorcolumn=80

"ativa as linhas de identação
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1 
let g:indent_guides_guide_size = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=4

"configuração da barra de status
set laststatus=2


" Mover linhas com: Ctrl+(seta abaixo) ou (seta acima)
" tem que estar em modo normal!
map <C-Down> <esc>ddp<esc>
map <C-Up> <esc>ddkP<esc>

" para aumentar a esperteza e memorização do vim, podemos ter um arquivo
" ~/.viminfo que guardará dados úteis como seu histórico de pesquisas /,
" linha de comando :, marcas `, registradores, entre outros. então com o
" viminfo é  possível copiar uma  linha qualquer (yy),  sair do arquivo,
" abrir um OUTRO arquivo e colar (p) aquela linha copiada anteriormente.
" você pode inclusive nesse intervalo  desligar a máquina e ficar um mês
" de férias, que ao voltar o vim  ainda saberá qual foi a linha copiada.
" não tem contra-indicações. USE!
"
" a segunda linha é uma gambiarra para que ao abrir um arquivo, o cursor
" já fique na  posição que estava na  última vez que ele foi  editado. o
" viminfo guarda a posição de TODOS os arquivos que você editou.
"
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif


" tentativa do syntastic funcionar
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

