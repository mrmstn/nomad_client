# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.ConsulConnect do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Gateway,
    :Native,
    :SidecarService,
    :SidecarTask
  ]

  @type t :: %__MODULE__{
          :Gateway => NomadClient.Model.ConsulGateway.t() | nil,
          :Native => boolean() | nil,
          :SidecarService => NomadClient.Model.ConsulSidecarService.t() | nil,
          :SidecarTask => NomadClient.Model.SidecarTask.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulConnect do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Gateway, :struct, NomadClient.Model.ConsulGateway, options)
    |> deserialize(:SidecarService, :struct, NomadClient.Model.ConsulSidecarService, options)
    |> deserialize(:SidecarTask, :struct, NomadClient.Model.SidecarTask, options)
  end
end
