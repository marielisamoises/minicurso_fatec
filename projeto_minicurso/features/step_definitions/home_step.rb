#encoding:utf-8

Dado(/^que estou na página inicial da Saraiva$/) do
    visit 'https://www.saraiva.com.br/'
  end
  
  Quando(/^digito "([^"]*)"$/) do |autor|
    input = find_field 'q'
    input.send_keys 'Dan Brown', :enter
  end

  Então(/^irei ver uma lista com os livros do autor$/) do
    page.has_content?('Resultados para: Dan Brown')
  end
