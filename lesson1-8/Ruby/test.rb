require 'erb'

def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <p><%= Time.now %></p>
  </body>
</html>
  PAGE
end

erb = ERB.new(web_page)
result = erb.result
puts result

require 'erb'

def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <% name = '太郎' %>
    <% time_japan = Time.now.getlocal("+09:00") %>
    <p>今は<%= time_japan.hour %>時です。</p>
    <% if 6 <= time_japan.hour && time_japan.hour < 12 %>
      <p>おはよう、<%= name %>さん</p>
    <% elsif 12 <= time_japan.hour && time_japan.hour < 18 %>
      <p>こんにちは、<%= name %>さん</p>
    <% else %>
      <p>こんばんは、<%= name %>さん</p>
    <% end %>
  </body>
</html>
  PAGE
end

erb = ERB.new(web_page)
result = erb.result
puts result