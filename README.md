<h3 align="center">
    <img alt="Logo" title="#logo" width="250px" src="https://github.com/D0nnye/BD-Basic/blob/main/Logo%20Tipo.png?raw=true">
</h3>
<h3 align="center">Sistema de gestão e mapeamento utilizando as plataformas web.</h3>

<h3 align="center"> :mortar_board: Projeto integrador final do curso técnico de informatica utilizando HTML+CSS+JS+Mustache+Typescript+MySQL+Node.</h3>

# Integrantes
- [Lucas](https://github.com/D0nnye)
- [João](https://github.com/PROGRAMADORTAVINHO)
- [Thiago](https://github.com/thiagossconceicao1)
- [Guilherme](https://github.com/GuiOliveiraR)
- [Matheus](https://github.com/Mts1God)
- [Victor](https://github.com/VQueiroz6)

# Índice

- [Sobre](#sobre)
- [Documentação](#documentacao)
- [Aplicação Web](#web)
- [Como Executar e Contribuir](#contribuir)


<a id="sobre"></a>
## Sobre o projeto


Durante a concepção do projeto, foram identificadas questões problemáticas que fundamentam sua elaboração, incluindo a escassez de informações e a falta de localização precisa, resultando no desinteresse do cliente em relação ao tópico. Com o intuito de solucionar esses problemas, propôs-se o desenvolvimento de uma aplicação web com o objetivo de fornecer dados abrangentes sobre reciclagem, além de disponibilizar um mapa interativo que atua como um intermediário entre os usuários e os pontos de coleta de resíduos eletrônicos espalhados pela cidade de São Paulo.


A camada web do projeto foi implementada com uma estrutura coesa entre as páginas, visando aprimorar a experiência do usuário. Para garantir a usabilidade em diversos dispositivos, foi adotada uma abordagem de design responsivo, permitindo que a aplicação se adapte e redimensione de forma adequada em diferentes tipos de tela, levando em consideração suas dimensões e características específicas. Essa abordagem assegura que os usuários possam acessar a aplicação de maneira eficiente, independentemente do dispositivo utilizado.

A componente do sistema é concebida exclusivamente para uso interno, com o propósito de permitir que os desenvolvedores monitorem os dados dos usuários provenientes da camada web, realizem consultas e efetuem alterações de forma criteriosa, conforme necessidade e requisitos específicos.


<a id="documentacao"></a>

## Documentação
### :rocket: Tecnologias:
- HTML, CSS, JS
- Mustache
- [Typescript](https://www.typescriptlang.org)
- [MySQL](https://www.mysql.com/)
- [Node](https://nodejs.org/en)

### :briefcase: Design Pattern: 
 - [MVC - Model-View-Controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

### :books: Ferramentas e componentes:
- [XXAMP](https://www.ganttproject.biz/)
- [Visual Studio Code](https://code.visualstudio.com)
- [Visual Studio](https://visualstudio.microsoft.com/pt-br/)
- [Sublime](https://www.sublimetext.com)
   
## Resultado

<a id="web"></a>

## Aplicação Web

### Home
Home é a interface de boas-vindas do site da Aqui seu lixo. Nessa página, os usuários terão acesso a recursos essenciais, como um mapa interativo que exibe a localização das lixeiras de eletrônicos mais próximas de sua área geográfica. Além disso, serão disponibilizadas informações técnicas e detalhadas sobre o processo de reciclagem de eletrônicos, incluindo diretrizes específicas para a correta disposição desses resíduos. O site também apresentará notícias atualizadas e relevantes relacionadas ao tema da reciclagem de eletrônicos, mantendo os usuários informados sobre as últimas novidades e desenvolvimentos nessa área.

![](https://github.com/D0nnye/BD-Basic/blob/main/Home%20Inicio.png?raw=true)

### Continuação da home
![](https://github.com/D0nnye/BD-Basic/blob/main/Home%20Meio.png?raw=true)

### Sobre nós
A Sobre Nós é uma página dedicada a contar a história da nossa empresa, Aqui seu Lixo, destacando nossos valores, missão e visão, assim como reconhecendo o papel essencial dos nossos funcionários que tornaram tudo isso possível.
![](https://github.com/D0nnye/BD-Basic/blob/main/Sobre%20nos.png)

<a id="mobile"></a>


<a id="contribuir"></a>
## :link: Como executar e contribuir

- **Clone e instale as dependências**

	Vá até o local onde deseja salvar o projeto, abra o cmd e execute:
	```
	git clone https://github.com/thiagossconceicao1/atualiza-o-typescri-t
	cd atualiza-o-typescri-t
	npm install
	```


- **Suba o banco de dados**

	Dentro da pasta PI tem um arquivo chamado `dbaquiseulixo.sql` que, contém o script necessário para a criação do banco.
	Execute ele um SGBD de sua preferência.


- **Configure variáveis de ambiente**

	Ainda dentro da pasta atualiza-o-typescri-t, existe um arquivo chamado `.env`.
	Abra ele em qualquer editor de código para conseguir realizar as configurações necessárias.

	Variáveis:
	- `PORT` (Porta na qual o servidor estará sendo executado);
	- `MYSQL_DB` (Nome do banco de dados)
	- `MYSQL_USER` (Usuário para obter acesso ao banco)
	- `MYSQL_PASSWORD` (Senha do usuário)
	- `MYSQL_PORT` (Porta na qual o banco está sendo executado)
	- `MYSQL_HOST` (IP do servidor de banco de dados)


- **Crie um usuário no banco de dados**

	Acesse o banco e execute o seguinte comando:
	```
	CREATE USER 'João'@'%' IDENTIFIED BY 'João';
	GRANT ALL ON dbaquiseulixo.* TO 'João'@'%';
	FLUSH PRIVILEGES;
	```


- **Execute o servidor**

	Volte ao cmd na pasta atualiza-o-typescri-t e execute:
	```
	npm run start-dev
	```

E pronto! Se tudo estiver corretamente configurado, o servidor ja vai estar online.

para acessa-lo, abra um navegador da sua preferência e coloque o IP da máquina que está executando o servidor mais a porta que ele foi configurado.
`10.0.0.10:8080` por exemplo; Ou `localhost:8080` caso o servidor esteja sendo executado em sua máquina e na porta 8080.

---

