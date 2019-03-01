######################################################################
# Automatically generated by qmake (3.0) ?? ?? 9 09:55:36 2018
######################################################################

TEMPLATE = lib
TARGET = QMultiThreadNetwork
QT += core network
INCLUDEPATH += . \
            $$PWD/inc \
            $$PWD/../log4cplus/include

DEFINES += UNICODE QMT_NETWORK_LIB
staticlib: DEFINES += QMT_NETWORK_STATIC

# Input
HEADERS += $$PWD/inc/ClassMemoryTracer.h \
           $$PWD/inc/Log4cplusWrapper.h \
           $$PWD/inc/network_global.h \
           $$PWD/inc/networkdef.h \
           $$PWD/inc/networkmanager.h \
           $$PWD/inc/networkreply.h \
           networkrequest.h \
           networkmtdownloadrequest.h \
           networkdownloadrequest.h \
           networkuploadrequest.h \
           networkcommonrequest.h \
           networkrunnable.h

SOURCES += dllmain.cpp \
           networkrequest.cpp \
           networkcommonrequest.cpp \
           networkdownloadrequest.cpp \
           networkmtdownloadrequest.cpp \
           networkuploadrequest.cpp \
           networkrunnable.cpp \
           networkreply.cpp \
           networkmanager.cpp \
           ClassMemoryTracer.cpp

CONFIG(debug, debug|release) {
        TARGET = $$join(TARGET,,,d)
        DESTDIR = $$PWD/../bin/Debug
	LIBPATH += $$PWD/../lib/Debug
        LIBPATH += $$PWD/../log4cplus/lib
        LIBS += -llog4cplusd

} else {
        DEFINES += NDEBUG
        DESTDIR = $$PWD/../bin/Release
	LIBPATH += $$PWD/../lib/Release
        LIBPATH += $$PWD/../log4cplus/lib
        LIBS += -llog4cplus
}

win32 {
    DEFINES += WIN32 WIN64
    LIBS += -lkernel32 \
            -luser32 \
            -lgdi32 \
            -lwinspool \
            -lcomdlg32 \
            -ladvapi32 \
            -lshell32 \
            -lole32 \
            -loleaut32
}

!rc_file {
    ##RC_ICONS = QtMultiThreadNetwork.ico
    QMAKE_TARGET_COMPANY = ""
    QMAKE_TARGET_DESCRIPTION = "Qt Multi-Threaded Network framework."
    QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2015-2019 vilas wang, vilas900420@gmail.com"
    QMAKE_TARGET_PRODUCT = "QtMultiThreadNetwork"
}
