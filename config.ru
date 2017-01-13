class Mock
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, ["hello world.\n"]]
  end
end

run Mock.new
