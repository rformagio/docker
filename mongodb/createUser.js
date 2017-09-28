db = db.getSiblingDB('admin')

db.createUser(
  {
    user: "admin",
    pwd: "admin1234",
    roles: [ { role: "root", db: "admin" } ]
  }
)
