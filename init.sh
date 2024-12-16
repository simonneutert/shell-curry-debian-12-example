#/usr/bin/zsh
curl -sS https://starship.rs/install.sh | sh
cd /root; git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
source /root/.zshrc_part1

asdf plugin-add nodejs;
asdf plugin-add just;
asdf plugin-add direnv;
asdf install nodejs latest;
asdf install just latest;
asdf install direnv latest;
asdf global nodejs latest;
asdf global just latest;
asdf global direnv latest;
asdf reshim;
asdf reshim direnv;

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete;
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

mv /root/.zshrc_init /root/.zshrc
rm /root/.zshrc_part1
source /root/.zshrc