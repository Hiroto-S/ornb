def org_to_html(*argv)
Dir.glob(dirs).each do |file|
  if File.extname(file)=='.org'
    p command = "emacs #{file} --batch -f org-html-export-to-html --kill"
    system command
  end
end