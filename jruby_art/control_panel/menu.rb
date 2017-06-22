load_library :control_panel
attr_reader :panel

def settings
	size 600, 600
end

def setup
	sketch_title "Menú"
	control_panel do |c|
		c.title = "Menú"
		c.menu	:Color, %w(#e91e63 #9c27b0 #8bc34a #000000)
		@panel = c
	end
	@Color = '#000000'
end

def draw
	unless @hide
		hide = true
		panel.set_visible(hide)
	end
	background (color(@Color))
end
