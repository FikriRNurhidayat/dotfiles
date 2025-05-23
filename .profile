for file in $HOME/.config/environment.d/*.conf; do
    if [ -f "$file" ]; then
	set -a
	. "$file"
	set +a
    fi
done
