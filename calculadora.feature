            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Autenticar soma de 2 números
            Quando eu digitar <numero> somando os dois
            Então deve exibir a <mensagem> e a soma do <resultado>

            Exemplos:
            | numero | mensagem        | resultado |
            | "2+2"  | "O resultado é" | "4"       |
            | "10+2" | "O resultado é" | "12"      |
            | "4+2"  | "O resultado é" | "6"       |
            | "2+5"  | "O resultado é" | "7"       |
            | "1+9"  | "O resultado é" | "10"      |
            | "20+2" | "O resultado é" | "22"      |
            | "5+8"  | "O resultado é" | "13"      |
            | "11+4" | "O resultado é" | "15"      |
            | "20+6" | "O resultado é" | "26"      |
            | "2+0"  | "O resultado é" | "0"       |

