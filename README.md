# Setup Linux Workstation

------------

S.O [Linux Mint 22](https://www.linuxmint.com/);

## Descrição

> Este script automatiza a instalação de ferramentas e aplicativos essenciais para desenvolvimento no Linux Mint. Ele instala uma variedade de softwares, incluindo ferramentas de programação, navegadores, ferramentas gerais e jogos, além de configurar repositórios e chaves GPG quando necessário.

1. Basta clonar o repositório
2. Na pasta /scripts localizar os arquivos
3. Tornar o Script Executável. Dê permissão de execução ao script: `chmod +x install_apps.sh`
4. Executar o Script. Execute o script no terminal: `./install_apps.sh`

## Funcionalidades

- Instalação de ferramentas de desenvolvimento: Android Studio, Visual Studio Code, Sublime Text, Emacs, IntelliJ IDEA, DBeaver, Postman, FileZilla e Appium.
- Instalação de navegadores: Opera, Google Chrome e Chromium.
- Instalação de ferramentas gerais: Calibre, Spotify, Mega, Flameshot, Hydrapaper, Discord, OBS Studio e Teams.
- Instalação de jogos e suporte gráfico: Steam, drivers da NVIDIA, Vulkan e QEMU.
- Limpeza de pacotes desnecessários após a instalação.

## Requisitos

- Sistema operacional: Linux Mint (baseado no Debian) atualizado

## Referências e Guias de Instalação

[O Guia DEFINITIVO de UBUNTU para Devs Iniciantes - Fabio Akita](https://youtu.be/epiyExCyb2s)

[Dúvidas e Instalações](https://www.edivaldobrito.com.br/)

## Considerações

- Certifique-se de que todos os comandos no script sejam executados sem erros. Caso ocorra algum erro de instalação, verifique se os repositórios estão corretos e se a conexão com a internet está ativa.

- Este script foi testado em versões recentes do Linux Mint. Para outras distribuições baseadas no Debian, pode ser necessário realizar ajustes.

- Você pode personalizar o script adicionando ou removendo pacotes conforme suas necessidades.
