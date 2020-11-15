reset="$(tput sgr 0)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
orange="$(tput setaf 3)"
blue="$(tput setaf 4)"
bold="$(tput bold)"

print_error() {
  printf "%s✘ %s%s\n" "${red}${bold}" "$1" "${reset}"
}

print_success() {
  printf "%s✔ %s%s\n" "${green}${bold}" "$1" "${reset}"
}

print_info() {
  printf "%sℹ %s%s\n" "${blue}${bold}" "$1" "${reset}"
}

print_warning() {
  printf "%s⚠ %s%s\n" "${orange}${bold}" "$1" "${reset}"
}

print () {
  printf "%s\n" "$1"
}
