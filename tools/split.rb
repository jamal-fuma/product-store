#!/usr/bin/ruby -w

Fname="fix-%03d-change.patch"
$curr = ""
$seen = 0
$outfile = nil

ARGF.each do |f|
    f.each_line do |line|
        seen = $seen
        if line =~ /diff --git/
            $seen += 1;        
            $outfile.close if(nil != $outfile)
            $curr = sprintf(Fname,$seen)
            $outfile = File.open($curr,"w")
            puts sprintf("%16s %03d:\t%-48s > %s","Processing diff",$seen,line.chomp,$curr)
        end
        $outfile.puts(line.chomp) rescue puts("skipped line " + line.chomp)
    end
end

$outfile.close unless $outfile.nil?

    
