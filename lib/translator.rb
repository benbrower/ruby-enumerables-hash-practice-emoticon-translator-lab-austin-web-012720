# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  # code goes here
  emoticons_file = YAML.load_file(file)

  emoticons_hash = {
    get_emoticon = {},
    get_meaning = {}
  }

  emoticons_file.each do |key, array|
    array.each do |emoticon|
      emoticons_hash[:get_emoticon][array.first] = array.last
      emoticons_hash[:get_meaning][array.last] = key
    end
  end
  emoticons_hash
end

def get_japanese_emoticon

end

def get_english_meaning
  # code goes here
end
