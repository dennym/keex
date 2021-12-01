defmodule Keex.Client do
  @moduledoc false


  def config do
    {
      :api_url = "https://api.keen.io",
      :api_version = "3.0",
      :api_headers = fn(authorization, sync_or_async) -> {
        user_agent = "keex, v#{Keen::VERSION}, #{sync_or_async}"
        user_agent += ", #{System.version}, #{System.otp_release}"
        { "Content-Type" => "application/json",
          "User-Agent" => user_agent,
          "Authorization" => authorization,
          "Keen-Sdk" => "ruby-#{Keex.version}" }
      }
    }
  end

  defp url do
    Application.get_env(:keenex, :url, "https://api.keen.io/3.0")
  end

  def get do

  end

  def post do

  end


end
