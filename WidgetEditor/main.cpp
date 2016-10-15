#include <QtWidgets/QApplication>
#include <QtQml/QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setApplicationName("QML File Editor");
    app.setApplicationVersion("1.1.0");
    app.setOrganizationName("Ecohnoch(XCY)");
    app.setOrganizationDomain("www.github.com/ecohnoch");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
