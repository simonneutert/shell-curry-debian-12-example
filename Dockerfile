FROM debian:bookworm-slim

WORKDIR /root

ENV LANG=en_US.UTF-8  
ENV LANGUAGE=en_US:en  
ENV LC_ALL=en_US.UTF-8

# Sets a language for the system.
# Without this some zsh plugins will not work properly.
RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN apt-get install -y curl sed locales && \
   dpkg-reconfigure locales && \
   locale-gen en_US.UTF-8
   RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
   locale-gen

# Install zsh and some other tools
# bat, btop, duc, duf, lsd, tldr
RUN apt-get install -y \
    build-essential \
    bat \
    btop \
    curl \
    duc \
    duf \
    fonts-firacode \
    git \
    lsd \
    sed \
    tldr \
    vim \
    zsh \
    zsh-syntax-highlighting

COPY init.sh /root/init.sh
COPY zshrc_part1 /root/.zshrc_part1
COPY zshrc_init /root/.zshrc_init
COPY zsh_aliases /root/.zsh_aliases
COPY GET_STARTED.md /root/GET_STARTED.md

CMD ["/bin/zsh"]