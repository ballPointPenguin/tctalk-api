// Copy this file for higher environments, e.g. init-mongo-prod.js and init-mongo-stage.js
// Replace the pwd field with the respective mongo db password

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
