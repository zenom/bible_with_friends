defmodule BibleWithFriendsWeb.VolumeController do
  use BibleWithFriendsWeb, :controller

  def index(conn, _params) do
    volumes = DigitalBible.volumes(%{language: "English", media: "text"})
    render(conn, "index.html", volumes: volumes)
  end

  def show(conn, %{"id" => id }) do
    books = DigitalBible.books(%{dam_id: id})
    render(conn, "show.html", books: books)
  end
end
