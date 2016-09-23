# ExampleUmbrella

**TODO: Add description**

mix new example_umbrella --umbrella
update mix.exs with deps and styling: 3d86557
mix deps.get
mix credo # to lint, like rubocop
mix dialyzer.plt # make plt (persistent lookup table)
cd apps/
mix new example --sup # supervisor (supervision tree)
add deps to apps/example/mix.exs 459df4e
mix deps.get
