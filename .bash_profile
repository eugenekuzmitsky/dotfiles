# Only run on macOS

eval "$(/usr/local/bin/brew shellenv)"

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config
