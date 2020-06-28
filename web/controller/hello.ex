defmodule IelixirGear.Controller.Hello do
  use Antikythera.Controller

  def hello(conn) do
    IelixirGear.Gettext.put_locale(conn.request.query_params["locale"] || "en")
    Conn.render(conn, 200, "hello", [gear_name: :ielixir_gear])
  end
end
