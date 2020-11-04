defmodule Discuss.Discussions.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(conn, params) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end

