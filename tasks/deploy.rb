task :deploy => [:package] do
  puts 'Starting deploying'
  `ansible-playbook infra/main.yml -i infra/hosts -vvv > ansible-output`
  puts 'Finished deploying'
end
