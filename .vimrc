syntax enable
colorscheme peachpuff
set tabstop=2
set shiftwidth=2
set autoindent
set nu 
hi LineNr ctermfg=DarkRed
hi Comment ctermfg=yellow
hi Type ctermfg=blue
set numberwidth=1
set hls
imap <C-d> <C-[>diwi
inoremap <C-bs> <esc>diwi
highlight OverLength ctermfg=Grey guibg=#592929
"match OverLength /\%81v.\+/

"Easy deletion
inoremap {{ {<CR>}<esc>ko<Tab>
inoremap }} {}<left>
inoremap ]] []
inoremap [[ []<left>
inoremap (( ()<Left>
inoremap )) ()
inoremap "" ""<left>
inoremap '' ''<left>
inoremap if( if() {<CR>}<esc>ko<Tab><esc>k2li
inoremap else.. else {<cr>}<esc>ko<tab>
inoremap while( while() {<cr>}<esc>ko<tab><esc>k5li
inoremap for( for(i = 0; i < ; i++) {<CR>}<esc>ko<tab><esc>k15li
inoremap <? <?php
inoremap class.. class  {<cr>}<esc>ko<tab>public static void main(String[] args) {<cr>}<esc>ko<tab><esc>gg6li
