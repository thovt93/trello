require IEx
defmodule Trello.BoardView do
  use Trello.Web, :view

  def render("index.json", %{owned_boards: owned_boards}) do
    %{owned_boards: owned_boards}
  end

  def render("show.json", %{board: board}) do
    board
  end

  def render("error.json", %{changeset: changeset}) do
    errors = Enum.map(changeset.errors, fn {field, detail} ->
      %{} |> Map.put(field, detail)
    end)
    %{ errors: errors }
  end

  def render("list.json", %{list: list}) do
    list
  end

  def render("lists.json", %{lists: lists}) do
    lists
  end

  def render("card.json", %{card: card}) do
    card
  end
end
