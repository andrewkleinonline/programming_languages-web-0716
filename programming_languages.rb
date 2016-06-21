require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |category, language_list|
    language_list.each do |language, attribute|
      new_hash[language] = attribute
      new_hash[language][:style] = []
    end
  end

  languages.each do |category, language_list|
    language_list.each do |language, attribute|
      new_hash[language][:style] << category
    end
  end

  #binding.pry
  new_hash
end
