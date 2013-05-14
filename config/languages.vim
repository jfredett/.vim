for plugin_file in split(glob("$VIM_PATH/config/languages/*"))
  exec "source " . plugin_file
endfor
