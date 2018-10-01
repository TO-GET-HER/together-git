QT += core  
QT -= gui  

TARGET = opencv_test  
CONFIG += console  
CONFIG -= app_bundle  

INCLUDEPATH += /usr/local/include \  
                /usr/local/include/opencv \  
                /usr/local/include/opencv2  

LIBS += /usr/local/lib/libopencv_highgui.so \  
        /usr/local/lib/libopencv_core.so    \  
        /usr/local/lib/libopencv_imgproc.so \  
        /usr/local/lib/libopencv_imgcodecs.so  

TEMPLATE = app  

SOURCES += main.cpp 


LIBS+=/usr/local/lib/libopencv_shape.so
LIBS+=/usr/local/lib/libopencv_videoio.so

