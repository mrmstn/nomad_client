# Nomad

A elixir client for HashiCorp Nomad's API.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `nomad_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:nomad_client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/nomad_client](https://hexdocs.pm/nomad_client).

## Credits and Copyright

This client is based on a loooot of generated code which would not have been possible without the OAS definition of the nomad-api and the OAS client generator
### The OAS defintion
 - https://github.com/FuturistiCoder/Nomad.OAS
 - https://github.com/rivet-gg/Nomad.OAS

### The OAS Generator

If you like this client, take a look at the awesome openapi-generator:
 https://github.com/OpenAPITools/openapi-generator