using { ProjectBTP as services } from '../Service';

annotate services.OrdersStatus with {
    code @title : 'Order Status' @Common : { 
        Text : name,
        TextArrangement : #TextOnly,
     };
};
