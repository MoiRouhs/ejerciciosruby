load_library :control_panel
attr_reader :panel

def settings
  size 600, 600

end

def setup
  @colarreglo = { 'Rosado'=>'#e91e63','Morado'=>'#9c27b0','Verde'=>'#8bc34a','Negro'=>'#000000'}
  sketch_title 'Wishy Worm'
  control_panel do |c|
    c.title = 'Control Panel'
    c.look_feel 'Nimbus'
    c.slider    :Radio, 10..100, 20
    c.menu			:Color, %w(Rosado Morado Verde Negro) 
    @panel = c
  end
  @Radio = 20
  @Color = 'Rosado'
end


def draw
	unless @hide
    hide = true
    panel.set_visible(hide)
  end
  background 199
  d = @colarreglo[@Color]
 fill(color(d))
	ellipse(300,300,@Radio,@Radio)
	
end
