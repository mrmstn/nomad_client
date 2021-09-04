# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.DesiredUpdates do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Ignore,
    :Place,
    :Migrate,
    :Stop,
    :InPlaceUpdate,
    :DestructiveUpdate,
    :Canary,
    :Preemptions
  ]

  @type t :: %__MODULE__{
          :Ignore => integer() | nil,
          :Place => integer() | nil,
          :Migrate => integer() | nil,
          :Stop => integer() | nil,
          :InPlaceUpdate => integer() | nil,
          :DestructiveUpdate => integer() | nil,
          :Canary => integer() | nil,
          :Preemptions => integer() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.DesiredUpdates do
  def decode(value, _options) do
    value
  end
end
