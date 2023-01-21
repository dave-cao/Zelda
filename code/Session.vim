let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 main.py
badd +1 settings.py
badd +1 level.py\ player.py
badd +1 level.py
badd +1 player.py
badd +1 tile.py
badd +8 debug.py
badd +19 support.py
badd +0 weapon.py
argglobal
%argdel
$argadd main.py
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit main.py
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 28 - ((11 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 0
tabnext
edit settings.py
argglobal
balt main.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 03|
tabnext
edit level.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/settings.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
14
normal! zo
16
normal! zo
29
normal! zo
72
normal! zo
80
normal! zo
83
normal! zo
84
normal! zo
89
normal! zo
95
normal! zo
111
normal! zo
let s:l = 76 - ((61 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 76
normal! 018|
tabnext
edit ~/Documents/Coding_Projects/Currently_Working/Zelda/code/player.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/level.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
11
normal! zo
42
normal! zo
44
normal! zo
59
normal! zo
63
normal! zo
64
normal! zo
69
normal! zo
72
normal! zo
75
normal! zo
79
normal! zo
82
normal! zo
85
normal! zo
89
normal! zo
95
normal! zo
100
normal! zo
104
normal! zo
110
normal! zo
111
normal! zo
122
normal! zo
123
normal! zo
124
normal! zo
127
normal! zo
130
normal! zo
132
normal! zo
134
normal! zo
137
normal! zo
138
normal! zo
141
normal! zo
142
normal! zo
143
normal! zo
144
normal! zo
145
normal! zo
147
normal! zo
150
normal! zo
151
normal! zo
152
normal! zo
153
normal! zo
155
normal! zo
158
normal! zo
161
normal! zo
162
normal! zo
166
normal! zo
166
normal! zo
167
normal! zo
170
normal! zo
175
normal! zo
182
normal! zo
let s:l = 106 - ((26 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 106
normal! 039|
tabnext
edit ~/Documents/Coding_Projects/Currently_Working/Zelda/code/weapon.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/player.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
7
normal! zo
8
normal! zo
17
normal! zo
18
normal! zo
21
normal! zo
22
normal! zo
25
normal! zo
26
normal! zo
29
normal! zo
30
normal! zo
let s:l = 12 - ((11 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 042|
tabnext 4
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
