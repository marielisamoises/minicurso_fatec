#encoding: utf-8

Dado(/^que estou na página inicial do Google$/) do
   visit 'https://www.google.com.br/'
  end
  
  Quando(/^digitar "([^"]*)"$/) do |arg1|
    page.find(:id, ('lst-ib')).click 
    fill_in 'q', with: "Facebook"
  end
  
  Então(/^deverei ver o resultado da busca$/) do
    click_button 'Pesquisa Google'
  end