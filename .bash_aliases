

alias logfau='ssh -XC he86cyha@faui06g.cs.fau.de'
alias loginFAU='ssh he86cyha@cip2d2.cip.cs.fau.de'

alias gcccc='gcc -std=c99 -pedantic -D_XOPEN_SOURCE=700 -Wall -Werror '
alias vim='vim -u ~/.vim/vimrc'
alias cat=bat
alias open=xdg-open

alias rebash='source ~/.bashrc'
alias rei3='i3-msg reload; i3-msg restart'

alias turnOffTV='xrandr --output HDMI-0 --off'
alias turnOnTV='xrandr --output HDMI-0 --auto; xrandr --output HDMI-0 --right-of DVI-I-1 & '

alias shutdownnow='sudo shutdown -P now'
alias shutdownin='sudo shutdown -P'
alias sleepnow='systemctl suspend'

#!!!!!!!!!!!1
#PATH

# Intellij
export PATH="/home/yupidupbubi/Programs/JetBrains/idea-IU-211.7142.45/bin:$PATH"
# WebStorm
export PATH="/home/yupidupbubi/Programs/JetBrains/WebStorm/WebStorm-212.5284.41/bin:$PATH"


#!!!!!!!!!!!1
#FUNCTIONS

function cpwd(){
        echo ~ | xclip -sel sec
}
export -f cpwd

function spwd(){
        pwd | xclip -sel sec
}
export -f spwd  

function mpwd(){
        cd $(xclip -o -sel sec)
}
export -f mpwd
