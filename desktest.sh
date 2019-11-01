#!/bin/bash

echo "[Desktop Entry]
Version=1.3.0
Encoding=UTF-8
Name=OpenToonz
Comment=2Dアニメーションアプリ
Exec=/opt/opentoonz/bin/opentoonz 
Icon=/opt/opentoonz/share/icons/hicolor/256x256/apps/io.github.OpenToonz.png
StartupNotify=true
Terminal=false
Type=Application
Categories=Graphics;2DGraphics;RasterGraphics;GTK;" | sudo tee -a  /usr/share/applications/opentoonz.desktop