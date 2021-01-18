defmodule Helipad.Repo do
  use Ecto.Repo,
    otp_app: :helipad,
    adapter: Ecto.Adapters.Postgres
end
