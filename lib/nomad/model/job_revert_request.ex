# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.JobRevertRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobID",
    :"JobVersion",
    :"EnforcePriorVersion",
    :"ConsulToken",
    :"VaultToken"
  ]

  @type t :: %__MODULE__{
    :"JobID" => String.t,
    :"JobVersion" => integer() | nil,
    :"EnforcePriorVersion" => integer() | nil,
    :"ConsulToken" => String.t | nil,
    :"VaultToken" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.JobRevertRequest do
  def decode(value, _options) do
    value
  end
end

