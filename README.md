Docker based environment for WordPress plugin development.

## Setup

```console
docker compose up --build -d
```

Access WordPress from your browser at http://localhost:8000

## Check WordPress Coding Standards
```console
docker exec -it wordpress-plugin-dev phpcs wp-content/plugins
```

Can target specific standards by using the `--standard=` flag.

```console
docker exec -it wordpress-plugin-dev phpcs --standard=WordPress-Extra wp-content/plugins
```

Place plugins in the `/plugins` directory.
