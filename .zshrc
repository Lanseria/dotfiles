
# git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# === NPM BINRAY CHINA ===
# https://github.com/cnpm/binary-mirror-config/blob/master/package.json#L52
# old
# export NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
# export NVM_NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
# export PHANTOMJS_CDNURL="https://cdn.npmmirror.com/binaries/phantomjs"
# export CHROMEDRIVER_CDNURL="https://cdn.npmmirror.com/binaries/chromedriver"
# export OPERADRIVER_CDNURL="https://cdn.npmmirror.com/binaries/operadriver"
# export ELECTRON_MIRROR="https://cdn.npmmirror.com/binaries/electron/"
# export ELECTRON_BUILDER_BINARIES_MIRROR="https://cdn.npmmirror.com/binaries/electron-builder-binaries/"
# export SASS_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-sass"
# export SWC_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-swc"
# export NWJS_URLBASE="https://cdn.npmmirror.com/binaries/nwjs/v"
# export PUPPETEER_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries"
# export SENTRYCLI_CDNURL="https://cdn.npmmirror.com/binaries/sentry-cli"
# export SAUCECTL_INSTALL_BINARY_MIRROR="https://cdn.npmmirror.com/binaries/saucectl"
# export npm_config_sharp_binary_host="https://cdn.npmmirror.com/binaries/sharp"
# export npm_config_sharp_libvips_binary_host="https://cdn.npmmirror.com/binaries/sharp-libvips"
# export npm_config_robotjs_binary_host="https://cdn.npmmirror.com/binaries/robotj"
# new
export NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export NVM_NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export PHANTOMJS_CDNURL="https://cdn.npmmirror.com/binaries/phantomjs"
export CHROMEDRIVER_CDNURL="https://cdn.npmmirror.com/binaries/chromedriver"
export OPERADRIVER_CDNURL="https://cdn.npmmirror.com/binaries/operadriver"
export ELECTRON_MIRROR="https://cdn.npmmirror.com/binaries/electron/"
export ELECTRON_BUILDER_BINARIES_MIRROR="https://cdn.npmmirror.com/binaries/electron-builder-binaries/"
export SASS_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-sass"
export SWC_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-swc"
export NWJS_URLBASE="https://cdn.npmmirror.com/binaries/nwjs/v"
export PUPPETEER_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries"
export PLAYWRIGHT_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries/playwright"
export SENTRYCLI_CDNURL="https://cdn.npmmirror.com/binaries/sentry-cli"
export SAUCECTL_INSTALL_BINARY_MIRROR="https://cdn.npmmirror.com/binaries/saucectl"
export RE2_DOWNLOAD_MIRROR="https://cdn.npmmirror.com/binaries/node-re2"
export RE2_DOWNLOAD_SKIP_PATH="true"
export npm_config_keytar_binary_host="https://cdn.npmmirror.com/binaries/keytar"
export npm_config_sharp_binary_host="https://cdn.npmmirror.com/binaries/sharp"
export npm_config_sharp_libvips_binary_host="https://cdn.npmmirror.com/binaries/sharp-libvips"
export npm_config_robotjs_binary_host="https://cdn.npmmirror.com/binaries/robotjs"

# === PROXY ===
# alias setsock5proxy='export all_proxy=socks5://192.168.31.241:1082'
alias setsock5proxy='export all_proxy=socks5://127.0.0.1:10800'
alias unsetsock5proxy='unset all_proxy'


# -------------------------------- #
# Node Package Manager
# -------------------------------- #
# https://github.com/antfu/ni

alias nio="ni --prefer-offline"
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias bw="nr build --watch"
alias t="nr test"
alias tu="nr test -u"
alias tw="nr test --watch"
alias w="nr watch"
alias p="nr play"
alias c="nr typecheck"
alias lint="nr lint"
alias lintf="nr lint --fix"
alias release="nr release"
alias re="nr release"

# -------------------------------- #
# Git
# -------------------------------- #

# Use github/hub
alias git=hub

# Go to project root
alias grt='cd "$(git rev-parse --show-toplevel)"'

alias gs='git status'
alias gp='git push'
alias gpf='git push --force'
alias gpft='git push --follow-tags'
alias gpl='git pull --rebase'
alias gcl='git clone'
alias gst='git stash'
alias grm='git rm'
alias gmv='git mv'

alias main='git checkout main'

alias gco='git checkout'
alias gcob='git checkout -b'

alias gb='git branch'
alias gbd='git branch -d'

alias grb='git rebase'
alias grbom='git rebase origin/master'
alias grbc='git rebase --continue'

alias gl='git log'
alias glo='git log --oneline --graph'

alias grh='git reset HEAD'
alias grh1='git reset HEAD~1'

alias ga='git add'
alias gA='git add -A'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/master'

alias gxn='git clean -dn'
alias gx='git clean -df'

alias gsha='git rev-parse HEAD | pbcopy'

alias ghci='gh run list -L 1'

function glp() {
  git --no-pager log -$1
}
