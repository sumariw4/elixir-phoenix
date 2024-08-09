defmodule ChirpWeb.PostLive.Like do
  use ChirpWeb, :live_view

  alias Chirp.Timeline

  @impl true
  def handle_event("like", %{"id" => id}, socket) do
    post = Timeline.get_post!(id)
    {:ok, _} = Timeline.like_post(post)

    {:noreply,
      socket
      |> assign(:post, post)}
  end

end
