# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# History rocks
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history
HISTTIMEFORMAT="%h %d %H:%M:%S "

autoload -U compinit
compinit -u

source $HOME/dotfiles/zsh/aliases            # aliases
source $HOME/dotfiles/zsh/functions          # functions
source $HOME/dotfiles/zsh/prompt             # rubylove prompt

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh       # autoswitch with .ruby-version files

export PATH=/usr/local/bin:$PATH             # homebrew/user installs
export PATH=./.bundle/bin:$PATH              # directory scoped gems
export PATH=./bin:$PATH                      # local directory bin

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/include

# for npm
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

[[ -f ~/.aliases ]] && source ~/.aliases

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
