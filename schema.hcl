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
table "blog_posts" {
  schema = schema.db1
  column "id" {
    null = false
    type = int
  }
  column "title" {
    null = true
    type = varchar(100)
  }
  column "body" {
    null = true
    type = text
  }
  column "author_id" {
    null = true
    type = int
  }
  primary_key {
    columns = [column.id]
  }
  foreign_key "author_fk" {
    columns     = [column.author_id]
    ref_columns = [table.users.column.id]
  }
}
schema "db1" {
  charset = "latin1"
  collate = "latin1_swedish_ci"
}