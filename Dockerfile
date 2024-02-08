FROM debian:10.1

LABEL "version"="0.1"
LABEL "com.github.actions.name"="Build and Release Debug APK"
LABEL "com.github.actions.description"="Build & Release Debug APK on GitHub. Load version number from file."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/rfs-dev-team/action-release-debugapk"
LABEL "maintainer"="rfs-dev-team"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
