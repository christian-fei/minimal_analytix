import Config

# Configure your database
config :minimal_analytix, MinimalAnalytix.Repo,
  username: "postgres",
  password: "postgres",
  database: "minimal_analytix_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :minimal_analytix, MinimalAnalytix.EventStore,
  # serializer: EventStore.JsonSerializer,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "postgres",
  password: "postgres",
  database: "eventstore",
  hostname: "localhost",
  pool_size: 10,
  queue_target: 50,
  queue_interval: 1_000,
  schema: "event_store"

config :minimal_analytix, event_stores: [MinimalAnalytix.EventStore]

config :minimal_analytix, MinimalAnalytixWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "dbsDAoPF/bf+GDFlex89a1bE2e+mxAXZcis+SbDXHoIjZgFIlNgfg3u5Xyf6Wh+q",
  watchers: [
    # Start the esbuild watcher by calling Esbuild.install_and_run(:default, args)
    esbuild: {Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)]}
  ]

config :minimal_analytix, MinimalAnalytixWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"lib/minimal_analytix_web/(live|views)/.*(ex)$",
      ~r"lib/minimal_analytix_web/templates/.*(eex)$"
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime
