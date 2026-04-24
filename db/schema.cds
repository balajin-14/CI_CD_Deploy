namespace com.db;

entity orders{
    key ID : Integer;
    orderNo : Integer;
    @assert.range
    status : String enum { SUCCESS; PENDING; FAILURE}
    customer : Association to customers;
}

entity customers{
    key ID : Integer;
    name : String;
    order : Composition of many orders on order.customer = $self;
}