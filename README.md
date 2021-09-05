# Nomad

A elixir client for HashiCorp Nomad's API.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

The package can be installed
by adding `nomad_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:nomad_client, "~> 0.10.0"}]
end
```

The Documentation can be found at [https://hexdocs.pm/nomad_client](https://hexdocs.pm/nomad_client).

## Development
### Regenerationg the client

You can basicly regenerate this client without the custom modifications by running the following command:
```shell
docker run \
    --rm \
    --mount "type=bind,src=$(pwd),dst=/local" \
    --user "$UID:$GID" \
    openapitools/openapi-generator-cli:v5.2.1 \
      generate \
      --generator-name elixir \
      --skip-validate-spec \
      --input-spec /local/openapi.json \
      --output /local/
```

This will spin up a docker container on your system and gernerates the whole elixir client based on the `openapi.json` definition.
Please note, the `openapi.json` file is also just e generated part of the https://github.com/mrmstn/Nomad.OAS Project.
I've just added this file to this repo for simplicity and documentation.

## Credits and Copyright

This client is based on a loooot of generated code which would not have been possible without the OAS definition of the nomad-api and the OAS client generator
### The OAS defintion
 - https://github.com/FuturistiCoder/Nomad.OAS
 - https://github.com/rivet-gg/Nomad.OAS

### The OAS Generator

If you like this client, take a look at the awesome openapi-generator:
 https://github.com/OpenAPITools/openapi-generator