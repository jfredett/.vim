"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" config/settings
"""
""" General settings for the command line
"""
""" No extensive explanation of these options will be given. Most of them are
""" trivially understandable given a few minutes of reading :help
"""
""" You should probably never have to change this file.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

filetype off                   " required!

set rtp+=$VIM_PATH/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

call Source('config/pluginfile')
call Source('config/$USER/pluginfile')

filetype plugin indent on     " required!

"enable powerline
set rtp+=$VIM_PATH/powerline/bindings/vim

call Source('config/colors.vim')
call Source('config/languages.vim')
call Source('config/mappings.vim')
