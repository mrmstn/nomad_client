# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.AclToken do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :AccessorID,
    :CreateIndex,
    :CreateTime,
    :ExpirationTTL,
    :ExpirationTime,
    :Global,
    :ModifyIndex,
    :Name,
    :Policies,
    :Roles,
    :SecretID,
    :Type
  ]

  @type t :: %__MODULE__{
          :AccessorID => String.t() | nil,
          :CreateIndex => integer() | nil,
          :CreateTime => DateTime.t() | nil,
          :ExpirationTTL => integer() | nil,
          :ExpirationTime => DateTime.t() | nil,
          :Global => boolean() | nil,
          :ModifyIndex => integer() | nil,
          :Name => String.t() | nil,
          :Policies => [String.t()] | nil,
          :Roles => [NomadClient.Model.AclTokenRoleLink.t()] | nil,
          :SecretID => String.t() | nil,
          :Type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AclToken do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Roles, :list, NomadClient.Model.AclTokenRoleLink, options)
  end
end
