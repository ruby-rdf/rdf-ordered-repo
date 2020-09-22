require 'rubygems'

namespace :gem do
  desc "Build the rdf-ordered-repo-#{File.read('VERSION').chomp}.gem file"
  task :build do
    sh "gem build rdf-ordered-repo.gemspec && mv rdf-ordered-repo-#{File.read('VERSION').chomp}.gem pkg/"
  end

  desc "Release the rdf-ordered-repo-#{File.read('VERSION').chomp}.gem file"
  task :release do
    sh "gem push pkg/rdf-ordered-repo-#{File.read('VERSION').chomp}.gem"
  end
end

namespace :etc do
  ETC_FILES = %w{etc/n3.sxp}
  desc 'Remove generated files in etc'
  task :clean do
    %x(rm #{ETC_FILES.join(' ')})
  end

  desc 'Create versions of ebnf files in etc'
  task build: ETC_FILES
end

file "etc/n3.sxp" => "etc/n3.ebnf" do |t|
  %x{ebnf -o #{t.name} #{t.source}}
end
