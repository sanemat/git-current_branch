require 'rugged'

module Git
  module CurrentBranch
    class Local
      def name(options = {})
        path = options[:path]
        repo = ::Rugged::Repository.new(path)
        #"refs/heads/master"
        repo.head.name.gsub(%r!\Arefs/heads/(.*)\z!) { $1 }
      end
    end
  end
end
