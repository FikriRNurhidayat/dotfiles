set -x EDITOR nvim
alias android          ~/Android/Sdk/tools/android
alias android-emulator ~/Android/Sdk/tools/bin/avdmanager
alias vim              nvim
alias binar            "cd ~/Works/Binar"
alias aseka            "cd ~/Works/Aseka"
alias qatros           "cd ~/Works/Qatros"
alias research         "cd ~/Works/Research"

set fish_greeting

function dah
  git branch | grep -v '^*' | xargs git branch -D
end
