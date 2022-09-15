if status is-interactive
    # Commands to run in interactive sessions can go here

    fundle plugin 'FabioAntunes/fish-nvm'
    fundle plugin 'edc/bass'
    fundle init
end

set -px --path PATH ~/.homedir/bin

# bun 
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
