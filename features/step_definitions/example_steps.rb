Dada(/^una kata "(.*?)"$/) do |kata_name|
  @kata_name = kata_name
  defined? @kata_name
end

Entonces(/^debe estar en la carpeta "(.*?)"$/) do |folder|
  File.exists?("katas/#{@kata_name}.rb")
end
