defmodule MinimalAnalytixWeb.PageControllerTest do
  use MinimalAnalytixWeb.ConnCase

  test "POST /pageview responds with 201 when valid", %{conn: conn} do
    conn = post(conn, "/")
    assert json_response(conn, 201) =~ "ok"
  end
end
