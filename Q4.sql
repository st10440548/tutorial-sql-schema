// Q.4.1: Create and switch to database clients_s123456
use clients_s123456

// Q.4.2 and Q.4.3: Insert clients into the "clients" collection
db.clients.insertMany([
  {
    ClientName: "Debbie",
    ClientSurname: "Theart",
    ClientDOB: ISODate("1980-03-17")
  },
  {
    ClientName: "Thomas",
    ClientSurname: "Duncan",
    ClientDOB: ISODate("1976-08-12")
  }
])

// Q.4.3: Get a list of all documents in the collection
db.clients.find().pretty()

// Q.4.4: Query clients born after 1979-01-12 (exclusive)
db.clients.find({
  ClientDOB: { $gt: ISODate("1979-01-12") }
}).pretty()
