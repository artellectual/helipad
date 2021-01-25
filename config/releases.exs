import Config

config :helipad, Helipad.Repo,
  # ssl: true,
  url: System.fetch_env!("DATABASE_URL")

config :helipad, :test
  value: System.fetch_env!("TEST")

config :helipad, HelipadWeb.Endpoint,
  http: [:inet6, port: 4000],
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE")
