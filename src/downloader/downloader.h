#ifndef DOWNLOADER_H
#define DOWNLOADER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QPixmap>

class Downloader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString imageUrl READ imageUrl WRITE setImageUrl NOTIFY imageUrlChanged)
    Q_PROPERTY(QString savePath READ savePath WRITE setSavePath NOTIFY savePathChanged)

public:
    explicit Downloader();
    ~Downloader() = default;

    QString imageUrl() const;
    void setImageUrl(const QString &imageUrl);
    Q_SIGNAL void imageUrlChanged(const QString &imageUrl);

    QString savePath() const;
    void setSavePath(const QString &savePaht);
    Q_SIGNAL void savePathChanged(const QString &savePath);

    Q_INVOKABLE void download();

private:
    QNetworkAccessManager _requestSender;

    QPixmap _image;

    QString _imageUrl;
    QString _savePath;
};

#endif // qml/
