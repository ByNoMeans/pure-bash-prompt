# generated by Git for Windows
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc

if [ -f ~/gitstatus/gitstatus.prompt.sh ]; then
  echo "gitstatus_start" >> ~/gitstatus/gitstatus.prompt.sh
  source ~/gitstatus/gitstatus.prompt.sh
  sed -i '$d' ~/gitstatus/gitstatus.prompt.sh
fi
