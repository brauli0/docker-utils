# Don't install postgres, use docker

Use docker to set up a database, in this case: postgres.

## How-to

```bash
mkdir -p $HOME/docker/volumes/postgres
sudo docker run --rm -e POSTGRES_PASSWORD=docker -d -p 9876:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres
sudo psql -h localhost -U postgres -d postgres -p 9876
```