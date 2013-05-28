class Tweet < ActiveRecord::Base

Twitter.configure do |config|
  config.consumer_key = 'pToks66RC32cevL0QOdKBw' 
  config.consumer_secret = 'TvS5TwBprhBaoNrH4loUNnLSnHEivE1xUZMa9Oebe4'
  config.oauth_token = '313482608-4uofrTHoKIv9ebIs5aHX5ZCntDDaQMqkOB5LIQT1'
  config.oauth_token_secret = 'n3xvumJVRKr7p8HxRaWvbJcpQRwPrVmudGg2MQA3NA'
end

  def read_message 
  	return "sin user" if self.user.blank?
  	Twitter.user_timeline(self.user).first.text
  end

  def update_status
  	return "sin update" if self.message.blank?
  	Twitter.update(self.message)
  end

end
