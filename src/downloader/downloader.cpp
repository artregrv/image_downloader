#include "downloader.h"

#include <QByteArray>
#include <QNetworkReply>
#include <QNetworkRequest>

Downloader::Downloader()
{
    connect(&_requestSender, &QNetworkAccessManager::finished,
            this, [this](QNetworkReply *reply) {
        QByteArray imageData = reply->readAll();
        reply->deleteLater();

        _image.loadFromData(imageData);
        _image.save(_savePath + "image.jpg");
    });
}

QString Downloader::imageUrl() const
{
    return _imageUrl;
}

void Downloader::setImageUrl(const QString &imageUrl)
{
    if (_imageUrl == imageUrl)
        return;

    _imageUrl = imageUrl;

    emit imageUrlChanged(_imageUrl);
}

QString Downloader::savePath() const
{
    return _savePath;
}

void Downloader::setSavePath(const QString &savePath)
{
    if (_savePath == savePath)
        return;

    _savePath = savePath;

    emit savePathChanged(_savePath);
}

void Downloader::download()
{
    QNetworkRequest request(_imageUrl);
    _requestSender.get(request);
}

