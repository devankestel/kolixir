defmodule KolixirTest do
  use ExUnit.Case
  doctest Kolixir

  test "greets the world" do
    assert Kolixir.hello() == :world
  end
end
