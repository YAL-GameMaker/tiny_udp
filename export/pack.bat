@echo off

if not exist "tiny_udp-for-GMS1" mkdir "tiny_udp-for-GMS1"
cmd /C copyre ..\tiny_udp.gmx\extensions\tiny_udp.extension.gmx tiny_udp-for-GMS1\tiny_udp.extension.gmx
cmd /C copyre ..\tiny_udp.gmx\extensions\tiny_udp tiny_udp-for-GMS1\tiny_udp
cmd /C copyre ..\tiny_udp.gmx\datafiles\tiny_udp.html tiny_udp-for-GMS1\tiny_udp\Assets\datafiles\tiny_udp.html
cd tiny_udp-for-GMS1
cmd /C 7z a tiny_udp-for-GMS1.7z *
move /Y tiny_udp-for-GMS1.7z ../tiny_udp-for-GMS1.gmez
cd ..

if not exist "tiny_udp-for-GMS2\extensions" mkdir "tiny_udp-for-GMS2\extensions"
if not exist "tiny_udp-for-GMS2\datafiles" mkdir "tiny_udp-for-GMS2\datafiles"
if not exist "tiny_udp-for-GMS2\datafiles_yy" mkdir "tiny_udp-for-GMS2\datafiles_yy"
cmd /C copyre ..\tiny_udp_yy\extensions\tiny_udp tiny_udp-for-GMS2\extensions\tiny_udp
cmd /C copyre ..\tiny_udp_yy\datafiles\tiny_udp.html tiny_udp-for-GMS2\datafiles\tiny_udp.html
cmd /C copyre ..\tiny_udp_yy\datafiles_yy\tiny_udp.html.yy tiny_udp-for-GMS2\datafiles_yy\tiny_udp.html.yy
cd tiny_udp-for-GMS2
cmd /C 7z a tiny_udp-for-GMS2.zip *
move /Y tiny_udp-for-GMS2.zip ../tiny_udp-for-GMS2.yymp
cd ..

if not exist "tiny_udp-for-GMS2.3+\extensions" mkdir "tiny_udp-for-GMS2.3+\extensions"
if not exist "tiny_udp-for-GMS2.3+\datafiles" mkdir "tiny_udp-for-GMS2.3+\datafiles"
cmd /C copyre ..\tiny_udp_23\extensions\tiny_udp tiny_udp-for-GMS2.3+\extensions\tiny_udp
cmd /C copyre ..\tiny_udp_23\datafiles\tiny_udp.html tiny_udp-for-GMS2.3+\datafiles\tiny_udp.html
cd tiny_udp-for-GMS2.3+
cmd /C 7z a tiny_udp-for-GMS2.3+.zip *
move /Y tiny_udp-for-GMS2.3+.zip ../tiny_udp-for-GMS2.3+.yymps
cd ..

pause