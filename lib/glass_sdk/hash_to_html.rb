class Hash
  
  def to_html(filename)
    input = File.read "#{GlassSdk.template_path}/#{filename}.html.erb"
    eruby = Erubis::Eruby.new(input)
    return eruby.evaluate(self)
  end 
  
end
