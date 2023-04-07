# frozen_string_literal: true

# overwrite db:migrate or db:dump
Rake::Task['db:migrate'].clear
task 'db:migrate' => :environment do
  ENV['RAILS_ENV'] ||= 'development'
  sh "ridgepole -E #{ENV['RAILS_ENV']} -c config/database.yml --apply -f db/Schemafile"
  sh "ridgepole -E #{ENV['RAILS_ENV']} -c config/database.yml --export -f db/Schemafile -o db/Schemafile"
end
