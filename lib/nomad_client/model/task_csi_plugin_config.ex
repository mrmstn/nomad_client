# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.TaskCsiPluginConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Type,
    :MountDir
  ]

  @type t :: %__MODULE__{
          :ID => String.t() | nil,
          :Type => String.t() | nil,
          :MountDir => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.TaskCsiPluginConfig do
  def decode(value, _options) do
    value
  end
end
