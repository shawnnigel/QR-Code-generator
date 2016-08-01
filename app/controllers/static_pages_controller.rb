class StaticPagesController < ApplicationController
  def home
  	@@term=params[:term]
  	@qr=RQRCode::QRCode.new(@@term.to_s)
  	@png=@qr.as_png
       
  end
 def downloadpng
  
  	@qr=RQRCode::QRCode.new(@@term.to_s)
  	@png=@qr.as_png
 	 send_data @png, type: "image/png", disposition: "attachment" ,filename: "QRcode:#{Time.now}"
     
 end

end
