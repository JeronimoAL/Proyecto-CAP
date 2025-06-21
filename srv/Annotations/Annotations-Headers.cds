using { ProjectBTP as services } from '../Service';

using from './Annotations-Items';


annotate services.Headers with{
    Id @title: 'ID';
    Email @title: 'Email';
    Firstname @title: 'Firstname';
    Lastname @title: 'Lastname';
    Country @title: 'Country';
    CreateOn @title: 'Create on';
    DeliveryDate@title: 'Delivery date';
    OrderStatus @title: 'Order status';
    ImageUrl @title: 'Image' @UI.IsImageURL
}

annotate services.Headers with @(
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sale Order',
        TypeNamePlural : 'Sale Orders',
        ImageUrl : ImageUrl
    },

    UI.SelectionFields : [
        Id,
        Email,
        Firstname,
        CreateOn,
        OrderStatus_code
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Id
        },
        {
            $Type : 'UI.DataField',
            Value : Email
        },
        {
            $Type : 'UI.DataField',
            Value : Firstname
        },
        {
            $Type : 'UI.DataField',
            Value : Lastname
        },
        {
            $Type : 'UI.DataField',
            Value : Country
        },
        {
            $Type : 'UI.DataField',
            Value : CreateOn
        },
        {
            $Type : 'UI.DataField',
            Value : DeliveryDate
        },
        {
            $Type : 'UI.DataField',
            Value : OrderStatus_code,
            Criticality : OrderStatus.Criticality
        },
        {
            $Type : 'UI.DataField',
            Value : ImageUrl
        }
    ],

    UI.FieldGroup #HeaderInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Value : Email
        },
        {
            $Type : 'UI.DataField',
            Value : Firstname
        },
        {
            $Type : 'UI.DataField',
            Value : Lastname
        },
        {
            $Type : 'UI.DataField',
            Value : Country
        },
        ],
    },

    UI.FieldGroup #HeaderInfo2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Value : CreateOn
        },
        {
            $Type : 'UI.DataField',
            Value : DeliveryDate
        },
        {
            $Type : 'UI.DataField',
            Value : OrderStatus_code,
            Criticality : OrderStatus.Criticality
        },
        {
            $Type : 'UI.DataField',
            Value : ImageUrl
        }
        ],
    },

    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#HeaderInfo',
            Label : 'General Information'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#HeaderInfo2',
            Label : 'Tecnical Information'
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : 'ToItems/@UI.LineItem',
            Label : 'Items'
        }
    ]
) ;

annotate services.Headers with {
      OrderStatus @Common: {
        Text : OrderStatus.name,
        TextArrangement : #TextOnly,
      }
};
