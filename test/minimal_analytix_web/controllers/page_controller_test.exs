defmodule MinimalAnalytixWeb.PageControllerTest do
  use MinimalAnalytixWeb.ConnCase

  test "GET / responds with 200 with dashboard", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "ok"
  end

  test "POST /api/pageview responds with 201 when valid", %{conn: conn} do
    conn = post(conn, "/api/pageview", %{domain: "cri.dev", path: "/about", visitor: "rtgt435gt"})

    assert json_response(conn, 201) =~ "ok"
  end
end
