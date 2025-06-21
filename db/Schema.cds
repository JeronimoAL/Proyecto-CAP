namespace Project_BTP;

using { 
    sap.common.CodeList,
    sap.common.Currencies
 } from '@sap/cds/common';


entity Headers {
    key Id : String(36);
    Email : String(30);
    Firstname : String(30);
    Lastname : String(30);
    Country : String(30);
    CreateOn : Date;
    DeliveryDate : DateTime;
    OrderStatus : Association to OrdersStatus;
    ImageUrl : String(256);
    detailHeaders : Association to many Items
                on detailHeaders.IdH = $self; 
    ToItems : Composition of many Items 
    on ToItems.IdH = $self;
}

entity Items {
    key Id : String(36);
    Name : String(40);
    Description : String(40);
    RealiseDate : Date;
    DiscontinuedDate : Date;
    Price : Decimal(12, 2);
    Currency : Association to Currencies;
    Height : Decimal(15, 3);
    Width : Decimal(13, 3);
    Depth : Decimal(12, 2);
    Quantity : Decimal(16, 2);
    UnitOfMesure : String(5) default 'CM'; 
    IdH : Association to Headers;
}

entity OrdersStatus : CodeList{
    key code : String(10) enum{
        Canceled = 'Canceled';
        Open = 'Open';
        Completed = 'Completed';
    };
    Criticality : Integer;
}
