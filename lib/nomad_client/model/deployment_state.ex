# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.DeploymentState do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :PlacedCanaries,
    :AutoRevert,
    :ProgressDeadline,
    :RequireProgressBy,
    :Promoted,
    :DesiredCanaries,
    :DesiredTotal,
    :PlacedAllocs,
    :HealthyAllocs,
    :UnhealthyAllocs
  ]

  @type t :: %__MODULE__{
          :PlacedCanaries => [String.t()] | nil,
          :AutoRevert => boolean() | nil,
          :ProgressDeadline => integer() | nil,
          :RequireProgressBy => DateTime.t() | nil,
          :Promoted => boolean() | nil,
          :DesiredCanaries => integer() | nil,
          :DesiredTotal => integer() | nil,
          :PlacedAllocs => integer() | nil,
          :HealthyAllocs => integer() | nil,
          :UnhealthyAllocs => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.DeploymentState do
  def decode(value, _options) do
    value
  end
end
