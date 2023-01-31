alias rm='rm -i'
alias rmr='rm -I -r'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ltr='ls -ltrh'
alias sq='squeue -o "%8i %12u %.8M %30j %3t %12P %.5Q %.6m %2C %6E %13R" --sort=-S,p,i'
alias sqp='sq | grep per'
alias sqr="sq | grep ' RUNNING'"
alias sac='sacct'
alias sacr='sacct | grep RUNNING'
alias psaux=' ps aux | grep per'
alias pscut=' ps aux | grep per | cut -b 1-100'


alias scr='screen'
alias ipe='curl ipecho.net/plain;echo'
alias ll='ls -la'
alias ltr='ls -ltrha'
alias ipe='curl ipecho.net/plain; echo'
