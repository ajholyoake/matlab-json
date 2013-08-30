if ispc
    % Windows7/Visual Studio 2010
    mex -ljson -g LINKFLAGS="$LINKFLAGS /NODEFAULTLIB:MSVSRT.lib /NODEFAULTLIB:LIBCMT.lib" -IC:\Users\alex.holyoake\Documents\html\json-c\ -LC:\Users\alex.holyoake\Documents\html\json-c\Release\ -L"C:\Program Files\ (x86)\Microsoft SDKs\Windows\v7.0A\" fromjson.c
    mex -ljson -g LINKFLAGS="$LINKFLAGS /NODEFAULTLIB:MSVSRT.lib /NODEFAULTLIB:LIBCMT.lib" -IC:\Users\alex.holyoake\Documents\html\json-c\ -LC:\Users\alex.holyoake\Documents\html\json-c\Release\ -L"C:\Program Files\ (x86)\Microsoft SDKs\Windows\v7.0A\" tojson.c 
else
    % Linux/Ubuntu/GCC
    mex -ljson -g fromjson.c
    mex -ljson -lm -g tojson.c
end

mex setjsonfield.c