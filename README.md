# Estudo de Programação Concorrente
###### 🚧 Em construção... 🚧

Este repositório é destinado ao armazenamento de códigos, exemplos práticos e análises teóricas sobre **Programação Concorrente**, com foco na comparação entre os ecossistemas Java e Perl. O conteúdo é fundamentado em conceitos acadêmicos de escalonamento, gerência de memória e sincronização.

## 🎯 Objetivos do Projeto
- Implementar algoritmos clássicos de concorrência em diferentes linguagens.
- Analisar o impacto da gerência de memória (Heap vs. Interpreter Cloning) na criação de threads.
- Comparar o desempenho e a escalabilidade entre threads nativas e modelos leves.

## 🛠️ Tecnologias e Conceitos

### Java
A evolução da linguagem permitiu diferentes abordagens de concorrência ao longo das décadas:
- **Platform Threads:** Mapeamento direto 1:1 com threads do Sistema Operacional.
- **Virtual Threads (Project Loom):** Introduzidas para suportar milhões de unidades de execução com baixo overhead.
- **Sincronização:** Uso de monitores, travas e utilitários do pacote `java.util.concurrent`.

### Perl
Abordagem através do modelo **ithreads (Interpreter Threads)**:
- **Compartilhamento Zero:** Por padrão, nada é compartilhado; o interpretador é clonado para cada thread.
- **Memória Compartilhada:** Uso do módulo `threads::shared` para comunicação explícita entre threads.
- **Overhead:** Análise do custo de memória superior devido à cópia da árvore de dados do programa.

## 📂 Estrutura do Repositório
- `/java`:
- `/perl`:
- `/docs`: Notas de aula e análises comparativas baseadas no material do DIMAP/UFRN.


## 📚 Referências
