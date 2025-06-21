using { ProjectBTP as services } from '../Service';

annotate services.Headers with{
    Id @title: 'ID';
    Email @title: 'Email';
    Firstname @title: 'Firstname';
    Lastname @title: 'Lastname';
    Country @title: 'Country';
    CreateOn @title: 'Create on';
    DeliveryDate@title: 'Delivery date';
    OrderStatus @title: 'Order status';
    ImageUrl @title: 'Image';
}

annotate services.Headers with @(
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sale order',
        TypeNamePlural : 'Sales orders'
    },

    UI.SelectionFields: [
        ID,
        Email,
        Firstname,
        Create on,
        OrderStatus_code,
    ],
) ;


