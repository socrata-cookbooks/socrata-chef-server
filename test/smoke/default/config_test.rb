# encoding: utf-8
# frozen_string_literal: true

describe file('/etc/opscode/chef-server.rb') do
  it 'is configured to load configs .d-style' do
    expected = <<-EOH.gsub(/^ {8}/, '').strip
      Dir.glob(
        File.join('/etc/opscode', "server.d", "*.rb")
      ).each do |conf|
        self.instance_eval(IO.read(conf), conf, 1)
      end
    EOH
    expect(subject.content).to eq(expected)
  end
end
