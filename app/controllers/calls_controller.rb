class CallsController < ApplicationController
  def index
  	response = Twilio::TwiML::Response.new do |r|
		  r.Say 'hello there', :voice => 'woman'
		  # r.Dial :callerId => '+12067455752' do |d|
		  #   d.Client 'jenny'
		  # end
		end
		# print the result
		@r = response.text
    respond_to do |format|
      format.html {}
      format.xml {render :inline => @r}
    end
  end
end