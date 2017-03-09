<p align="center">
<font size="14">Construindo um SO x86/16bits | Uma abordagem na moral</font>
<br><br>
</p>

__________________________________


_Este documento tem como finalidade aprofundar os conhecimentos sobre a arquitetura x86 e assembly (usando NASM), usando uma abordagem prática. Todo o processo será voltado para o desenvolvimento de um pequeno sistema operacional na moral, com capacidade de dar boot, escrever na tela, receber entrada a partir de um teclado e executar pequenos comandos, além de um carregador de aplicações externas que podem ser carregadas através de uma midia (floppy/HD/SD). Todo desenvolvimento será feito usando um emulador de x86 (BOCHS) para que possamos ter um ambiente de testes confiável o homogêneo, sem neurose, sem caô._

_Se o barato é loko e o processo é lento no momento, deixa eu separar os tópicos assim:_

* [Processo de __boot__ - Uma bagulho sinistro](boot.d)
* [Setor de boot (16 bits modo real) - 512 bytes de pura emoção](bootsector.md)
* [Interrupções - Como lidar?](interrupts.md)
* [_Registradores_ - O que são? Onde vivem? O que comem?](registers.md)
  * Assembly (com NASM) - Tem que ter fé aqui, sim, tem que insistir!
* Escrevendo, compilando rodando programas em _x86_ - Metal nú
* Acessar dispositivos via BIOS - Voltar rimando no buzão, igual computador... tu tu tu tu...
  * Vídeo
  * Teclado
  * Disco
* Usando a pilha (__stack__), nem que seja Duracell
* Montando um pequeno sistema operacional bolado (larga o seu *UNIX e vem em mim)
* Fazendo um programa externo e carregando ele pelo SO novo bolado
* There is a natural mystic blowing through the air...

O termo _x86_ pode ser referir tanto para um conjunto de instruções e a microprocessadores que implementam esse mesmo conjunto. O nome x86 é derivado a partir do fato que muitos processadores antigos da Intel tinham nomes terminados em 86.

