table "users" {
  schema = schema.db1
  column "id" {
    null = false
    type = int
  }
  column "name" {
    null = true
    type = varchar(100)
  }
  primary_key {
    columns = [column.id]
  }
}
schema "db1" {
  charset = "latin1"
  collate = "latin1_swedish_ci"
}
