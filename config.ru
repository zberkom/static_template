use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

@root = File.expand_path(File.dirname(__FILE__))

run Proc.new { |env|
  path = Rack::Utils.unescape(env['PATH_INFO'])
  index_file = @root + "#{path}/public/index.html"

  if File.exists?(index_file)
    [200, {'Content-Type' => 'text/html'}, [File.read(index_file)]]
  else
    Rack::Directory.new(@root + '/public').call(env)
  end
}
