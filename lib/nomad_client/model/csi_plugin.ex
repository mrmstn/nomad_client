# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.CsiPlugin do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Provider,
    :Version,
    :ControllerRequired,
    :Controllers,
    :Nodes,
    :Allocations,
    :ControllersHealthy,
    :NodesHealthy,
    :CreateIndex,
    :ModifyIndex
  ]

  @type t :: %__MODULE__{
          :ID => String.t() | nil,
          :Provider => String.t() | nil,
          :Version => String.t() | nil,
          :ControllerRequired => boolean() | nil,
          :Controllers => %{optional(String.t()) => NomadClient.Model.CsiInfo.t()} | nil,
          :Nodes => %{optional(String.t()) => NomadClient.Model.CsiInfo.t()} | nil,
          :Allocations => [NomadClient.Model.AllocationListStub.t()] | nil,
          :ControllersHealthy => integer() | nil,
          :NodesHealthy => integer() | nil,
          :CreateIndex => integer() | nil,
          :ModifyIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiPlugin do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Controllers, :map, NomadClient.Model.CsiInfo, options)
    |> deserialize(:Nodes, :map, NomadClient.Model.CsiInfo, options)
    |> deserialize(:Allocations, :list, NomadClient.Model.AllocationListStub, options)
  end
end
