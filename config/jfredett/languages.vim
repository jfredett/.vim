for plugin_file in split(glob("$VIM_PATH/config/$USER/languages/*"))
  exec "source " . plugin_file
endfor
