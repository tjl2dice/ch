import Config

config :ch, Ch.ClickHouseRepo,
  adapter: ClickhouseEcto,
  loggers: [Ecto.LogEntry],
  hostname: "localhost",
  port: 8123,
  database: "dice",
  username: "default",
  password: "",
  timeout: 60_000,
  pool_timeout: 60_000,
  ownership_timeout: 60_000,
  pool_size: 30
