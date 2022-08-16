require 'httparty'
url = "https://weibo.com/aj/f/followed?ajwvr=6&__rnd=1660528101816"

# Place the user ids that you want to follow
list = []
failed_list = []
count = 0
list.each do |uid|
  payload = { :uid => uid, refer_flag: "#{rand(5346386032).to_s}_#{rand(5346386032).to_s}" }

  options = { 
    :body => payload,
    :headers => {
      "content-type" => "application/x-www-form-urlencoded",
      "cookie" => "YOUR COOKIE",
      "referer" => "https://weibo.com/",
      "origin" => "https://weibo.com"
    }
  }
  res = HTTParty.post(url, options)
  if res.dig("code") == "100000"
    count += 1
  else
    failed_list.push uid
    p res
  end
  p failed_list
  puts "#{count} finished"

  sleep(rand(2.1..4.7))
end


