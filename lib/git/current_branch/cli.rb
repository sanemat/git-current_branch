require 'git/current_branch'
require 'thor'

module Git
  module CurrentBranch
    class CLI < Thor
      desc "version", "Prints version information"
      def version
        puts "git-current_branch version #{Git::CurrentBranch::VERSION}"
      end
      map %w(-v --version) => :version
    end
  end
end
