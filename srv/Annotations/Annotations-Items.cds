using { ProjectBTP as services } from '../Service';

annotate services.Items with {
    Id               @title : 'Id Item';
    IdH              @title : 'Id Header';
    Name             @title : 'Name';
    Description      @title : 'Description';
    RealiseDate      @title : 'Release Date';
    DiscontinuedDate @title : 'Discontinued Date';
    Price            @title : 'Price'; @Measures.ISOCurrency : 'Currency'
    Currency         @title : 'Currency' @Common.IsCurrency;
    Height           @title : 'Heigth' @Measures.Unit : UnitOfMesure;
    Width            @title : 'Width' @Measures.Unit : UnitOfMesure;
    Depth            @title : 'Depth' @Measures.Unit : UnitOfMesure;
    Quantity         @title : 'Quantity';
    UnitOfMesure     @title : 'Unit of measure' @Common.IsUnit;
};

annotate services.Items with @(
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Item',
        TypeNamePlural : 'Items',
        Title : {
            $Type : 'UI.DataField',
            Value : Name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : Id,
        },
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Items',
            Label : 'Items Information'
        },
    ],
        UI.FieldGroup #Items : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type : 'UI.DataField',
                    Value : Id
                },
                {
                    $Type : 'UI.DataField',
                    Value : IdH_Id
                },
                {
                    $Type : 'UI.DataField',
                    Value : Description
                },
                {
                    $Type : 'UI.DataField',
                    Value : RealiseDate
                },
                {
                    $Type : 'UI.DataField',
                    Value : DiscontinuedDate
                },
                {
                    $Type : 'UI.DataField',
                    Value : Price
                },
                {
                    $Type : 'UI.DataField',
                    Value : Height
                },
                {
                    $Type : 'UI.DataField',
                    Value : Width
                },
                {
                    $Type : 'UI.DataField',
                    Value : Depth
                },
                {
                    $Type : 'UI.DataField',
                    Value : Quantity
                },
                {
                    $Type : 'UI.DataField',
                    Value : UnitOfMesure
                },

            ],
        },

    UI.LineItem : [
        {
                    $Type : 'UI.DataField',
                    Value : Id
                },
                {
                    $Type : 'UI.DataField',
                    Value : IdH_Id
                },
                {
                    $Type : 'UI.DataField',
                    Value : Name
                },
                {
                    $Type : 'UI.DataField',
                    Value : Description
                },
                {
                    $Type : 'UI.DataField',
                    Value : RealiseDate
                },
                {
                    $Type : 'UI.DataField',
                    Value : DiscontinuedDate
                },
                {
                    $Type : 'UI.DataField',
                    Value : Price
                },
                {
                    $Type : 'UI.DataField',
                    Value : Height
                },
                {
                    $Type : 'UI.DataField',
                    Value : Width
                },
                {
                    $Type : 'UI.DataField',
                    Value : Depth
                },
                {
                    $Type : 'UI.DataField',
                    Value : Quantity
                },
                {
                    $Type : 'UI.DataField',
                    Value : UnitOfMesure
                },
    ]

);
