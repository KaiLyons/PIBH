
ARGV.each do |key|
    if key.ends_with?(".pibh")
        filename = "#{key}"
        main filename
    else 
        puts "wrong file type"
    end
end

def p (line)
    line = line.split("<p>", remove_empty: true)
    line = line.join(",")
    line = line.split("</p>", remove_empty: true)
    line = line.join(",")
    line = line.lstrip()
    puts line
end

def main (filename)
    File.each_line filename do |line|
        if line.starts_with?("<p>")
            if line.ends_with?("</p>")
                p line
            end
        end
    end
end 
