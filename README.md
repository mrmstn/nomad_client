# Nomad

A elixir client for HashiCorp Nomad's API.

### Building

To install the required dependencies and to build the elixir project, run:
```shell
mix local.hex --force
mix do deps.get, compile
```

## Installation

The package can be installed
by adding `nomad_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:nomad_client, "~> 0.13.0"}]
end
```

The Documentation can be found at [https://hexdocs.pm/nomad_client](https://hexdocs.pm/nomad_client).

## Usage

First, you have to initiate the `Tesla.Env.Conn`.
```elixir
# Use Application defaults
conn = NomadClient.Connection.new()
# Differente URL, no ACL token
conn = NomadClient.Connection.new("http://172.17.0.1:4646")
# Custom URL with ACL token
conn = NomadClient.Connection.new("http://172.17.0.1:4646", "00000000-0000-0000-0000-000000000000")
```

After that, you can use your `conn` to make requests the api requests by using the API Modules.

For example:
```elixir
alias NomadClient.Connection
alias NomadClient.Api.Jobs

conn = Connection.new()
{:ok, []} = Jobs.get_jobs(conn)
```

### Configuration

You can chance the default http adapter or inject additional middleware into the client.
Since the client does not provides his own application instruction, the configuration has to be made via the `:tesla` application

For example: (config.exs)
```elixir
config :tesla, NomadClient.Connection,
  adapter: {Tesla.Adapter.Hackney, [recv_timeout: 150_000, connect_timeout: 150_000]},
  middleware: [Tesla.Middleware.Logger]
```

## Development

### Regenerationg the client

You can basicly regenerate this client without the custom modifications by running the following command:
```shell
docker run \
    --rm \
    --mount "type=bind,src=$(pwd),dst=/local" \
    --user "$UID:$GID" \
    openapitools/openapi-generator-cli:v6.2.0 \
      generate \
      --invoker-package NomadClient \
      --generator-name elixir \
      --skip-validate-spec \
      --input-spec /local/openapi.yaml \
      --output /local/
```

This will spin up a docker container on your system and gernerates the whole elixir client based on the official `openapi.yaml` definition.

## Credits and Copyright

This client is based on a loooot of generated code which would not have been possible without the OAS definition of the nomad-api and the OAS client generator
### The official OAS Spec from HashiCorp
 - https://raw.githubusercontent.com/hashicorp/nomad-openapi/main/v1/openapi.yaml

### The OAS Generator

If you like this client, take a look at the awesome openapi-generator:
 https://github.com/OpenAPITools/openapi-generator