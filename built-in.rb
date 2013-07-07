=begin
Shoes.app do
	button ('click me') { alert 'gook job' }
	stack do
		para 'First'
		para 'Second'
		para 'Third'
	end
	self.stack do
		self.para 'First'
		self.para 'Second'
		self.para 'Third'
	end
end
=end

=begin
Shoes.app(:title => 'MAIN', :width => 300, :height => 300) do
	para self
	para 'this is the father'
	button 'Spawn' do
		window :title => 'CHILD', :width => 200, :height => 200 do
			para self
			para 'this is the child'
		end
	end
end
=end

=begin
Shoes.app :title => 'Main', :width => 300, :height => 300 do
	flow do 
		stack :width => 200 do
			caption 'Clolumn one'
			para 'is 200 pixels wide'
		end
		stack :width => -200 do
			caption 'Clolumn two'
			para 'is 100% minus 200 pixels wide'
		end
	end
end
=end 

=begin
Shoes.app do
	stack :margin => 10 do
		@edit = edit_box :width => 1.0 do
			@para.text = @edit.text
		end
		@para = para ""
	end
end
=end

=begin
main = self
Shoes.app :title => 'Main' do
	para main.to_s
end
=end

=begin
Shoes.app do
		button ('click') do 
		name = ask("Your name:")
		para name
		end
end
=end

=begin
Shoes.app do
	stack do
		title "Downloading Shoes image", :size => 16
		@status = para "One moment..."
		download "http://shoesrb.com/img/screen.jpg",
			:save => "screen.jpg" do
			@status.text = "Okay, is downloaded."
		end
	end
end
=end

if confirm("Draw a circle?")
	Shoes.app do
		oval :top => 0, :left => 0, :radius => 50
		button 'exit' do
			warn("hehehehe")
		end
	end
end
