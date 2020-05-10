FROM maltejk/loolbuild-focal:base

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g jake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
