Shoes.app :title => 'Downloader', :width => 300, :height => 350 do
	background gray..white
	stack do
		para 'Download What You Want!', :align => 'center', :top => 8
		flow :top => 40 do
			@path = edit_line
			@start = button 'Click to start!', :width => 75
			@clean = button 'ㄨ', :width => 25
			@show_prog = stack :width => 300, :height => 280 do
			end
		end
	end
	@clean.click do
		@show_prog.clear
	end
	@start.click do 
		if !(@path.text.split('').include?('.'))
			alert 'Please input a file path!'
		else
			@folder = ask_open_folder
			down_path = @folder + '/' + File.basename(@path.text)
			@show_prog.append do
				stack :width => 300, :height => 36 do
					background white..gray
					flow do
						dl = nil
						para File.basename(@path.text), :margin => 0
						d = para :margin => 0, :align => 'right', :size => 9
						p = progress :width => 1.0, :height => 18
						dl = download @path.text, :save => down_path, 
							:progress => proc { |dl| 
							d.text = dl.percent.to_s + '%'
							p.fraction = dl.percent * 0.01 },
								:finish => proc { |dl| d.text = "Download completed" }
					end
				end
			end
		end
	end
end
