# Handle Server Database
Postgres database of handles

## Instructions

Start a database instance:
`
docker run --name handle_db -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=handlesystem -e POSTGRES_USER=handleserver -d openbookpublishers/handle_db
`

Then at the handle server ([openbookpublishers/handle_server][1]) you must add the following subsection to the server config section within `config.dct`:

```
  "storage_type" = "sql"
  "sql_settings" = {
    "sql_url" = "jdbc:postgresql://handle_db/handlesystem"
    "sql_driver" = "org.postgresql.Driver"
    "sql_login" = "handleserver"
    "sql_passwd" = "mysecretpassword"
    "sql_read_only" = "no"
  }
```

[1]: https://github.com/OpenBookPublishers/handle_server "Handle server repo"
