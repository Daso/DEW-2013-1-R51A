class Message < ActiveRecord::Base
  Pusher.app_id = 44922
  Pusher.key = 'c34ce05a3de4189495a7'
  Pusher.secret = '988176614964fa4e6941'

  after_create :send_to_pusher

  def send_to_pusher
  	logger.info "Hi?"
  	Pusher['ChatDEW2013'].trigger("message:create", self.to_json)
  end

end
