guard 'rspec', :version => 2, :cli => '--format documentation --format html --out "doc/rspec/index.html"' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch('.rspec')               { "spec" }
end

