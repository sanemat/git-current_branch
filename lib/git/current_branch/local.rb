require 'rugged'

module Git
  module CurrentBranch
    class Local
      def initialize(options = {})
        @path = options[:path]
        @repo = ::Rugged::Repository.new(@path)
      end

      # refs/heads/master => master
      def name
        @repo.head.name.gsub(%r!\Arefs/heads/(.*)\z!) { $1 }
      end

      def name_equal_to?(compare)
        name == compare
      end
    end
  end
end
