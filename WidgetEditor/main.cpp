#include <QtWidgets/QApplication>
#include <QtQml/QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setApplicationName("QML Particle Editor");
    app.setApplicationVersion("1.1.0");
    app.setOrganizationName("wearyinside");
    app.setOrganizationDomain("com.wearyinside.qmlparticleeditor");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
