#language: pt

Funcionalidade: Tela de checkout
Como usuário da loja Ebac Shop
Quero concluir meu cadastro
Para finalizar minha compra

Dado que eu acesse a tela do portal Ebac Shop e realizo o login

Cenario: Validação formulário campos obrigatórios válidos
Quando eu digitar o <usuario> e <senha> válidos
E exibida a tela de checkout, o formulário de cadastro é exibido
E preenchendo os campos <nome>, <sobrenome>, <pais>, <nome da rua>, <cidade>, <cep>, <telefone> e <email>
Então Finalizo a compra

Exemplos:
| usuario            | senha       | nome   | sobrenome   | pais    | nome da rua     | cidade | cep    | telefone  | email               |
| "joao@ebac.com.br" | "teste@123" | "João" | "Fernandes" | "Brasil"| "joão azevedo l"| "sp"   | "58000"| "3221000" | "joao@ebac.com.br"  |


Cenario: Validação formulário campos obrigatórios inválidos
Quando eu digitar o <usuario> e <senha> válidos
E exibida a tela de checkout, o formulário de cadastro é exibido
E preenchendo os campos <nome>, <sobrenome>, <pais>, <nome da rua>, <cidade>, <cep>, <telefone> e <email> inválidos
Então mensagem de alerta é exibida

xemplos:
| usuario            | senha       | nome   | sobrenome   | pais    | nome da rua     | cidade | cep    | telefone  | email               |
| "joao@ebac.com.br" | "teste@123" | "João" | "Fernandes" | "Brasil"| "joão azevedo l"| "sp"   | "58000"| "3221000" | "joao@ebac.com"     |
| "joao@ebac.com.br" | "teste@123" | "    " | "         " | "Brasil"| "joão azevedo l"| "sp"   | "58000"| "3221000" | "joao@ebac.com.br"  |
| "joao@ebac.com.br" | "teste@123" | "João" | "Fernandes" | " "     | "joão azevedo l"| "sp"   | "58000"| "3221000" | "joao@ebac.com.br"  |
| "joao@ebac.com.br" | "teste@123" | "João" | "Fernandes" | "Brasil"| "joão azevedo l"| "sp"   | " "    | "3221000" | "joao@ebac.com.br"  |
| "joao@ebac.com.br" | "teste@123" | "João" | "Fernandes" | "Brasil"| " "             | "sp"   | "58000"| "3221000" | "joao@ebac.com.br"  |
