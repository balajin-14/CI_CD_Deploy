using { com.db as db } from '../db/schema';

service MyService {
    entity orders as projection on db.orders;
    entity customers as projection on db.customers;
}
