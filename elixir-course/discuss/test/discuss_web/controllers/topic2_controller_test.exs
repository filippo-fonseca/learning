defmodule DiscussWeb.Topic2ControllerTest do
  use DiscussWeb.ConnCase

  alias Discuss.Discussions

  @create_attrs %{title: "some title"}
  @update_attrs %{title: "some updated title"}
  @invalid_attrs %{title: nil}

  def fixture(:topic2) do
    {:ok, topic2} = Discussions.create_topic2(@create_attrs)
    topic2
  end

  describe "index" do
    test "lists all topics", %{conn: conn} do
      conn = get(conn, Routes.topic2_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Topics"
    end
  end

  describe "new topic2" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.topic2_path(conn, :new))
      assert html_response(conn, 200) =~ "New Topic2"
    end
  end

  describe "create topic2" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.topic2_path(conn, :create), topic2: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.topic2_path(conn, :show, id)

      conn = get(conn, Routes.topic2_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Topic2"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.topic2_path(conn, :create), topic2: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Topic2"
    end
  end

  describe "edit topic2" do
    setup [:create_topic2]

    test "renders form for editing chosen topic2", %{conn: conn, topic2: topic2} do
      conn = get(conn, Routes.topic2_path(conn, :edit, topic2))
      assert html_response(conn, 200) =~ "Edit Topic2"
    end
  end

  describe "update topic2" do
    setup [:create_topic2]

    test "redirects when data is valid", %{conn: conn, topic2: topic2} do
      conn = put(conn, Routes.topic2_path(conn, :update, topic2), topic2: @update_attrs)
      assert redirected_to(conn) == Routes.topic2_path(conn, :show, topic2)

      conn = get(conn, Routes.topic2_path(conn, :show, topic2))
      assert html_response(conn, 200) =~ "some updated title"
    end

    test "renders errors when data is invalid", %{conn: conn, topic2: topic2} do
      conn = put(conn, Routes.topic2_path(conn, :update, topic2), topic2: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Topic2"
    end
  end

  describe "delete topic2" do
    setup [:create_topic2]

    test "deletes chosen topic2", %{conn: conn, topic2: topic2} do
      conn = delete(conn, Routes.topic2_path(conn, :delete, topic2))
      assert redirected_to(conn) == Routes.topic2_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.topic2_path(conn, :show, topic2))
      end
    end
  end

  defp create_topic2(_) do
    topic2 = fixture(:topic2)
    %{topic2: topic2}
  end
end
