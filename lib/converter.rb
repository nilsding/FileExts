Twittbot::BotPart.new :converter do
  every 30, :minutes do
    ext1 = @config[:extensions].sample
    ext2 = @config[:extensions].sample
    bot.tweet ".#{ext1} to .#{ext2} converter"
  end
end
