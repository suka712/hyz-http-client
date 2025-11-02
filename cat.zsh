# Custom prompt
PROMPT='%F{9}%n%f@%F{cyan}%m %F{default}%~%f %F{cyan}❯%f '

# Start of cat
colors=(51 50 45 81 87 93 99 105 111 117 123 129 135 141 147 153 159 165 171 177 183 129 123 117 111 105 99 93 91 55)

lines=(
``"        ✦        .       -                     ✧"
"+     .      +     \      .;'';,    .     . ,;'':;,    consider"
"  *            .    \    ;'   ':;,.,.,.,,,;'      ';,"
"  .     \   .          ,:'                       :::::,     giving"
" _ ✧   +       _     ,:'  /            \        ::::::',"
"    .   _      +    :'    ●            ●        ::::::i.  up"
" ￣       ✦_        ii    '''  (人) '''         ::::::"
"  .    .       .    i:                         :::::ii      bcos"
".   _    .   +    / \`:,､                     :::::::/"
"   *       .     /     +,::'                :::i::::;::.,    u   suck"
"       ✧          .     -                     ✦"
)

num_colors=${#colors[@]}
num_lines=${#lines[@]}

for i in {0..$((num_lines-1))}; do
  color_index=$(( i * num_colors / num_lines ))
  color=${colors[color_index]}
  echo -e "\033[38;5;${color}m${lines[i]}\033[0m"
done
# End of cat