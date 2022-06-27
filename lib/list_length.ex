defmodule ListLength do
  def call(list) when is_list(list) do
    increment_count(list, 0)
  end

  defp increment_count([], count) when is_integer(count) do
    count + 0
  end

  defp increment_count([_head | tail], count) when is_integer(count) do
    increment_count(tail, count + 1)
  end
end
