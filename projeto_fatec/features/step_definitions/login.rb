#encoding: utf-8

Dado(/^que estou na página inicial do Facebook$/) do
    visit 'https://www.facebook.com/'
end
  
  Quando(/^preencher os meus dados$/) do
    page.find(:id, 'email').click
    fill_in 'email', with: "ma_elisa_elisa@hotmail.com"
    page.find(:id, 'pass').click
    fill_in 'pass', with: "SENHASECRETA"
  end

  Então(/^clicar em Entrar$/) do
    click_button 'Entrar'
  end
  
  Então(/^deverei ver minha tela inicial$/) do
    expect(page).to have_content 'Página inicial'
  end
