#!/usr/bin/env zsh


# dotnet 8.0
export DOTNET_ROOT="/opt/homebrew/opt/dotnet@8/libexec"
export PATH="/opt/homebrew/opt/dotnet@8/bin:$PATH"
# dotnet 8.0 end

# pnpm
export PNPM_HOME="/Users/marcusgeorgievski/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# node
# brew link --overwrite node@22
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
# node end
