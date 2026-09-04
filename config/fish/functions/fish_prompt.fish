function fish_prompt
    set_color "#9d4edd"
    echo -n (whoami)
    set_color white
    echo -n "@"
    set_color "#9d4edd"
    echo -n (hostname)
    set_color white
    echo -n " "
    set_color cyan
    echo -n (prompt_pwd)
    set_color white
    echo -n "> "
end