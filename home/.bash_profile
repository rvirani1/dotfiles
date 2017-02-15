if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/riaznvirani/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/riaznvirani/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/riaznvirani/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/riaznvirani/Downloads/google-cloud-sdk/completion.bash.inc'
fi
