#include "downloader/downloader.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

namespace {
    void registerType() {
        qmlRegisterType<Downloader>("Downloader", 1, 0, "Downloader");
    }
    Q_CONSTRUCTOR_FUNCTION(registerType)
}

int main(int argc, char *argv[])
{
    QGuiApplication application(argc, argv);

    QQmlApplicationEngine engine;

    Downloader downloader;

    engine.rootContext()->setContextProperty("downloader", &downloader);

    engine.load("qrc:qml/main.qml");

    return application.exec();
}
