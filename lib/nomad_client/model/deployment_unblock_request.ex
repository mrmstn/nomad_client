# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.DeploymentUnblockRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DeploymentID,
    :Namespace,
    :Region,
    :SecretID
  ]

  @type t :: %__MODULE__{
          :DeploymentID => String.t() | nil,
          :Namespace => String.t() | nil,
          :Region => String.t() | nil,
          :SecretID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.DeploymentUnblockRequest do
  def decode(value, _options) do
    value
  end
end
