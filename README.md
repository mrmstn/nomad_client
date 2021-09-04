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
