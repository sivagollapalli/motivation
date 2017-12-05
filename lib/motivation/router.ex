defmodule Motivation.Router do
  use Trot.Router

  get "/quote" do
    conn = put_resp_content_type(conn, "application/json")

    quotes = ["If you can dream it, you can do it.", 
              "Where there is a will, there is a way. If there is a chance in a million that you can do something, anything, to keep what you want from ending, do it. Pry the door open or, if need be, wedge your foot in that door and keep it open.", 
              "Do not wait; the time will never be ‘just right.",
              "Press forward. Do not stop, do not linger in your journey, but strive for the mark set before you.", 
              "The future belongs to those who believe in the beauty of their dreams.",
              "Aim for the moon. If you miss, you may hit a star.",
              "Don’t watch the clock; do what it does. Keep going.", 
              "There will be obstacles. There will be doubters. There will be mistakes. But with hard work, there are no limits.",
              "Keep your eyes on the stars, and your feet on the ground.",
              "We aim above the mark to hit the mark.",
              "Change your life today. Don’t gamble on the future, act now, without delay.",
              "You just can’t beat the person who never gives up.", 
              "Start where you are. Use what you have. Do what you can.",
              "Why should you continue going after your dreams? Because seeing the look on the faces of the people who said you couldn’t will be priceless.",
    "Never give up, for that is just the place and time that the tide will turn."]

    message = %{"response_type" => "in_channel", "text" => Enum.random(quotes) }
             |> Poison.encode!([])

    send_resp(conn, 200, message)
  end

  import_routes Trot.NotFound
end
