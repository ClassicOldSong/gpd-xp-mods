print_modname() {
  ui_print "*******************************"
  ui_print "*    --== GPD XP MODS ==--    *"
  ui_print "*******************************"
}

REPLACE="
"

print_modname

rm -r $MODPATH/__MACOSX

chmod +x $MODPATH/service.sh
chmod +x $MODPATH/uninstall.sh
chmod +x $MODPATH/system/bin/bindfs

ui_print "Install complete! Enjoy!"
ui_print "----------"
ui_print "Module by @ClassicOldSong on Twitter"
ui_print "----------"
ui_print "Checkout \"MantisAutoBuddy\" for auto-activated touch mapping!"