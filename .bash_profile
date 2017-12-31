alias sa='git status'
alias por='git push origin'
alias pup='git push upstream'
alias patch='npm version patch'
alias add='git add -u .'
alias c='git commit -S'

export VISUAL=vim
export EDITOR="$VISUAL"

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/tjwebb/workspace/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/tjwebb/workspace/google-cloud-sdk/completion.bash.inc'

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/oracle/instantclient/
export OCI_LIB_DIR=/opt/oracle/instantclient
export OCI_INC_DIR=/opt/oracle/instantclient/sdk/include

#eslint_d start --cache-location ~/workspace

export PYTHONPATH=/usr/local/lib/python3.6/site-packages/python-cobol

export GOPATH=$HOME/workspace

export DISPLAY=:0

source ~/.bash_env
source ~/.bash_git
