# Path to your oh-my-zsh installation.
export ZSH=/Users/arvind/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails bundle rake)

# User configuration

export PATH="/usr/local/bin:/Users/arvind/.nvm/versions/node/v0.12.6/bin:/Users/arvind/.rbenv/shims:/Users/arvind/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export MySQL_Dev_Username="root"
export MySQL_Dev_Password="root"
export EDITOR='subl -w'
export AWS_ACCESS_KEY_ID="AKIAIKKTXC7FDKYPPYJA"
export AWS_SECRET_KEY="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"
export AWS_REGION="us-east-1"
export AWS_S3_BUCKET="list-app"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias mysqlstart="/usr/local/Cellar/mysql/5.6.25/support-files/mysql.server start"
alias mysqlstop="/usr/local/Cellar/mysql/5.6.25/support-files/mysql.server stop"
alias postgresstart='postgres -D /usr/local/var/postgres'
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sshloomio="ssh deploy@128.199.192.116"
alias dokku='ssh -t dokku@loomio.fsftn.org'
alias s3dbsync='ssh -i ~/.ssh/s3-sync.pem ec2-user@52.3.26.153'
