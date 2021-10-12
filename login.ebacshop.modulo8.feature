#language: pt

Funcionalidade: Tela de login
Como usuário da loja Ebac Shop
Quero fazer login na plataforma 
Para visualizar meus pedidos

Dado que eu acesse a tela do portal Ebac Shop

Cenario: Dados válidos
Quando eu digitar o <usuario> e <senha> válidos
Então o usuário é encaminha para tela de checkout

Exemplos:
| usuario            | senha       | 
| "joao@ebac.com.br" | "teste@123" |

Cenario: Dados inválidos
Quando eu digitar o <usuario> e <senha> iválidos
Então a <mensagem> é exibida

Exemplos:
| usuario            | senha       | mensagem                    |
| "joao@ebac.com.br" | "teste@1"   | "Usuário ou senha inválidos"|
| "joao@eb.com.br"   | "teste@123" | "Usuário ou senha inválidos"|