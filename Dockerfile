FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Syu --needed --noconfirm \
    python2-sphinx \
    python2-sphinx_rtd_theme \
    sphinxcontrib2-programoutput \
    make && \
    rm -rf /var/cache/pacman

CMD ["make", "html"]

# vim:ft=Dockerfile:
