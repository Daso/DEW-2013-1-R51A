class Tweet < ActiveRecord::Base
  Twitter.configure do |config|
    config.consumer_key = 'bMBxYwxQZMN3EhoXMxnSqg'
    config.consumer_secret = 'Te8fjRv54Pf6QMMnZqfY3cko3Y2cVZ5mIaicLSFDFP8'
    config.oauth_token = '344334932-xZybF7jS4HOsLGdYlTxYwWK6Yz5BJOYahx2hNgfN'
    config.oauth_token_secret = 'WikXHuFUDyvn3xV5QhVyXfaWZhMIJT2ztXFftsBc8'
  end

  def read_message
     return "No hay usuario" if self.user.blank?
     Twitter.user_timeline(self.user).first.text
  end

  def update_status
  	return "sin update" if self.message.blank?
  	Twitter.update(self.message)
  end

  def show_message_by_url
    return "sin url" if self.url.blank? 
    Twitter.status(self.url)
  end

end
