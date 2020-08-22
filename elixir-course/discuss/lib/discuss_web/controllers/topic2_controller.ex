defmodule DiscussWeb.Topic2Controller do
  use DiscussWeb, :controller

  alias Discuss.Discussions
  alias Discuss.Discussions.Topic2

  def index(conn, _params) do
    topics = Discussions.list_topics()
    render(conn, "index.html", topics: topics)
  end

  def new(conn, _params) do
    changeset = Discussions.change_topic2(%Topic2{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"topic2" => topic2_params}) do
    case Discussions.create_topic2(topic2_params) do
      {:ok, topic2} ->
        conn
        |> put_flash(:info, "Topic2 created successfully.")
        |> redirect(to: Routes.topic2_path(conn, :show, topic2))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    topic2 = Discussions.get_topic2!(id)
    render(conn, "show.html", topic2: topic2)
  end

  def edit(conn, %{"id" => id}) do
    topic2 = Discussions.get_topic2!(id)
    changeset = Discussions.change_topic2(topic2)
    render(conn, "edit.html", topic2: topic2, changeset: changeset)
  end

  def update(conn, %{"id" => id, "topic2" => topic2_params}) do
    topic2 = Discussions.get_topic2!(id)

    case Discussions.update_topic2(topic2, topic2_params) do
      {:ok, topic2} ->
        conn
        |> put_flash(:info, "Topic2 updated successfully.")
        |> redirect(to: Routes.topic2_path(conn, :show, topic2))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", topic2: topic2, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    topic2 = Discussions.get_topic2!(id)
    {:ok, _topic2} = Discussions.delete_topic2(topic2)

    conn
    |> put_flash(:info, "Topic2 deleted successfully.")
    |> redirect(to: Routes.topic2_path(conn, :index))
  end
end
