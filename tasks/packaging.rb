task :package do
  `mkdir -p build`
  `tar -cf build/hacienda.io.tar.gz app/* public/* config/* config.ru Gemfile Gemfile.lock`
end
