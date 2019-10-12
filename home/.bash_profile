if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/riaznvirani/google-cloud-sdk/path.bash.inc' ]; then source '/Users/riaznvirani/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/riaznvirani/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/riaznvirani/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$PATH:/Users/riaznvirani/bin
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export BASH_SILENCE_DEPRECATION_WARNING=1
