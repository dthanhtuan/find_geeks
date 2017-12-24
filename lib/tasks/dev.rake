# frozen_string_literal: true

namespace :dev do
  desc 'Generate test data'
  task generate_data: :environment do
    generate_programming_languages
    generate_languages
  end
end

def generate_programming_languages
  %w[ruby javascript python scala kotlin swift].each do |name|
    ProgrammingLanguage.find_or_create_by!(name: name)
  end
end

def generate_languages
  %w[ja en cn].each do |code|
    Language.find_or_create_by!(code: code)
  end
end
