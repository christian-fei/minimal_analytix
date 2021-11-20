# MinimalAnalytix

## Setup

Install dependencies with `mix deps.get`

Start postgres, e.g. with docker: 

```sh
docker run -v $PWD/data:/var/lib/postgresql/data --rm --name postgres-db -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres
```

*The `-v $PWD/data:/var/lib/postgresql/data` flag will create a persistent `data` folder.*

Create and migrate your database with `mix ecto.setup`

Run `event_store.setup` to initialize the eventstore.

Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


# More

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
