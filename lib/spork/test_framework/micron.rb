
module Spork
  class TestFramework
    class Micron < Spork::TestFramework

      DEFAULT_PORT = 8988
      HELPER_FILE  = %w(test/helper.rb).map{ |p|
                       File.exist?(f = File.join(Dir.pwd, p)) ? f : nil
                     }.compact.last

      def run_tests(argv, stderr, stdout)

        # already running inside a fork
        # just run Micron::App directly

        ARGV.clear
        ARGV << argv
        ARGV.flatten!

        require "micron"
        require "micron/app"
        ::Micron::App.new.run()

        rescue => e
          puts "-"*30
          puts "SPORK ERROR executing micron with argv=#{argv.join(' ')}"
          puts e.message
          puts e.backtrace
          puts "-"*30

      end # run_tests

    end
  end
end
