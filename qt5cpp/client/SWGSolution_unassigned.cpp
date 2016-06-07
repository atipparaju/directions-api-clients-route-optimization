
#include "SWGSolution_unassigned.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {


SWGSolution_unassigned::SWGSolution_unassigned(QString* json) {
    init();
    this->fromJson(*json);
}

SWGSolution_unassigned::SWGSolution_unassigned() {
    init();
}

SWGSolution_unassigned::~SWGSolution_unassigned() {
    this->cleanup();
}

void
SWGSolution_unassigned::init() {
    services = new QList<QString*>();
    shipments = new QList<QString*>();
    
}

void
SWGSolution_unassigned::cleanup() {
    if(services != NULL) {
        QList<QString*>* arr = services;
        foreach(QString* o, *arr) {
            delete o;
        }
        delete services;
    }
    if(shipments != NULL) {
        QList<QString*>* arr = shipments;
        foreach(QString* o, *arr) {
            delete o;
        }
        delete shipments;
    }
    
}

SWGSolution_unassigned*
SWGSolution_unassigned::fromJson(QString &json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGSolution_unassigned::fromJsonObject(QJsonObject &pJson) {
    setValue(&services, pJson["services"], "QList", "QString");
    setValue(&shipments, pJson["shipments"], "QList", "QString");
    
}

QString
SWGSolution_unassigned::asJson ()
{
    QJsonObject* obj = this->asJsonObject();
    
    QJsonDocument doc(*obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject*
SWGSolution_unassigned::asJsonObject() {
    QJsonObject* obj = new QJsonObject();
    
    
    QList<QString*>* servicesList = services;
    QJsonArray servicesJsonArray;
    toJsonArray((QList<void*>*)services, &servicesJsonArray, "services", "QString");

    obj->insert("services", servicesJsonArray);
    
    
    
    
    QList<QString*>* shipmentsList = shipments;
    QJsonArray shipmentsJsonArray;
    toJsonArray((QList<void*>*)shipments, &shipmentsJsonArray, "shipments", "QString");

    obj->insert("shipments", shipmentsJsonArray);
    
    
    

    return obj;
}

QList<QString*>*
SWGSolution_unassigned::getServices() {
    return services;
}
void
SWGSolution_unassigned::setServices(QList<QString*>* services) {
    this->services = services;
}

QList<QString*>*
SWGSolution_unassigned::getShipments() {
    return shipments;
}
void
SWGSolution_unassigned::setShipments(QList<QString*>* shipments) {
    this->shipments = shipments;
}



} /* namespace Swagger */

