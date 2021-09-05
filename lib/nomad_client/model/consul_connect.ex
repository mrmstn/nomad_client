# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.ConsulConnect do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Native,
    :SidecarService,
    :SidecarTask
  ]

  @type t :: %__MODULE__{
          :Native => boolean() | nil,
          :SidecarService => NomadClient.Model.ConsulSidecarService.t() | nil,
          :SidecarTask => NomadClient.Model.SidecarTask.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulConnect do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:SidecarService, :struct, NomadClient.Model.ConsulSidecarService, options)
    |> deserialize(:SidecarTask, :struct, NomadClient.Model.SidecarTask, options)
  end
end
