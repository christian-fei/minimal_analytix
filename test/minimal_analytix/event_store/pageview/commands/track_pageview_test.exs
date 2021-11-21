defmodule MinimalAnalytix.EventStore.Pageview.Commands.TrackPageviewTest do
  use ExUnit.Case, async: true

  alias MinimalAnalytix.EventStore.Pageview.Commands.TrackPageview

  # @valid_attrs [
  #   {:id,1}
  #   {:path,"/about"}
  #   {:domain,"cri.dev"}
  #   {:visitor,"some-visitor-34543"}
  #   {:occurred_at,~U(2021-11-20T19:45:00.000Z)}
  # ]
  # @invalid_attrs %{}

  test "construct with valid attributes" do
    command =
      TrackPageview.new(%{
        id: 1,
        path: "/about",
        domain: "cri.dev",
        visitor: "some-visitor-234tg",
        occurred_at: ~U(2021-11-20T19:45:00.000Z)
      })

    assert command
    # assert changeset.valid?
  end

  # test "changeset with invalid attributes" do
  #   changeset = Pageview.changeset(%Pageview{}, @invalid_attrs)
  #   refute changeset.valid?
  # end
end
