Docker based environment for WordPress plugin development.

## Setup

```console
docker composer up --build -d
```

## Check WordPress Coding Standards
```console
docker exec -it wordpress-plugin-dev phpcs wp-content/plugins
```

Place plugins in the `/plugins` directory.
