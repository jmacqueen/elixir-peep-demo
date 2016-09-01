defmodule Peepchat.ApplicationInfoController do
  use Peepchat.Web, :controller

  def ping(conn, _params) do
    conn
    |> text("Ok")
  end

  def info(conn, _params) do
    conn
    |> json(%{
        "name" => "name",
        "version" => "version",
        "commitHash" => "commitHash",
        "buildTime" => "buildTime",
        "hostname" => "hostname"
      })
  end

  def health(conn, _params) do
    conn
    |> text("Ok")
  end

end
