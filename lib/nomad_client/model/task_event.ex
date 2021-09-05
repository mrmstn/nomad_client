# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.TaskEvent do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Type,
    :Time,
    :DisplayMessage,
    :Details,
    :FailsTask,
    :RestartReason,
    :SetupError,
    :DriverError,
    :DriverMessage,
    :ExitCode,
    :Signal,
    :Message,
    :KillReason,
    :KillTimeout,
    :KillError,
    :StartDelay,
    :DownloadError,
    :ValidationError,
    :DiskLimit,
    :DiskSize,
    :FailedSibling,
    :VaultError,
    :TaskSignalReason,
    :TaskSignal,
    :GenericSource
  ]

  @type t :: %__MODULE__{
          :Type => String.t() | nil,
          :Time => integer() | nil,
          :DisplayMessage => String.t() | nil,
          :Details => %{optional(String.t()) => String.t()} | nil,
          :FailsTask => boolean() | nil,
          :RestartReason => String.t() | nil,
          :SetupError => String.t() | nil,
          :DriverError => String.t() | nil,
          :DriverMessage => String.t() | nil,
          :ExitCode => integer() | nil,
          :Signal => integer() | nil,
          :Message => String.t() | nil,
          :KillReason => String.t() | nil,
          :KillTimeout => integer() | nil,
          :KillError => String.t() | nil,
          :StartDelay => integer() | nil,
          :DownloadError => String.t() | nil,
          :ValidationError => String.t() | nil,
          :DiskLimit => integer() | nil,
          :DiskSize => integer() | nil,
          :FailedSibling => String.t() | nil,
          :VaultError => String.t() | nil,
          :TaskSignalReason => String.t() | nil,
          :TaskSignal => String.t() | nil,
          :GenericSource => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.TaskEvent do
  def decode(value, _options) do
    value
  end
end