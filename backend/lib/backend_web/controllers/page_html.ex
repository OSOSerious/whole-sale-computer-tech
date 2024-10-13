defmodule BackendWeb.PageHTML do
  use BackendWeb, :html

  def index(assigns) do
    ~H"""
    <h1>Welcome to the Backend API</h1>
    <p>This is the default page for the root path.</p>
    """
  end
end
