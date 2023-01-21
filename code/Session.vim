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
badd +9 weapon.py
badd +64 ui.py
badd +45 entity.py
badd +108 enemy.py
badd +1 particles.py
badd +0 magic.py
argglobal
%argdel
$argadd main.py
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
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
let s:l = 28 - ((25 * winheight(0) + 21) / 43)
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
let s:l = 38 - ((22 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 38
normal! 0
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
17
normal! zo
40
normal! zo
53
normal! zo
54
normal! zo
56
normal! zo
57
normal! zo
89
normal! zo
99
normal! zo
108
normal! zo
154
normal! zo
155
normal! zo
160
normal! zo
164
normal! zo
168
normal! zo
176
normal! zo
179
normal! zo
192
normal! zo
201
normal! zo
205
normal! zo
206
normal! zo
211
normal! zo
let s:l = 164 - ((62 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 164
normal! 09|
tabnext
edit ~/Documents/Coding_Projects/Currently_Working/Zelda/code/enemy.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/level.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
10
normal! zo
20
normal! zo
58
normal! zo
64
normal! zo
69
normal! zo
76
normal! zo
79
normal! zo
80
normal! zo
83
normal! zo
85
normal! zo
88
normal! zo
89
normal! zo
92
normal! zo
94
normal! zo
97
normal! zo
99
normal! zo
100
normal! zo
103
normal! zo
107
normal! zo
111
normal! zo
112
normal! zo
125
normal! zo
126
normal! zo
128
normal! zo
130
normal! zo
136
normal! zo
137
normal! zo
152
normal! zo
let s:l = 126 - ((21 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 126
normal! 037|
tabnext
edit ~/Documents/Coding_Projects/Currently_Working/Zelda/code/magic.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/enemy.py
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
let s:l = 12 - ((11 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
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
11
normal! zo
14
normal! zo
61
normal! zo
63
normal! zo
78
normal! zo
61
normal! zc
82
normal! zo
83
normal! zo
88
normal! zo
91
normal! zo
94
normal! zo
98
normal! zo
101
normal! zo
104
normal! zo
108
normal! zo
114
normal! zo
123
normal! zo
127
normal! zo
133
normal! zo
137
normal! zo
146
normal! zo
147
normal! zo
148
normal! zo
151
normal! zo
154
normal! zo
156
normal! zo
158
normal! zo
161
normal! zo
162
normal! zo
165
normal! zo
168
normal! zo
169
normal! zo
172
normal! zo
176
normal! zo
177
normal! zo
180
normal! zo
181
normal! zo
184
normal! zo
185
normal! zo
188
normal! zo
193
normal! zo
201
normal! zo
204
normal! zo
207
normal! zo
212
normal! zo
let s:l = 18 - ((17 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
tabnext
edit ~/Documents/Coding_Projects/Currently_Working/Zelda/code/particles.py
tcd ~/Documents/Coding_Projects/Currently_Working/Zelda/code
argglobal
balt ~/Documents/Coding_Projects/Currently_Working/Zelda/code/player.py
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
let s:l = 38 - ((13 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 38
normal! 034|
tabnext 5
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
