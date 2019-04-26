# coding: utf-8
module Ornb
  class CLI < Thor
=begin
    def mk_toc
      Dir.glob('*') do |dir|
        toc << "** [[./"+dir+"/]]\n"
        if File.directory?(dir)
          Dir.chdir(dir) do
            Dir.glob('*') do |file|
              next if File.extname(file)=='.org'
              line = "- [["+File.join('.',dir,file)+"]["+file
              terminal = File.directory?(file) ? "/]]\n" : "]]\n"
              toc << line+terminal
            end
          end
        end
      end
      print toc
=end
    no_commands do
      def mk_toc
        toc = ''
        Dir.glob('*') do |dir|
          toc << "** [[./"+dir+"/]]\n"
          if File.directory?(dir)
            Dir.chdir(dir) do
              Dir.glob('*') do |file|
                next if File.extname(file)=='.org'
                line = "- [["+File.join('.',dir,file)+"]["+file
                terminal = File.directory?(file) ? "/]]\n" : "]]\n"
                toc << line+terminal
              end
            end
          end
        end
        print toc
      end
    end
  end
end
