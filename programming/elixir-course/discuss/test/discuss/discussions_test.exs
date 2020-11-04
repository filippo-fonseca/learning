defmodule Discuss.DiscussionsTest do
  use Discuss.DataCase

  alias Discuss.Discussions

  describe "topics" do
    alias Discuss.Discussions.Topic2

    @valid_attrs %{title: "some title"}
    @update_attrs %{title: "some updated title"}
    @invalid_attrs %{title: nil}

    def topic2_fixture(attrs \\ %{}) do
      {:ok, topic2} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Discussions.create_topic2()

      topic2
    end

    test "list_topics/0 returns all topics" do
      topic2 = topic2_fixture()
      assert Discussions.list_topics() == [topic2]
    end

    test "get_topic2!/1 returns the topic2 with given id" do
      topic2 = topic2_fixture()
      assert Discussions.get_topic2!(topic2.id) == topic2
    end

    test "create_topic2/1 with valid data creates a topic2" do
      assert {:ok, %Topic2{} = topic2} = Discussions.create_topic2(@valid_attrs)
      assert topic2.title == "some title"
    end

    test "create_topic2/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Discussions.create_topic2(@invalid_attrs)
    end

    test "update_topic2/2 with valid data updates the topic2" do
      topic2 = topic2_fixture()
      assert {:ok, %Topic2{} = topic2} = Discussions.update_topic2(topic2, @update_attrs)
      assert topic2.title == "some updated title"
    end

    test "update_topic2/2 with invalid data returns error changeset" do
      topic2 = topic2_fixture()
      assert {:error, %Ecto.Changeset{}} = Discussions.update_topic2(topic2, @invalid_attrs)
      assert topic2 == Discussions.get_topic2!(topic2.id)
    end

    test "delete_topic2/1 deletes the topic2" do
      topic2 = topic2_fixture()
      assert {:ok, %Topic2{}} = Discussions.delete_topic2(topic2)
      assert_raise Ecto.NoResultsError, fn -> Discussions.get_topic2!(topic2.id) end
    end

    test "change_topic2/1 returns a topic2 changeset" do
      topic2 = topic2_fixture()
      assert %Ecto.Changeset{} = Discussions.change_topic2(topic2)
    end
  end

  describe "comments" do
    alias Discuss.Discussions.Comment

    @valid_attrs %{content: "some content"}
    @update_attrs %{content: "some updated content"}
    @invalid_attrs %{content: nil}

    def comment_fixture(attrs \\ %{}) do
      {:ok, comment} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Discussions.create_comment()

      comment
    end

    test "list_comments/0 returns all comments" do
      comment = comment_fixture()
      assert Discussions.list_comments() == [comment]
    end

    test "get_comment!/1 returns the comment with given id" do
      comment = comment_fixture()
      assert Discussions.get_comment!(comment.id) == comment
    end

    test "create_comment/1 with valid data creates a comment" do
      assert {:ok, %Comment{} = comment} = Discussions.create_comment(@valid_attrs)
      assert comment.content == "some content"
    end

    test "create_comment/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Discussions.create_comment(@invalid_attrs)
    end

    test "update_comment/2 with valid data updates the comment" do
      comment = comment_fixture()
      assert {:ok, %Comment{} = comment} = Discussions.update_comment(comment, @update_attrs)
      assert comment.content == "some updated content"
    end

    test "update_comment/2 with invalid data returns error changeset" do
      comment = comment_fixture()
      assert {:error, %Ecto.Changeset{}} = Discussions.update_comment(comment, @invalid_attrs)
      assert comment == Discussions.get_comment!(comment.id)
    end

    test "delete_comment/1 deletes the comment" do
      comment = comment_fixture()
      assert {:ok, %Comment{}} = Discussions.delete_comment(comment)
      assert_raise Ecto.NoResultsError, fn -> Discussions.get_comment!(comment.id) end
    end

    test "change_comment/1 returns a comment changeset" do
      comment = comment_fixture()
      assert %Ecto.Changeset{} = Discussions.change_comment(comment)
    end
  end
end
