Shoes.app(:width => 500, :height => 600) do
	background gray..white
=begin
button 'Push me'
stack do
	button 'A bet of clams'
	button 'A coalition of cheetahs'
	button 'A gulp of swallows'
end
oval(:left => 10, :top => 500, :radius => 20)
fill red
rect(:left => 100, :top => 500, :width => 40)
arrow(:left => 200, :top => 500, :width => 40)
para strong('Q.'), 'Are you beginnig to grasp hold of Shoes?'
stack(:margin => 6) do
	title 'A Question'
	para strong('Q.'), 'Are you beginnig to grasp hold of Shoes?'
	para em(strong('A.')), "Quit pestering me, I'm hacking here."
end
	@push = button 'Push me'
	@note = para 'Nothing pushed so far'
	@push .click { @note.replace 'Aha! Click!' }
=end

=begin
	border '#EFC'
	border('#BE8', :strokewidth => 6)
	stack(:margin => 12) do 
		para 'Enter your name'
		flow do
			edit_line
			button 'OK'
		end
	end
=end

=begin
	@shape = star(:points => 3)
	motion do |left, top|
		puts left
		puts top
		@shape.move left, top
	end
=end

=begin
	@shoes = image("http://spiralofhope.com/i/ruby-shoes--shoes.png",:top => 100, :left => 100)
	animate do |i|
		@shoes.top += (-20..20).rand
		@shoes.left += (-20..20).rand
	end
=end

=begin
	@poem = stack(:top => 20) do
		para "My eyes have blinked again
And I have just realized
This upright world
I have been in.
My eyelids wipe
My eyes hundreds of times
Reseting and renovating
The scenery."
	end
	para(
		link('Clear').click do
			@poem.clear
		end
	)
=end

	fill rgb(0, 0.6, 0.9, 0.1)
	stroke rgb(0, 0.6, 0.9)
	strokewidth 0.25
	100.times do
		oval(
			:left => (-5..self.width).rand,
			:top => (-5..self.height).rand,
			:radius => (25..50).rand
		)
	end
end
