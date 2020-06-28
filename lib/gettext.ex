use Croma

defmodule IelixirGear.Gettext do
  use Antikythera.Gettext, otp_app: :ielixir_gear

  defun put_locale(locale :: v[String.t]) :: nil do
    Gettext.put_locale(__MODULE__, locale)
  end
end
