# /bin/bash
for file in ~/.config/environment.d/*.conf; do
    [ -f "$file" ] && export $(grep -v '^#' "$file" | xargs)
done
