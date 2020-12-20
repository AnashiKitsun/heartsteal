function git_branch_name
  echo (git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function heartsteal_git_branch
  set_color normal && set_color -o
  set branch (git_branch_name)
  if [ (git_branch_name) ]
    echo -s [ (set_color normal && set_color cyan) $branch (set_color normal && set_color -o) ]
  end
end

function fish_right_prompt
  set_color normal && set_color -o
  echo -s [ (set_color normal && set_color red) (prompt_pwd) (set_color normal && set_color -o) ] (heartsteal_git_branch)
end
