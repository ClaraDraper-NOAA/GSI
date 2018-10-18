function (setPGI)
  message("Setting PGI Compiler Flags")
  if( (BUILD_RELEASE) OR (BUILD_PRODUCTION) )
    set(CMAKE_Fortran_FLAGS_RELEASE "")  
    set(Fortran_FLAGS "" CACHE INTERNAL "")
    set(GSI_Fortran_FLAGS "-Minform=inform -O1 -byteswapio  -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(GSI_CFLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -g  -Dfunder" CACHE INTERNAL "" )
    set(ENKF_Fortran_FLAGS " -O3 -byteswapio -fast -DGFS -D_REAL8_ -mp" CACHE INTERNAL "")
    set(UTIL_Fortran_FLAGS " -O3 -byteswapio -fast -DWRF -D_REAL8_ -mp" CACHE INTERNAL "")
    set(UTIL_COM_Fortran_FLAGS " -O3 -byteswapio -fast" CACHE INTERNAL "")
  
    set(BUFR_Fortran_FLAGS "-O1 -byteswapio  -D_REAL8_ -mp -r8" CACHE INTERNAL "")
    set(BUFR_Fortran_PP_FLAGS " -P " CACHE INTERNAL "")
    set(BUFR_C_FLAGS " -g -DUNDERSCORE  -DDYNAMIC_ALLOCATION -DNFILES=32 -DMAXCD=250 -DMAXNC=600 -DMXNAF=3" CACHE INTERNAL "" )
  
    set(BACIO_C_INCLUDES " -I/usr/include/malloc" CACHE INTERNAL "")
    set(BACIO_Fortran_FLAGS " -O3 -byteswapio -fast -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(CRTM_Fortran_FLAGS " -O1 -byteswapio -module ../../include -Mfree " CACHE INTERNAL "")
    set(NEMSIO_Fortran_FLAGS " -O1 -byteswapio -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SIGIO_Fortran_FLAGS " -O3 -Mfree -byteswapio -fast -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SFCIO_Fortran_FLAGS " -O3 -byteswapio  -Mfree -fast -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SP_Fortran_FLAGS " -O1 -byteswapio  -D_REAL8_ -mp -r8 " CACHE INTERNAL "")
    set(SP_Fortran_4_FLAGS " -O1 -byteswapio  -mp " CACHE INTERNAL "")
    set(SP_F77_4_FLAGS "-DLINUX -O1 -byteswapio  -mp " CACHE INTERNAL "")
    set(SP_F77_FLAGS "-DLINUX -O1 -byteswapio  -D_REAL8_ -mp -r8 " CACHE INTERNAL "")
    set(W3EMC_Fortran_FLAGS " -O1 -byteswapio  -D_REAL8_ -r8 " CACHE INTERNAL "")
    set(W3EMC_4_Fortran_FLAGS " -O1 -byteswapio  " CACHE INTERNAL "")
    set(W3NCO_Fortran_FLAGS " -O1 -byteswapio  -D_REAL8_ -r8 " CACHE INTERNAL "")
    set(W3NCO_4_Fortran_FLAGS " -O1 -byteswapio  " CACHE INTERNAL "")
    set(W3NCO_C_FLAGS " -O1 -D_REAL8_ -mp" CACHE INTERNAL "")
    set(WRFLIB_Fortran_FLAGS "-Minform=inform -O1 -byteswapio  -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(NDATE_Fortran_FLAGS "-DCOMMCODE -DLINUX -DUPPLITTLEENDIAN -O3 " CACHE INTERNAL "")
  
    if ( ${CMAKE_C_COMPILER_VERSION} VERSION_LESS 18.5 )
      set( NCDIAG_Fortran_FLAGS "-Mfree -DOLDPGI" CACHE INTERNAL "" )
    else()
      set( NCDIAG_Fortran_FLAGS "-Mfree" CACHE INTERNAL "" )
    endif()
  else()
    set(Fortran_FLAGS "" CACHE INTERNAL "")
    set(GSI_Fortran_FLAGS "-Minform=inform -g -traceback -byteswapio  -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(GSI_CFLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -g -traceback  -Dfunder" CACHE INTERNAL "" )
    set(ENKF_Fortran_FLAGS " -g -traceback -byteswapio -fast -DGFS -D_REAL8_ -mp" CACHE INTERNAL "")
    set(UTIL_Fortran_FLAGS " -g -traceback -byteswapio -fast -DWRF -D_REAL8_ -mp" CACHE INTERNAL "")
    set(UTIL_COM_Fortran_FLAGS " -g -traceback -byteswapio -fast" CACHE INTERNAL "")
  
    set(BUFR_Fortran_FLAGS "-g -traceback -byteswapio  -D_REAL8_ -mp -r8" CACHE INTERNAL "")
    set(BUFR_Fortran_PP_FLAGS " -P " CACHE INTERNAL "")
    set(BUFR_C_FLAGS " -g -traceback -DUNDERSCORE  -DDYNAMIC_ALLOCATION -DNFILES=32 -DMAXCD=250 -DMAXNC=600 -DMXNAF=3" CACHE INTERNAL "" )
  
    set(BACIO_C_INCLUDES " -I/usr/include/malloc" CACHE INTERNAL "")
    set(BACIO_Fortran_FLAGS " -g -traceback -byteswapio -fast -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(CRTM_Fortran_FLAGS " -g -traceback -byteswapio -module ../../include -Mfree " CACHE INTERNAL "")
    set(NEMSIO_Fortran_FLAGS " -g -traceback -byteswapio -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SIGIO_Fortran_FLAGS " -g -traceback -Mfree -byteswapio -fast -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SFCIO_Fortran_FLAGS " -g -traceback -byteswapio  -Mfree -fast -D_REAL8_ -mp" CACHE INTERNAL "")
    set(SP_Fortran_FLAGS " -g -traceback -byteswapio  -D_REAL8_ -mp -r8 " CACHE INTERNAL "")
    set(SP_Fortran_4_FLAGS " -g -traceback -byteswapio  -mp " CACHE INTERNAL "")
    set(SP_F77_4_FLAGS "-DLINUX -g -traceback -byteswapio  -mp " CACHE INTERNAL "")
    set(SP_F77_FLAGS "-DLINUX -g -traceback -byteswapio  -D_REAL8_ -mp -r8 " CACHE INTERNAL "")
    set(W3EMC_Fortran_FLAGS " -g -traceback -byteswapio  -D_REAL8_ -r8 " CACHE INTERNAL "")
    set(W3EMC_4_Fortran_FLAGS " -g -traceback -byteswapio  " CACHE INTERNAL "")
    set(W3NCO_Fortran_FLAGS " -g -traceback -byteswapio  -D_REAL8_ -r8 " CACHE INTERNAL "")
    set(W3NCO_4_Fortran_FLAGS " -g -traceback -byteswapio  " CACHE INTERNAL "")
    set(W3NCO_C_FLAGS " -g -traceback -D_REAL8_ -mp" CACHE INTERNAL "")
    set(WRFLIB_Fortran_FLAGS "-Minform=inform -g -traceback -byteswapio  -D_REAL8_ -mp -Mfree" CACHE INTERNAL "")
    set(NDATE_Fortran_FLAGS "-DCOMMCODE -DLINUX -DUPPLITTLEENDIAN -g -traceback " CACHE INTERNAL "")
  
    if ( ${CMAKE_C_COMPILER_VERSION} VERSION_LESS 18.5 )
      set( NCDIAG_Fortran_FLAGS "-Mfree -DOLDPGI" CACHE INTERNAL "" )
    else()
      set( NCDIAG_Fortran_FLAGS "-Mfree" CACHE INTERNAL "" )
    endif()
  endif( (BUILD_RELEASE) OR (BUILD_PRODUCTION) )
endfunction()
