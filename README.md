# ExampleUmbrella

**TODO: Add description**

mix new example_umbrella --umbrella
update mix.exs with deps and styling: 3d86557

mix deps.get
mix credo # to lint, like rubocop
mix dialyzer.plt # make plt (persistent lookup table)
cd apps/
mix new example --sup # supervisor (supervision tree)
add deps to apps/example/mix.exs 434f974
mix deps.get
mix ecto.create
MIX_ENV=test mix ecto.create

mix phoenix.new example_web --no-ecto --no-brunch
phoenix config and deps, remove extraneous frontend resources 5569f45
mix phoenix.server # ctrl \ to quit
