# ahhh_joh

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. Login // done
2. Two label options // done
3. Postcode check in Ecwid // done
4. Paper/print option: label
5. Sound  when an order is placed //
6. Track and Trace // done
7. One line: pick-op or send by post nl
8. Comments visible // done
9. Print invoice

If I press shipped will the customer get an email that it is “verzonden”?
I want the customer to get an email that the package is on its way (verzonden)

// Tracking Json
{
    "CompleteStatus": {
        "Shipment": {
            "MainBarcode": "3SNYQJ383356360",
            "Barcode": "3SNYQJ383356360",
            "ShipmentAmount": "1",
            "ShipmentCounter": "1",
            "Customer": {
                "CustomerCode": "NYQJ",
                "CustomerNumber": {},
                "Name": {}
            },
            "ProductCode": "002928",
            "ProductDescription": "Brievenbuspakje+ ptp",
            "Reference": {},
            "Dimension": {
                "Height": {},
                "Length": {},
                "Volume": {},
                "Weight": {},
                "Width": {}
            },
            "Address": [
                {
                    "AddressType": "01",
                    "Building": {},
                    "City": "Eindhoven",
                    "CompanyName": {},
                    "CountryCode": "NL",
                    "DepartmentName": {},
                    "District": {},
                    "FirstName": "Afran Bressers",
                    "Floor": {},
                    "HouseNumber": "50",
                    "HouseNumberSuffix": "-18",
                    "LastName": {},
                    "Region": {},
                    "Remark": {},
                    "Street": "Torenallee",
                    "Zipcode": "5617BD"
                },
                {
                    "AddressType": "02",
                    "Building": {},
                    "City": "Hoek van Holland",
                    "CompanyName": "AHHH JOH",
                    "CountryCode": "NL",
                    "DepartmentName": {},
                    "District": {},
                    "FirstName": {},
                    "Floor": {},
                    "HouseNumber": "161",
                    "HouseNumberSuffix": {},
                    "LastName": {},
                    "Region": {},
                    "Remark": {},
                    "Street": "Tasmanweg",
                    "Zipcode": "3151PN"
                }
            ],
            "Event": [
                {
                    "Code": "B01",
                    "Description": "Zending is ontvangen door PostNL",
                    "DestinationLocationCode": {},
                    "LocationCode": "160848",
                    "RouteCode": {},
                    "RouteName": {},
                    "TimeStamp": "13-10-2020 13:56:26"
                },
                {
                    "Code": "A01",
                    "Description": "Zending wordt verwacht, nog niet bij PostNL",
                    "DestinationLocationCode": {},
                    "LocationCode": "888888",
                    "RouteCode": {},
                    "RouteName": {},
                    "TimeStamp": "12-10-2020 10:57:31"
                }
            ],
            "Status": {
                "TimeStamp": "13-10-2020 13:56:26",
                "StatusCode": "2",
                "StatusDescription": "Zending in ontvangst genomen",
                "PhaseCode": "1",
                "PhaseDescription": "Collectie"
            },
            "OldStatus": [
                {
                    "TimeStamp": "13-10-2020 13:56:26",
                    "StatusCode": "2",
                    "StatusDescription": "Zending in ontvangst genomen",
                    "PhaseCode": "1",
                    "PhaseDescription": "Collectie"
                },
                {
                    "TimeStamp": "12-10-2020 10:59:26",
                    "StatusCode": "99",
                    "StatusDescription": "Niet van toepassing",
                    "PhaseCode": "99",
                    "PhaseDescription": "Niet van toepassing"
                },
                {
                    "TimeStamp": "12-10-2020 10:57:31",
                    "StatusCode": "1",
                    "StatusDescription": "Zending voorgemeld",
                    "PhaseCode": "1",
                    "PhaseDescription": "Collectie"
                }
            ]
        }
    }
}