# frozen_string_literal: true

%w[6.0.0 6.1.0].each do |rails_version|
  appraise "rails_#{rails_version}" do
    gem 'rails', "~> #{rails_version}"
  end
end

%w[5.2.0 5.1.0].each do |rails_version|
  appraise "rails_#{rails_version}" do
    gem 'rails', "~> #{rails_version}"
    gem 'rspec-rails', '~> 3.9.0'
    gem 'shoulda-matchers', '~> 3.1.0'
    gem 'webdrivers', '~> 3.0'
  end
end

%w[5.0.0 4.2.0].each do |rails_version|
  appraise "rails_#{rails_version}" do
    gem 'jquery-rails', '~> 4.4.0'
    gem 'rails', "~> #{rails_version}"
    gem 'rspec-rails', '~> 3.9.0'
    gem 'shoulda-matchers', '~> 3.1.0'
    gem 'sqlite3', '~> 1.3.9'
    gem 'webdrivers', '~> 3.0'
  end
end
