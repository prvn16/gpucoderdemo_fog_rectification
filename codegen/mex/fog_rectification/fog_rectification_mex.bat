@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2017b
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2017b\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=fog_rectification_gpu_mex
set MEX_NAME=fog_rectification_gpu_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for fog_rectification > fog_rectification_mex.mki
echo COMPILER=%COMPILER%>> fog_rectification_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> fog_rectification_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> fog_rectification_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> fog_rectification_mex.mki
echo LINKER=%LINKER%>> fog_rectification_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> fog_rectification_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> fog_rectification_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> fog_rectification_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> fog_rectification_mex.mki
echo BORLAND=%BORLAND%>> fog_rectification_mex.mki
echo NVCC=nvcc >> fog_rectification_mex.mki
echo CUDA_FLAGS= -c -rdc=true -Xcompiler "/wd 4819" -Xcudafe "--diag_suppress=unsigned_compare_with_zero --diag_suppress=useless_type_qualifier_on_return_type" -D_GNU_SOURCE -DMATLAB_MEX_FILE >> fog_rectification_mex.mki
echo LD=nvcc >> fog_rectification_mex.mki
echo MAPLIBS=libemlrt.lib,libcovrt.lib,libut.lib,libmwmathutil.lib,/export:mexFunction,/export:emlrtMexFcnProperties,/export:fog_rectification,/export:fog_rectification_initialize,/export:fog_rectification_terminate,/export:fog_rectification_atexit >> fog_rectification_mex.mki
echo OMPFLAGS= >> fog_rectification_mex.mki
echo OMPLINKFLAGS= >> fog_rectification_mex.mki
echo EMC_COMPILER=msvc140>> fog_rectification_mex.mki
echo EMC_CONFIG=optim>> fog_rectification_mex.mki
"C:\Program Files\MATLAB\R2017b\bin\win64\gmake" -B -f fog_rectification_mex.mk
