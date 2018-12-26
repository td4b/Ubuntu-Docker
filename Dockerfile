FROM ubuntu:16.04

RUN apt update && apt-get install -y software-properties-common curl && apt-get clean all

RUN apt-get update \
    && gsettings set org.gnome.desktop.input-sources current 0 \
    && apt-get install -y ubuntu-gnome-desktop
