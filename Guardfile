# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  # notification :growl
  watch(%r{^spec/.+_spec\.rb$})
  watch('lib/extract_method.rb') { "spec" }
end

