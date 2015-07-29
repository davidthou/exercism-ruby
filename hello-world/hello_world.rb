class HelloWorld
  def self.hello(name = nil)
    "Hello, #{name || 'World'}!"
  end
end
