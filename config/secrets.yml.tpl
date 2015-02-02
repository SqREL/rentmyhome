# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure the secrets in this file are kept private
# if you're sharing your code publicly.

development:
  secret_key_base: ded58a22681842d1d4b60392b2ca10d68384574f54403ce2f1d274a1de3e70d04bd048ae890a82945550e843a99a73ca22b537378c4effeb58b23dc913896384

test:
  secret_key_base: 1b522fc4ea1e99696cc9827c2d0a09642f0c189a370fe012f729fa3fb265ca01d92d219dc3f5efda8d182c88a3f384b824b5323bce26066667f66d1cae5f5625

# Do not keep production secrets in the repository,
# instead read values from the environment.
production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
