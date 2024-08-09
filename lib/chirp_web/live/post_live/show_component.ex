defmodule ChirpWeb.PostLive.ShowComponent do
  use ChirpWeb, :live_component

  def render(assigns) do
    ~H"""
    <.list>
      <:item title="Username"><%= @post.username %></:item>

      <:item title="Body"><%= @post.body %></:item>

      <:item title="Likes count">
        <.link
          phx-click={JS.push("like", value: %{id: @post.id}) |> hide("##{@post.id}")}
          data-confirm="Are you sure?"
        >
          <.button><%= @post.likes_count %> likes</.button>
        </.link>
      </:item>

      <:item title="Reposts count"><%= @post.reposts_count %></:item>
    </.list>
    """
  end
end
