# -*- coding: utf-8 -*-
file = 'README'

desc "platex"
task :platex do
  cont = File.read("#{file}.tex")
  File.open("#{file}.tex",'w'){ |f| f.print cont }
  system "platex #{file}"
  commands = ["platex #{file}.tex",
              "bibtex #{file}.tex",
              "platex #{file}.tex",
              "dvipdfmx #{file}.dvi",
              "open #{file}.pdf"]
  commands.each{|com| system com}
end
