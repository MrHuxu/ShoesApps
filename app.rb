=begin
Shoes.app do
	background gray..white
	para clipboard()
	stack do
		title "download a picture:"
		down = download "http://shoesrb.com/img/screen.jpg", :save => 'screen.jpg'
		@progbar = progress :width => 1.0
		down.progress do |prog|
			@progbar.fraction = prog.percent.to_f / 100
		end
	end
	@p = para
	check "checkbox", :checked => true
	animate do
		button, left, top = self.mouse
		@p.replace "Test", :left => left, :top => top
	end
end
=end

