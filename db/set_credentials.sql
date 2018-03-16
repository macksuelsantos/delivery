-- Criar a conta e todo os privilegios de usuário e senha no database.
grant all PRIVILEGES on delivery_cms_development.* to deliverycms@localhost identified by 'd&l!very*';
grant all PRIVILEGES on delivery_cms_test.* to deliverycms@localhost identified by 'd&l!very*';
grant all PRIVILEGES on delivery_cms.* to deliverycms@localhost identified by 'd&l!very*';
