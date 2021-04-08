defmodule KolixirTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature
  doctest Kolixir

  import Wallaby.Query, only: [text_field: 1, button: 1, css: 2]


  test "greets the world" do
    assert Kolixir.hello() == :world
  end

  feature "users can login", %{session: session} do
    session
    |> visit("/")
    |> fill_in(text_field("loginname"), with: "MY_USERNAME")
    |> fill_in(text_field("password"), with: "MY_PASSWORD")
    |> click(button("Log In"))
  end

end
