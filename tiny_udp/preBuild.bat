@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo Running pre-build for %config%

where /q GmlCppExtFuncs
if %ERRORLEVEL% EQU 0 (
	echo Running GmlCppExtFuncs...
	GmlCppExtFuncs ^
	--prefix tiny_udp^
	--cpp "%projectDir%autogen.cpp"^
	--gml "%solutionDir%tiny_udp_23/extensions/tiny_udp/autogen.gml"^
	%projectDir%tiny_udp.cpp
)