--- ./phoenix.pro.orig	2012-10-16 09:21:30.000000000 -0300
+++ ./phoenix.pro	2012-11-05 14:32:37.877490655 -0200
@@ -31,7 +31,7 @@
 # QTPLUGIN  += qjpeg qsqlite 
 
 
-CONFIG += debug_and_release
+CONFIG += release
 win32 {
 # release build using msvc 2010 needs to use Multi-threaded (/MT) for the code generation/runtime library option
 # release build using msvc 2010 needs to add msvcrt.lib;%(IgnoreSpecificDefaultLibraries) to the linker/no default libraries option
@@ -56,7 +56,7 @@
 unix {
     !macx { # unix is defined on mac
         HARDWARE_PLATFORM = $$system(uname -m)
-        contains( HARDWARE_PLATFORM, x86_64 ) {
+        contains( HARDWARE_PLATFORM, amd64 ) {
             DEFINES += LINUX_64
         } else {
             DEFINES += LINUX_32
@@ -65,7 +65,7 @@
     }
     
 	isEmpty(PREFIX) {
-		PREFIX = /usr
+		PREFIX = /usr/local
 	}
 	BINDIR = $$PREFIX/bin
 	DATADIR = $$PREFIX/share
@@ -78,11 +78,11 @@
 	desktop.path = $$DATADIR/applications
 	desktop.files += fritzing.desktop
 
-	manpage.path = $$DATADIR/man/man1
+	manpage.path = /usr/local/man/man1
 	manpage.files += Fritzing.1
 
-	icon.path = $$DATADIR/icons
-	icon.extra = install -D -m 0644 resources/images/fritzing_icon.png $(INSTALL_ROOT)$$DATADIR/icons/fritzing.png
+	icon.path = $$DATADIR/icons/hicolor/64x64/apps
+	icon.extra = install -m 0644 resources/images/fritzing_icon.png $(INSTALL_ROOT)$$DATADIR/icons/hicolor/64x64/apps/fritzing.png
 
 	parts.path = $$PKGDATADIR
 	parts.files += parts
