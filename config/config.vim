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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

call Source('config/pluginfile')
call Source('config/$USER/pluginfile')

filetype plugin indent on     " required!

call Source('config/languages')
call Source('config/commands')
call Source('config/functions')
call Source('config/mappings')
call Source('config/statusline')
