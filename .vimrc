""""""""""""""""""""""""""""
"        Basic setting     "
""""""""""""""""""""""""""""
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
set number
syntax on		      		  "打开语法高亮
filetype indent on 	          "不同文件采用不同缩进
set autoread 		          "当文件被外部改变时自动读取
set nobackup
set nowb
set noswapfile                "取消自动备份以及产生swp文件
set mouse=a		              "允许使用鼠标点击定位
set cursorline 		          "高亮光标所在行
set ruler 		              "显示当前光标所在行列号
set cmdheight=3               "命令行高度
set incsearch		          "及时搜索
set tabstop=4                 "制表符为4
set shiftwidth=4
set completeopt=longest

""""""""""""""""""""""""""""
"        Vundle setting    "
""""""""""""""""""""""""""""
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'suan/vim-instant-markdown'
" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
""""""""""""""""""""""""""""
"        YCM setting       "
""""""""""""""""""""""""""""
 inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
 let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
 let g:ycm_collect_identifiers_from_tag_files = 1 "开启YCM基于标签引擎
 let g:ycm_seed_identifiers_with_syntax = 1 "语法关键字补全
 let g:ycm_confirm_extra_conf=0
 let g:ycm_key_invoke_completion = '<C-/>'
 nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
""""""""""""""""""""""""""""
"    markdown setting      "
""""""""""""""""""""""""""""
" let g:vim_markdown_folding_disabled = 1
" let g:mkdp_auto_start = 1
""""""""""""""""""""""""""""
"    NERDTREE setting      "
""""""""""""""""""""""""""""
map <F8> :NERDTreeToggle<CR> "F8打开关闭树

""""""""""""""""""""""""""""
"    Auto Set Comment      "
""""""""""""""""""""""""""""
autocmd BufNewFile *.php,*.c,*.cpp exec ":call SetTitle()"
func SetTitle()
	call setline(1,"/**") 
	call append(line("."),"* @author		xxm/xinmian404@gmail.com") 
	call append(line(".")+1, "* @time			".strftime("%Y/%m/%d"))
	call append(line(".")+2, "* @filename") 
	call append(line(".")+3, "* @version") 
	call append(line(".")+4, "* @description")
	call append(line(".")+5, "*/") 
endfunc
