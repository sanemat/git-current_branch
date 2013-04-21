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

      desc 'name', 'Print current branch name'
      def name
        local = Git::CurrentBranch::Local.new(path: Dir.pwd)
        puts local.name
      end

      desc 'name_equal_to', 'Equal to branch name?'
      def name_equal_to(compare)
        local = Git::CurrentBranch::Local.new(path: Dir.pwd)
        if local.name_equal_to? compare
          exit 0
        else
          puts "This branch is #{local.name}, not equal to #{compare}"
          exit 1
        end
      end
    end
  end
end
