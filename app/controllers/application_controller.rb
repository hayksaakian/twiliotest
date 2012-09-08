class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
#  include Trails::Twilio::CallHandling
  protect_from_forgery
end
