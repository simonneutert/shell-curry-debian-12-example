# A spiced up zsh experience example

Use this Docker image to get your hands dirty with a spicy `zsh` experience.

Based on Debian 12, this image comes with a pre-configured `zsh` setup, including:

- zsh-syntax-highlighting
- zsh-autosuggestions
- zsh-autocomplete
- starship.rs
- bat
- lsd
- btop
- asdf
- tldr
- duc
- duf
- zoxide
- direnv
- fonts-firacode

## Fire it up

```bash
$ docker run -it --rm ghcr.io/simonneutert/shell-curry-debian-12-example:main
```

Inside Docker/zsh you can now type `bat GET_STARTED.md` and complete the setup process.
