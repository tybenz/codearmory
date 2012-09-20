# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#
# Snippets:
# John Resig Templating
# John Resig Inheritance
# Super Simple Sinatra Chat GIST: 1476463
# Ajax Append
# Random Name Generator
# PHP curl http://www.jonasjohn.de/snippets/php/curl-example.htm
# PHP random readable password http://www.jonasjohn.de/snippets/php/random-readable-pwd.htm
# JS check all checkboxes http://www.snippetsmania.com/check-all-checkbox-in-the-form/
# Ruby City/State from zipcode http://www.snippetsmania.com/retrieve-city-state-and-zip-info-from-google-geocoding-service-by-passing-in-a-zipcode/
# Ruby count all pdf pages in dir http://www.snippetsmania.com/recurse-directory-tree-and-count-pages-in-all-pdf-files-using-pdf-reader-gem/
# Bash resize images in dir http://www.snippetsmania.com/resize-all-images-in-directory/
# PHP phone number beautifier http://www.snippetsmania.com/phone-number-beutifier/
# Bash check str for substr http://www.snippetsmania.com/checking-if-a-string-contains-a-substring-in-bash/
# Shell recursively delete all .DS_Store http://www.snippetsmania.com/recursively-delete-all-ds_store-files/
# PHP list files in dir http://www.laughing-buddha.net/php/dirlist/
# Shell Gitdrop
# CSS3 Tooltip
# JS Binary tetris
# JS Game of Life https://gist.github.com/1102964 http://jsfiddle.net/aemkei/wdRcc/show/
# 

users = [
  { :username => "tybenz",
    :token => "5c96cb0afeb0a4a52c4666b7ebc2dd228abf8ba2"
  },
  { :username => "codearmorygists",
    :token => "86986929a6ef39002511c9e9304f9f7850adbfb6"
  }
]

if Rails.env.development?
  users.each do |user|
    user_exists = User.where(:username => user[:username], :token => user[:token]).first
    unless user_exists
      User.create(user)
    end
  end
end

owner_id = User.find_by_username("codearmorygists")

snippets = [
  { :user_id => owner_id,
    :name => "Micro Templating Engine",
    :description => "John Resig's Micro Templating Engine. Read more here: http://ejohn.org/blog/javascript-micro-templating/",
    :gist_id => 3752705
  },
  { :user_id => owner_id,
    :name => "PHP Curl",
    :description => "How to use curl in PHP",
    :gist_id => 3752814
  },
  { :user_id => owner_id,
    :name => "Ajax Append",
    :description => "jQuery plugin: make an AJAX request, pump JSON into a template, and append to document",
    :gist_id => 3752740
  },
  { :user_id => owner_id,
    :name => "Game of Life",
    :description => "Game of life implemented in JS. Demo here: http://jsfiddle.net/aemkei/wdRcc/show/",
    :gist_id => 1102964
  },
  { :user_id => owner_id,
    :name => "Gitdrop",
    :description => "Script that pushes file to git repo and injects public url to clipboard",
    :gist_id => 3752986
  },
  { :user_id => owner_id,
    :name => "Phone Number Beautifier",
    :description => "Takes in a phone number and outputs in a more appropriate format",
    :gist_id => 3752952
  },
  { :user_id => owner_id,
    :name => "Random Readable Password Generator",
    :description => "Generates random passwords that are readable",
    :gist_id => 3752822
  },
  { :user_id => owner_id,
    :name => "Geolocate",
    :description => "Get City and State from Zipcode",
    :gist_id => 3752857
  },
  { :user_id => owner_id,
    :name => "Shell Substr",
    :description => "Check for substring in shell script",
    :gist_id => 3752971
  },
  { :user_id => owner_id,
    :name => "DS_Store Disseminate",
    :description => "Recursively delete all .DS_Store files",
    :gist_id => 3752974
  },
  { :user_id => owner_id,
    :name => "Random Name Generator",
    :description => "Generate believable random names",
    :gist_id => 3752804
  },
  { :user_id => owner_id,
    :name => "Checkbox Checker",
    :description => "JS Script to check or uncheck all checkboxes in a form",
    :gist_id => 3752830
  },
  { :user_id => owner_id,
    :name => "Page Counter",
    :description => "Recurse directory and count all pages in PDF files",
    :gist_id => 3752919
  },
  { :user_id => owner_id,
    :name => "Dirlist",
    :description => "PHP script to list all files in a directory",
    :gist_id => 3752980
  },
  { :user_id => owner_id,
    :name => "Javascript Inheritance",
    :description => "John Resig's Simple Javascript Inheritance. Read more here: http://ejohn.org/blog/simple-javascript-inheritance/",
    :gist_id => 3752710
  },
  { :user_id => owner_id,
    :name => "CSS3 Tooltip",
    :description => "Leveraging CSS3's attr() method and a pseudo element to have a tooltip on hover",
    :gist_id => 3752998
  },
  { :user_id => owner_id,
    :name => "Image Resize",
    :description => "Resize all images in a directory",
    :gist_id => 3752945
  },
  { :user_id => owner_id,
    :name => "Sinatra Chat",
    :description => "Super Simple Sinatra Chat",
    :gist_id => 1476463
  }
]

if Rails.env.development?
  snippets.each do |snip|
    snippet_exists = Snippet.where(:name => snip[:name]).first
    unless snippet_exists
      Snippet.create(snip)
    end
  end
end
