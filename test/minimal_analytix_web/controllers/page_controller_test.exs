defmodule MinimalAnalytixWeb.PageControllerTest do
  use MinimalAnalytixWeb.ConnCase
  use MinimalAnalytix.RepoCase

  setup do
    MinimalAnalytix.Repo.all(MinimalAnalytix.Analytics.Pageview)
    |> Enum.map(&MinimalAnalytix.Repo.delete!(&1))

    :ok
  end

  test "GET / responds with 200 with dashboard", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "ok"
  end

  test "POST /api/pageview responds with 201 when valid", %{conn: conn} do
    conn =
      post(conn, "/api/pageview", %{
        domain: "cri.dev",
        path: "/about",
        visitor: "rtgt435gt",
        occurred_at: "2021-11-20T19:45:00.000Z"
      })

    assert json_response(conn, 201) == %{
             "domain" => "cri.dev",
             "id" => 1,
             "path" => "/about",
             "visitor" => "rtgt435gt",
             "occurred_at" => "2021-11-20T19:45:00Z"
           }
  end
end
