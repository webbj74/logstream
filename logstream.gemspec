libpath = File.join(File.dirname(__FILE__), 'lib')
$LOAD_PATH.unshift(libpath) unless $LOAD_PATH.include?(libpath)

Gem::Specification.new do |s|
  s.name = "logstream"
  s.version = "0.0.4"
  s.date = Time.now.strftime("%Y-%m-%d")

  s.author = "Barry Jaspan"
  s.email = "barry.jaspan@acquia.com"
  s.homepage = "https://github.com/acquia/logstream"

  s.summary = "Acquia Logstream tools and library"
  s.description = "Logstream is an Acquia service for streaming logs from Acquia Cloud."

  s.files = Dir["[A-Z]*", "{bin,etc,lib,test}/**/*"]
  s.bindir = "bin"
  s.executables = Dir["bin/*"].map { |f| File.basename(f) }.select { |f| f =~ /^[\w\-]+$/ }
  s.test_files = Dir["test/**/*"]
  s.has_rdoc = false

  s.add_runtime_dependency('faye-websocket', ['~> 0.7.2'])
  s.add_runtime_dependency('json', ['~> 1.7.7'])
  s.add_runtime_dependency('thor', ['~> 0.19.1'])
end
