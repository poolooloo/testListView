#include <qglobal.h>
#if QT_VERSION >= 0x050000
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#else
#endif

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
