defmodule MotivationTest do
  use ExUnit.Case
  doctest Motivation

  test "greets the world" do
    assert Motivation.hello() == :world
  end
end
