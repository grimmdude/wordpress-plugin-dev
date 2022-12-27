Docker based environment for WordPress plugin development.

## Setup

```console
docker composer up --build -d
docker exec -it wordpress-plugin-dev composer run phpcs
```

Place plugins in the `/plugins` directory.
