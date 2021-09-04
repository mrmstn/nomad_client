# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.JobEvaluateRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobID",
    :"EvalOptions"
  ]

  @type t :: %__MODULE__{
    :"JobID" => String.t,
    :"EvalOptions" => Nomad.Model.EvalOptions.t | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.JobEvaluateRequest do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"EvalOptions", :struct, Nomad.Model.EvalOptions, options)
  end
end

