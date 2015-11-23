" The a_indent plugin remaps shift code that I use a lot
" unmap <

nmap <silent>M :call JumpToBlock('forward', 'false', 'indentOutOrEqual' )<cr>
vmap <silent>M :call JumpToBlock('forward', 'true', 'indentOutOrEqual')<cr>
nmap <silent>R :call JumpToBlock('backward', 'false', 'indentOutOrEqual')<cr>
vmap <silent>R :call JumpToBlock('backward', 'true', 'indentOutOrEqual')<cr>
