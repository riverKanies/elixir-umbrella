# ExampleUmbrella

### Tutorial
View commits referenced in this file to see what specific changes need to be made


* `mix new example_umbrella --umbrella`
- update mix.exs with deps and styling: 3d86557
* `mix deps.get`
* `mix credo` # to lint, like rubocop, not yet config'd
* `mix dialyzer.plt` # make plt (persistent lookup table)
* `cd apps/`
* `mix new example --sup` # supervisor (supervision tree)
- add deps to apps/example/mix.exs 434f974
* `mix deps.get`
* `mix ecto.create`
* `MIX_ENV=test mix ecto.create`
* `mix phoenix.new example_web --no-ecto --no-brunch`
- phoenix config and deps, remove extraneous frontend resources 5569f45
* `mix phoenix.server` # ctrl \ to quit
- clean and make heroku ready: 53d7577


### Heroku:
* create a new app
* connect to your github repo
* set config vars (see .env.sample)
* set this as the buildpack: https://github.com/HashNuke/heroku-buildpack-elixir.git
* provision a heroku|postgres db
* deploy!!!
