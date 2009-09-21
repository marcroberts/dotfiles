#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'
 
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
 
IRB.conf[:PROMPT_MODE] = :SIMPLE
 
%w[rubygems wirble].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end

def copy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end
 
def paste
  `pbpaste`
end
 
load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV']