defmodule Tree do
  @moduledoc """
  Documentation for `Tree`.
  """

  @spec new(root_name :: String.t(), root_spec :: any(), root_child :: map()) :: map()
  def new(root_name \\ "root", root_spec \\ nil, root_child \\ nil) do
    %{
      root_name => {root_spec, root_child}
    }
  end

  def add(tree, parent_path, node_name, node_spec \\ nil, node_child \\nil ) do
    path_list = String.split(parent_path,".",trim: true)
    chk_path(tree,path_list)
  end

  defp chk_path(tree,[]) do
    true
  end
  defp chk_path(tree, [H | T]) when tree !== nil and is_map_key(tree,H) do
    {_, child} = Map.get(tree,H)
    chk_path(child,T)
  end
  defp chk_path(_tree, _path) do
   false
  end

end
