# BLOCKS

sites = ["net", "psd", "mobile"]

sites.map! do |site| # blocks start with do, and block params are in |pipes|
  site += ".tutsplus.com"
end

# ITERATORS

sites.each { |site| # Each method returs the original array
  puts "#{site}.tutplus.com"
}

sites = sites.map do |s| # .map returns an array of the new values
  "#{s}.tutplus.com
end

sites.map! {|site_prefix| "#{site_prefix}.tutplus.com"} # the .map! uses a bang to replace the value of sites array

# Numbers have pretty cool iterator methods
5.times do |i|
  puts "Loop number #{i}"
end

