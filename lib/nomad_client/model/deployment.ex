# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.Deployment do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Namespace,
    :JobID,
    :JobVersion,
    :JobModifyIndex,
    :JobSpecModifyIndex,
    :JobCreateIndex,
    :TaskGroups,
    :Status,
    :StatusDescription,
    :CreateIndex,
    :ModifyIndex
  ]

  @type t :: %__MODULE__{
          :ID => String.t() | nil,
          :Namespace => String.t() | nil,
          :JobID => String.t() | nil,
          :JobVersion => integer() | nil,
          :JobModifyIndex => integer() | nil,
          :JobSpecModifyIndex => integer() | nil,
          :JobCreateIndex => integer() | nil,
          :TaskGroups => %{optional(String.t()) => NomadClient.Model.DeploymentState.t()} | nil,
          :Status => String.t() | nil,
          :StatusDescription => String.t() | nil,
          :CreateIndex => integer() | nil,
          :ModifyIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Deployment do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:TaskGroups, :map, NomadClient.Model.DeploymentState, options)
  end
end
