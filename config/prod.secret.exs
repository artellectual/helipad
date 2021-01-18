# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

config :helipad, Helipad.Repo,
  # ssl: true,
  url: "${DATABASE_URL}"

config :helipad, HelipadWeb.Endpoint,
  http: [:inet6, port: 4000],
  secret_key_base: "${SECRET_KEY_BASE}"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :helipad, HelipadWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
