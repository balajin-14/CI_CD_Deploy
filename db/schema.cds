namespace com.db;

entity orders{
    key ID : Integer;
    orderNo : Integer;
    @assert.range
    status : String enum { SUCCESS; PENDING; FAILURE}
}