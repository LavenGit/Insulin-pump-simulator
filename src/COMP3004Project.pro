QT += core gui widgets charts

CONFIG += c++11

SOURCES += \
    batterymanager.cpp \
    boluscalculator.cpp \
    bolusmenu.cpp \
    config.cpp \
    glucosemonitoring.cpp \
    historylogger.cpp \
    main.cpp \
    mainwindow.cpp \
    optionsmenu.cpp \
    personalprofiles.cpp \
    timedSettingsUtils.cpp \
    timedsettingsprofiles.cpp

HEADERS += \
    batterymanager.h \
    boluscalculator.h \
    bolusmenu.h \
    BolusInfo.h \
    config.h \
    glucosemonitoring.h \
    historylogger.h \
    mainwindow.h \
    optionsmenu.h \
    personalprofiles.h \
    profile.h \
    timedSettingsUtils.h \
    timedsettingsprofiles.h \
    timeProfile.h

FORMS += \
    bolusmenu.ui \
    mainwindow.ui \
    optionsmenu.ui \
    personalprofiles.ui \
    timedsettingsprofiles.ui

RESOURCES += \
    ui_icons.qrc \
    ui_icons/resources.qrc

# Deployment
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

