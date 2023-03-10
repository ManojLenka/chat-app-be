import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :server, ServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "OW+Pldl6HmJlGZYcqpuK5nLmCY1jo+pHgBaAP4A0x8dt9Gl29fCdzYNMFLacDE+k",
  server: false

# In test we don't send emails.
config :server, Server.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
