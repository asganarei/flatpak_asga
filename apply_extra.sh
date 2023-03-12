#!/usr/bin/sh
ar x BooktabSetup.deb data.tar.xz
rm BooktabSetup.deb
tar --exclude="*/libQt*" --exclude="*/plugins" --exclude="*/qml" --exclude="*/qt*" -xf data.tar.xz --strip-components=3 ./usr/share/duDat
rm data.tar.xz
install -Dm 644 /app/extra/duDat/BooktabZ/booktab_icon_144x144.png /app/extra/export/share/icons/hicolor/144x144/apps/it.dudat.booktab.png
