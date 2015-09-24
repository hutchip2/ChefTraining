require 'spec_helper'

describe 'apache::default' do
 
  describe file('/var/www/html/index.html') do
    it { should be_file }
    it { should contain '<h1>Hello, world!</h1>' }
  end

  describe service('apache2') do
    it { should be_enabled }
    it { should be_running }
  end
  
end
