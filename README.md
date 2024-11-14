# docker-streak-stats

Dockerization of [Github Readme Streak Stats](https://git.io/streak-stats)

Run in a container according to the [CONTRIBUTING.md](https://github.com/DenverCoder1/github-readme-streak-stats/blob/main/CONTRIBUTING.md).

## Synopsis

1. Fill in the `TOKEN` in the `.env.example` file and rename it to `.env`. See [here](https://github.com/DenverCoder1/github-readme-streak-stats/blob/main/CONTRIBUTING.md#authorization) for the detail.
2. `docker compose build`
3. `docker compose up -d`
4. The service is up and running at http://localhost:9300 on the docker host.
