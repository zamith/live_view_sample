defmodule SampleWeb.Pages.DarkmodeLive do
  use SampleWeb, :live_view

  alias Surface.Components.Form.{
    Checkbox,
    Label
  }

  data(darkmode, :boolean, default: false)

  def handle_event("toggle-modes", _params, %{assigns: %{darkmode: darkmode}} = socket) do
    {:noreply, assign(socket, darkmode: !darkmode)}
  end
end
