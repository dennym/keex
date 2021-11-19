defmodule KeexTest do
  use ExUnit.Case
  doctest Keex

  test "greets the world" do
    assert Keex.hello() == :world
  end
end
