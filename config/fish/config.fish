source ~/.config/fish/.fish_aliases

function fish_prompt

	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
	test "$USER" = 'root'
	and echo (set_color red)"#"

    echo -n (set_color cyan)(prompt_pwd) (fish_git_prompt) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end
