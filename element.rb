Shoes.app do
	background gray
	background white, :width => 50
	stack do
		flow do
			check :checked => true
			para 'hehehehe'
		end
		@counter = para "STARTING"
		animate(24) do |fram|
			@counter.replace "FRAME #{fram}"
		end
	end
	flow do
		@path = edit_line
		button 'Shoe the picture' do
			image @path.text
		end
	end
end

