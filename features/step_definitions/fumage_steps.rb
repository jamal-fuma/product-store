When /^I should see a "([^\"]*)" foreground on a "([^\"]*)" background in "([^\"]*)"$/ do |arg1, arg2, arg3|
   #arg1, arg2, arg3 = *%W(arg1 arg2 arg3)
    File.open("/tmp/fumage.log","w"){|f|
      f.puts(sprintf("foreground=%s\nbackground=%s\nposition=%s\n",arg1, arg2, arg3))
    }
    true
end
