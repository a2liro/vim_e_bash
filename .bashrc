# *********************************************
# * ~/.bashrc Personalizado para Ubuntu       *
# * System: Ubuntu 12.04 – Precise Pangolin   *
# * local: /home/user/.bashrc                 *
# *                                           *
# * Author: Thiago Nalli Valentim             *
# * E-Mail: thiago.nalli@gmail.com            *
# * Date: 2012-05-24                          *
# *********************************************
# ======================================================================
# Adaptado do original de Edinaldo P. Silva para Arch Linux
# URL: http://gnu2all.blogspot.com.br/2011/10/arch-linux-bashrc.html
# ======================================================================
 
#-----------------------------------------------
# Configurações Gerais
#-----------------------------------------------
 
echo "                         .-\"\"\"-.  "
echo "                        / .===. \    "
echo "                        \/ 6 6 \/    "
echo "                        ( \___/ )    "
echo " ___________________ooo__\_____/__________________________"
echo "/                                                         \ "
echo "|               Eu adoraria mudar o mundo,                | "
echo "|            mas não me deram o código-fonte.             | "
echo "|                                                         | "
echo "|                                                         | "
echo "|                                                         | "
echo "\__________________________________ooo____________________/ "
echo "                         |  |  | "
echo "                         |_ |_ | "
echo "                         |  |  | "
echo "                         |__|__| "
echo "                         /-'Y'-\ "
echo "                        (__/ \__) "
echo " "

# Se não estiver rodando interativamente, não fazer nada
[ -z "$PS1" ] && return
 
# Não armazenar as linhas duplicadas ou linhas que começam com espaço no historico
HISTCONTROL=ignoreboth
 
# Adicionar ao Historico e não substitui-lo
shopt -s histappend
 
# Definições do comprimento e tamnho do historico.
HISTSIZE=1000
HISTFILESIZE=2000
 
#===========================================
# Váriavies com as Cores
#===========================================
NONE="\[\033[0m\]" # Eliminar as Cores, deixar padrão)
 
## Cores de Fonte
K="\[\033[0;30m\]" # Black (Preto)
R="\[\033[0;31m\]" # Red (Vermelho)
G="\[\033[0;32m\]" # Green (Verde)
Y="\[\033[0;33m\]" # Yellow (Amarelo)
B="\[\033[0;34m\]" # Blue (Azul)
M="\[\033[0;35m\]" # Magenta (Vermelho Claro)
C="\[\033[0;36m\]" # Cyan (Ciano - Azul Claro)
W="\[\033[0;37m\]" # White (Branco)
 
## Efeito Negrito (bold) e cores
BK="\[\033[1;30m\]" # Bold+Black (Negrito+Preto)
BR="\[\033[1;31m\]" # Bold+Red (Negrito+Vermelho)
BG="\[\033[1;32m\]" # Bold+Green (Negrito+Verde)
BY="\[\033[1;33m\]" # Bold+Yellow (Negrito+Amarelo)
BB="\[\033[1;34m\]" # Bold+Blue (Negrito+Azul)
BM="\[\033[1;35m\]" # Bold+Magenta (Negrito+Vermelho Claro)
BC="\[\033[1;36m\]" # Bold+Cyan (Negrito+Ciano - Azul Claro)
BW="\[\033[1;37m\]" # Bold+White (Negrito+Branco)
 
## Cores de fundo (backgroud)
BGK="\[\033[40m\]" # Black (Preto)
BGR="\[\033[41m\]" # Red (Vermelho)
BGG="\[\033[42m\]" # Green (Verde)
BGY="\[\033[43m\]" # Yellow (Amarelo)
BGB="\[\033[44m\]" # Blue (Azul)
BGM="\[\033[45m\]" # Magenta (Vermelho Claro)
BGC="\[\033[46m\]" # Cyan (Ciano - Azul Claro)
BGW="\[\033[47m\]" # White (Branco)
 
#=============================================
# Configurações referentes ao usuário
#=============================================
 
#Configuração para mostar o brach do git 
source /usr/share/git/completion/git-prompt.sh

## Verifica se é usuário root (UUID=0) ou usuário comum
if [ $UID -eq "0" ]; then
 
## Cores e efeitos do Usuario root
 
PS1="$G┌─[$BR\u$G]$BY@$G[$BW${HOSTNAME%%.*}$G]$B:\w\n$G└──>$BR \\$ $NONE"
 
else
 
## Cores e efeitos do usuário comum
 
export PS1='\[\033[1;33m\]┌─[\[\033[1;32m\]\u\[\033[1;33m\]]\[\033[1;33m\]@\[\033[1;33m\][\[\033[1;37m\]${HOSTNAME%%.*}\[\033[1;33m\]]\[\033[0;34m\]:\w\[\033[0;33m\]$(__git_ps1 " ( %s)")\n\[\033[1;33m\]└──>\[\033[1;32m\] \\$ \[\033[0m\]'
# export PS1="$BR┌─[$BG\u$BR]$BY@$BR[$BW${HOSTNAME%%.*}$BR]$B:\w$Y$(__git_ps1 " (%s)")\n$BR└──>$BG \\$ $NONE"
             # export PS1='\u@\h\[\033[01;34m\] \w\[\033[0;32m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '

 
fi # Fim da condição if
 
## Exemplos de PS1
 
# PS1="\e[01;31m┌─[\e[01;35m\u\e[01;31m]──[\e[00;37m${HOSTNAME%%.*}\e[01;32m]:\w$\e[01;31m\n\e[01;31m└──\e[01;36m>>\e[00m"
 
# PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '}
 
# PS1="\e[01;31m┌─[\e[01;35m\u\e[01;31m]──[\e[00;37m${HOSTNAME%%.*}\e[01;32m]:\w$\e[01;31m\n\e[01;31m└──\e[01;36m>>\e[00m"
 
# PS1="┌─[\[\e[34m\]\h\[\e[0m\]][\[\e[32m\]\w\[\e[0m\]]\n└─╼ "
 
# PS1='[\u@\h \W]\$ '
 
#==========================
# DIVERSOS
#==========================
 
## Habilitando suporte a cores para o ls e outros aliases
## Vê se o arquivo existe
if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
 
## Aliases (apelidos) para comandos
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi # Fim do if do dircolor
 
#==============================================
# Aliases para uso diário
#==============================================
alias cdestrutura-de-dados='cd /home/andre/Documentos/estudos/if/segundo_semestre/estrutura_de_dados/ && ls -la'
alias cdionic='cd /home/andre/Documentos/estudos/javascript/ionic/ && ls -lah'
alias docker-start-site='/home/andre/Documentos/docker/site/docker-start-site.sh'
alias previsao-do-tempo='curl http://wttr.in/~campo-formoso'
alias cdhotline='cd /home/andre/Documentos/trabalho/php/hotline-laravel-5.5'
alias vimhotline='cd /home/andre/Documentos/trabalho/php/hotline-laravel-5.5 && vim'

# export do android
export ANDROID_HOME=/opt/android-sdk/
export PATH=${PATH}:/opt/android-sdk/platform-tools:/opt/android-sdk/tools

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

# Executar isso para aceitar as licencas do android, deve ser feito quando
# Não instala o android studio
# $ANDROID_HOME/tools/bin/sdkmanager --licenses

# Um bom comando para construir app ionic
# ionic cordova run android --device --minifyjs --minifycss --optimizejs --prod
