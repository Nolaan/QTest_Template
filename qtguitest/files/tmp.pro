TEMPLATE = subdirs

@if "%{BuildTests}" == "always"
SUBDIRS += src \
           tests
CONFIG +=ordered
@else
SUBDIRS += src

CONFIG(debug, debug|release) {
    SUBDIRS += tests
}
@endif
