defmodule TreeTest do
  use ExUnit.Case
  doctest Tree

  test "create new tree with default root" do
    assert Tree.new() == %{"root" => {nil,nil}}
  end
  test "create new tree with spec root" do
    assert Tree.new("my root") == %{"my root" => {nil,nil}}
  end
  test "create new tree with spec root and value" do
    assert Tree.new("my root",{1,2,3}) == %{"my root" => {{1,2,3}, nil}}
  end
  test "create new tree with spec root and value and child" do
    assert Tree.new("my root",{1,2,3}, %{}) == %{"my root" => {{1,2,3}, %{}}}
  end
end
