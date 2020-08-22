defmodule Discuss.Discussions do
  @moduledoc """
  The Discussions context.
  """

  import Ecto.Query, warn: false
  alias Discuss.Repo

  alias Discuss.Discussions.Topic2

  @doc """
  Returns the list of topics.

  ## Examples

      iex> list_topics()
      [%Topic2{}, ...]

  """
  def list_topics do
    Repo.all(Topic2)
  end

  @doc """
  Gets a single topic2.

  Raises `Ecto.NoResultsError` if the Topic2 does not exist.

  ## Examples

      iex> get_topic2!(123)
      %Topic2{}

      iex> get_topic2!(456)
      ** (Ecto.NoResultsError)

  """
  def get_topic2!(id), do: Repo.get!(Topic2, id)

  @doc """
  Creates a topic2.

  ## Examples

      iex> create_topic2(%{field: value})
      {:ok, %Topic2{}}

      iex> create_topic2(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_topic2(attrs \\ %{}) do
    %Topic2{}
    |> Topic2.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a topic2.

  ## Examples

      iex> update_topic2(topic2, %{field: new_value})
      {:ok, %Topic2{}}

      iex> update_topic2(topic2, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_topic2(%Topic2{} = topic2, attrs) do
    topic2
    |> Topic2.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a topic2.

  ## Examples

      iex> delete_topic2(topic2)
      {:ok, %Topic2{}}

      iex> delete_topic2(topic2)
      {:error, %Ecto.Changeset{}}

  """
  def delete_topic2(%Topic2{} = topic2) do
    Repo.delete(topic2)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking topic2 changes.

  ## Examples

      iex> change_topic2(topic2)
      %Ecto.Changeset{data: %Topic2{}}

  """
  def change_topic2(%Topic2{} = topic2, attrs \\ %{}) do
    Topic2.changeset(topic2, attrs)
  end

  alias Discuss.Discussions.Comment

  @doc """
  Returns the list of comments.

  ## Examples

      iex> list_comments()
      [%Comment{}, ...]

  """
  def list_comments do
    Repo.all(Comment)
  end

  @doc """
  Gets a single comment.

  Raises `Ecto.NoResultsError` if the Comment does not exist.

  ## Examples

      iex> get_comment!(123)
      %Comment{}

      iex> get_comment!(456)
      ** (Ecto.NoResultsError)

  """
  def get_comment!(id), do: Repo.get!(Comment, id)

  @doc """
  Creates a comment.

  ## Examples

      iex> create_comment(%{field: value})
      {:ok, %Comment{}}

      iex> create_comment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_comment(attrs \\ %{}) do
    %Comment{}
    |> Comment.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a comment.

  ## Examples

      iex> update_comment(comment, %{field: new_value})
      {:ok, %Comment{}}

      iex> update_comment(comment, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_comment(%Comment{} = comment, attrs) do
    comment
    |> Comment.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a comment.

  ## Examples

      iex> delete_comment(comment)
      {:ok, %Comment{}}

      iex> delete_comment(comment)
      {:error, %Ecto.Changeset{}}

  """
  def delete_comment(%Comment{} = comment) do
    Repo.delete(comment)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking comment changes.

  ## Examples

      iex> change_comment(comment)
      %Ecto.Changeset{data: %Comment{}}

  """
  def change_comment(%Comment{} = comment, attrs \\ %{}) do
    Comment.changeset(comment, attrs)
  end
end
