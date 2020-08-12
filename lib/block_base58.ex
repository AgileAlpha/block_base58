defmodule BlockBase58 do
  defdelegate encode(data, hash \\ ""), to: BlockBase58.Encoder
  defdelegate decode(data), to: BlockBase58.Encoder

  defdelegate encode_check(data, prefix), to: BlockBase58.Check
  defdelegate decode_check(data, length \\ 25), to: BlockBase58.Check
end
