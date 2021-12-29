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
