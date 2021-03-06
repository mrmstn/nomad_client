# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.Template do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :SourcePath,
    :DestPath,
    :EmbeddedTmpl,
    :ChangeMode,
    :ChangeSignal,
    :Splay,
    :Perms,
    :LeftDelim,
    :RightDelim,
    :Envvars,
    :VaultGrace
  ]

  @type t :: %__MODULE__{
          :SourcePath => String.t() | nil,
          :DestPath => String.t() | nil,
          :EmbeddedTmpl => String.t() | nil,
          :ChangeMode => String.t() | nil,
          :ChangeSignal => String.t() | nil,
          :Splay => integer() | nil,
          :Perms => String.t() | nil,
          :LeftDelim => String.t() | nil,
          :RightDelim => String.t() | nil,
          :Envvars => boolean() | nil,
          :VaultGrace => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Template do
  def decode(value, _options) do
    value
  end
end
