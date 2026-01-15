# Arquivo de configuração Setup Linux Mint

Este script automatiza a instalação de ferramentas e aplicativos essenciais para desenvolvimento no Linux Mint. Ele instala uma variedade de softwares, incluindo ferramentas de programação, navegadores, ferramentas gerais e jogos, além de configurar repositórios e chaves GPG quando necessário.

## REGRAS: O script deve conter

- Verifique Conexão com internet
- Adicionar validações de pré-requisitos
- Shebang nos arquivos shellscripts
- Tratamento de erros
- Verificação de Integridade
- Baixar de repositórios oficiais
- Permissões de usuário - ao executar os scripts devem sempre ter permissão informe isso no início com base em boas práticas
- Verificação de checksum em todos os downloads
- Validação HTTPS/certificado
- Verificação de download foi bem-sucedido
- Arquivos .deb locais devem removidos após instalação
- Verificar fingerprint
- Distribuição Linux compatível
- Versão do sistema operacional
- Espaço em disco disponível
- Evite URLs fixas para não ficar desatualizadas
- Variáveis configuráveis
- Download para diretório temporário
- Nível de severidade (INFO, WARNING, ERROR)
- Documentar cabeçalhos dos scripts
- Evite Code Injection: Scripts de terceiros executados sem revisão
- Privilege Escalation: Scripts não podem solicitar sudo sem validação
- Implementar validação de distribuição Linux
- Symlink Attack: Arquivo não podem ser substituído por link simbólico malicioso
- Download para diretório temporário com permissões restritas
- Criar função de cleanup com trap
- Implementar set -euo pipefail em todos os scripts
- Implementar BATS para testes unitários
- Criar scripts de rollback (este deve ser um arquivo.sh separado informativo)

### Drives NVIDIA

- NVIDIA drivers provided by the Ubuntu repositories

### Security Atenction

- Método deprecado: apt-key foi descontinuado no Ubuntu 22.04+ evite isso
- Configurar repositório com chave específica

### Tests

- Testes Unitários (com BATS - Bash Automated Testing System)
- Análise Estática (com ShellCheck)
- Testes de Integração (com Docker)

## Fixes

- Remover sudo npm install -g e usar nvm
- Substituir apt-key add por método moderno
- Implementar sistema de logging padronizado
- Adicionar suporte a --help e --version
- Implementar idempotência (script pode ser executado múltiplas vezes)
- Implementar sistema de módulos
- Adicionar suporte a múltiplas distribuições

## Mensagens

- Feedback claro do que está acontecendo
- Se falhar, mostra erro específico
- Mensagens de Validações de problemas antes de começar

### Referencias

- [BinaryDriverHowto/Nvidia](https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia)
- [Shell Style Guide](https://google.github.io/styleguide/shellguide.html#s5.1-constants-and-environment-variable-names)
- [All about secure apt](https://wiki.debian.org/SecureApt)
- [Third Party JavaScript Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Third_Party_Javascript_Management_Cheat_Sheet.html)
- [Use Bash Strict Mode (Unless You Love Debugging)](http://redsymbol.net/articles/unofficial-bash-strict-mode/)
- [Shell Command Language](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)
- [Code Injection](https://owasp.org/www-community/attacks/Code_Injection)
- [Information and Communications Technology Supply Chain Security](https://www.cisa.gov/topics/information-communications-technology-supply-chain-security)
- [CWE-367: Time-of-check Time-of-use (TOCTOU) Race Condition](https://cwe.mitre.org/data/definitions/367.html)
- [Downloading and installing packages globally](https://docs.npmjs.com/downloading-and-installing-packages-globally)
- [Install npm packages globally without sudo on macOS and Linux](https://github.com/sindresorhus/guides/blob/main/npm-global-without-sudo.md)
- [bats-core](https://github.com/bats-core/bats-core)
- [ShellCheck](https://www.shellcheck.net/)
