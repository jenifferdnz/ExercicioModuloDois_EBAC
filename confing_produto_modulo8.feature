#language: pt

Funcionalidade: Configurar produto
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Autenticação campos obrigatórios escolha do produto
Dado que eu acesse a área do produto escolhido
Quando escolher o <item>, <tamanho>, <cor> e <quantidade>
E clicar no  envio do protudo para o carrinho
Então envio o produto é enviado ao carrinho

Exemplos:
|item          | tamanho | cor    |"quantidade"|
|"Camisa uv"   | "L"     | "Azul" |  "1"       |
| "Blusa sport"| "L"     | "Preto"|  "2"       |

Cenário: Autenticação campos obrigatórios vazios escolha do produto
Dado que eu acesse a área do produto escolhido
Quando escolher apenas um dos campos <item>, <tamanho>, <cor> e <quantidade>
Então não é possível enviar o produto ao carrinho

Exemplos:
|item          | tamanho | cor    |"quantidade"|
|"Camisa uv"   | "L"     | "Azul" |  " "       |
| "Blusa sport"| "L"     | " "    |  "2"       |
| "Blusa sport"| " "     | " Azul"|  "2"       |
| " "          | "L"     | " Azul"|  "2"       |

Cenário: Autenticação escolha da quantidade máxima de produto válida
Dado que eu acesse a área do produto escolhido
Quando escolher os campos <item>, <tamanho>, <cor> e <quantidade> máxima permitida
Então é possível enviar o produto ao carrinho

Exemplos:
|item          | tamanho | cor    |"quantidade"|
|"Camisa uv"   | "L"     | "Azul" |  "10"      |

Cenário: Autenticação escolha da quantidade máxima de produto inválida
Dado que eu acesse a área do produto escolhido
Quando escolher os campos <item>, <tamanho>, <cor> e <quantidade> máxima inválida
Então não é possível enviar o produto ao carrinho

Exemplos:
|item           | tamanho | cor    |"quantidade"|
|"Camisa uv"    | "L"     | "Azul" |  "11"      |
|"Blusa social" | "LX"    | "Preto"|  " "       |

Cenário: Autenticação botão limpar
Dado que eu acesse a área do produto escolhido
Quando escolher os campos <item>, <tamanho>, <cor> e <quantidade> válida 
E clicar no botão limpar
Então os filtros devem voltar ao estado original

Exemplos:
|item          | tamanho | cor    |"quantidade"|
|"Camisa uv"   | "L"     | "Azul" |  "2"       |

