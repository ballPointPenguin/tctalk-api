db.createUser(
  {
    user: "tctalk",
    pwd: "tctalk",
    roles: [
      {
        role: "readWrite",
        db: "tctalk"
      }
    ]
  }
)
