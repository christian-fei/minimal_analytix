defmodule MinimalAnalytix.Analytics.PageviewTest do
  use ExUnit.Case, async: true

  alias MinimalAnalytix.Analytics.Pageview

  @valid_attrs %{
    path: "/about",
    domain: "cri.dev",
    visitor: "some-visitor-34543",
    occurred_at: ~U(2021-11-20T19:45:00.000Z)
  }
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Pageview.changeset(%Pageview{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Pageview.changeset(%Pageview{}, @invalid_attrs)
    refute changeset.valid?
  end
end
