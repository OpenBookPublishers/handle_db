# Handle Server Database
Postgres database of handles

## Instructions

Start a database instance:
`
docker run --name handle_db -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=handlesystem -e POSTGRES_USER=handleserver -d openbookpublishers/handle_db
`
