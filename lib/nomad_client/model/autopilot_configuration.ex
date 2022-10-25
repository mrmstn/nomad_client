# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.AutopilotConfiguration do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CleanupDeadServers,
    :CreateIndex,
    :DisableUpgradeMigration,
    :EnableCustomUpgrades,
    :EnableRedundancyZones,
    :LastContactThreshold,
    :MaxTrailingLogs,
    :MinQuorum,
    :ModifyIndex,
    :ServerStabilizationTime
  ]

  @type t :: %__MODULE__{
          :CleanupDeadServers => boolean() | nil,
          :CreateIndex => integer() | nil,
          :DisableUpgradeMigration => boolean() | nil,
          :EnableCustomUpgrades => boolean() | nil,
          :EnableRedundancyZones => boolean() | nil,
          :LastContactThreshold => String.t() | nil,
          :MaxTrailingLogs => integer() | nil,
          :MinQuorum => integer() | nil,
          :ModifyIndex => integer() | nil,
          :ServerStabilizationTime => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AutopilotConfiguration do
  def decode(value, _options) do
    value
  end
end
