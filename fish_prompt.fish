set fish_color_command normal
set fish_color_error cyan

function heartsteal_status
  if [ $status = 0 ]
    echo -s (set_color cyan)"♥"
  else
    echo -s (set_color red)"☠"
  end
end

function fish_prompt
  set stat (heartsteal_status)
  echo -s (set_color -o) $USER (set_color -o red) "::" (set_color normal && set_color -o) $hostname
  echo -s (set_color -o) [ $stat (set_color normal && set_color -o) ] (set_color normal) "-<" (set_color red) ">> "
end
