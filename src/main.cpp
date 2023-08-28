#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication application(argc, argv);

    QQmlApplicationEngine engine;
    engine.load("qrc:main.qml");

    return application.exec();
}
