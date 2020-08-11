function _cd_up() { cd $(printf "%0.s../" $(seq 1 $1 )); }
function _compile_cpp() { g++ $1 -o a && ./a; }
function _ssh_bash() { 
	[ "$1" == "lh" ] && ssh -t $(whoami)@localhost \"bash -l\" || ssh -t $(whoami)@$1 \"bash -l\"
}
function _mk_cd() { mkdir "$1"; cd "$1"; }

alias phelp="echo $'
Run the following commands to help understand the prompt:
   bpfast             Convenience methods
   bpgit              Git aliases
   bpvenv             Virtualenv aliases
   bpsymbols          Prompt symbols
'"

. ~/.git-completion.bash

alias cd..='_cd_up'
alias cls='clear'
alias crun='_compile_cpp'
alias jq='/c/Program\ Files/Git/bin/jq'
alias sshb='_ssh_bash'
alias installreq='pip3 install -r requirements.txt'
alias setreq='pip3 freeze > requirements.txt'
alias src='source'
alias srcalias='. ~/.bash_aliases'
alias srcprof='. ~/.bash_profile'
alias srcrc='. /c/Program\ Files/Git/etc/bash.bashrc'
alias frm='rm -rf'
alias mkcd='_mk_cd'
alias open='start'
alias tree='cmd //c tree //f'
alias pfast="echo $'
   cd.. <integer>     Moves current directory <integer> levels up
   installreq         Installs requirements (only run in a virtualenv)
   setreq             Sets installation requirements to file
   srcrc              Source the /etc bashrc file to reload prompt changes
   srcalias           Source the ~/.bash_aliases file to reload alias changes
   tree               Prints directory structure (delete /f to remove files)'"

alias ga='git add'
alias gb='git branch'
__git_complete gb _git_branch
alias gch='git checkout'
__git_complete gch _git_checkout
alias gcm='git commit'
__git_complete gcm _git_commit
alias gcmm='git commit -m'
alias gcl='git clone'
__git_complete gcl _git_clone
alias gcp='git cherry-pick'
__git_complete gcp _git_cherry_pick
alias gd='git diff'
__git_complete gd _git_diff
alias gf='git flow'
alias gfch='git fetch'
__git_complete gfch _git_fetch
alias ggraph='git log --graph --abbrev-commit --date=relative --all'
alias glog='git log'
__git_complete glog _git_log
alias gplog="git log --pretty=format:'%h   %an   %s' -5"
alias gmrg='git merge'
__git_complete gmrg _git_merge
alias gp='git pull'
__git_complete gp _git_pull
alias gpu='git push'
__git_complete gpu _git_push
alias grbs='git rebase'
__git_complete grbs _git_rebase
alias grem='git remote'
__git_complete grem _git_remote
alias gres='git reset'
__git_complete gres _git_reset
alias gs='git status'
__git_complete gs _git_status
alias gst='git stash'
__git_complete gst _git_stash
alias gt='git tag'
__git_complete gt _git_tag

alias pgit="echo $'
   ga             add
   gb             branch
   gch            checkout
   gcm            commit
   gcl            clone
   gcp            cherry-pick
   gd             diff
   gf             flow
   gfch           fetch
   ggraph         Commit-abbreviated, relative-dated graph
   glog           log
   gplog          <hash>   <user>   <description>
   gmrg           merge
   gp             pull
   gpu            push
   grbs           rebase
   grem           remote
   gres           reset
   gs             status
   gst            stash
   gt             tag'"

alias cleanvenv='sed -i 's/\r$//g' ./venv/Scripts/activate'
alias mkvenv='virtualenv venv >/dev/null 2>&1'
alias rmvenv='deactivate venv && rm -rf venv'
alias srcvenv='. venv/Scripts/activate'
alias setvenv='mkvenv && srcvenv'
alias pvenv="echo $'
Virtual Environment aliases:
   cleanvenv      Silently remove carriage returns
   mkvenv         Silently create venv
   rmvenv         Silently remove venv
   setvenv        Silent create, source venv
   srcvenv        Silently source venv'"

alias psymbols="echo $'
Prompt Symbols:
   ≠                   No upstream
   ✗                   No remote
   ↑                   Commits ahead
   ↓                   Commits behind
   +                   Added
   -                   Deleted
   ~                   Modified
   $                   Renamed
   #                   Copied
   %                   Untracked
   Ψ                   Unmerged

   Pink: index status.
   Grey: working tree status.
   Blue: a problem or something you should update.'"