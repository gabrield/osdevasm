<p align="center">
<font size="14">Estudos sobre x86</font>
<br><br>
</p>

__________________________________


_Este estudo tem a intenção de aprofundar os conhecimentos sobre a arquitetura de computadores x86, usando uma abordagem prática A abordagem deste estudo passa por alguns itens, tais são:_

* Processo de __boot__
* Entender para que servem os _registradores_ do processador e como acessá-los via __assembly__
* Como escrever e compilar programas para _x86_ onde não há sistema operacional
* Entender como funciona uma pilha (__stack__)
* Acessar dispositivos, como vídeo e teclado usando a BIOS via ISR
* Juntando tudo e criando um pequeno sistema operacional

O termo _x86_ pode ser referir tanto para um conjunto de instruções e a microprocessadores que implementam esse mesmo conjunto. O nome x86 é derivado a partir do fato que muitos processadores antigos da Intel tinham nomes terminados em 86.
__________________________________

## __Registradores__

A arquitetura _x86_ possui 8 registradores de propósito geral, ou GPR (General-Purpose Registes), 6 registros de segmento, 1 registrador de flags e um registrador de Ponteiro de Instrução, ou IP (Instruction Pointer).

###  Registradores de propósito geral (_GPR_)
* Accumulator register (AX). Usado em operações aritiméticas.
* Counter register (CX). Usado em instruções de shift/rotate e loops.
* Data register (DX). Usado em operações aritiméticas e operações de I/O
* Base register (BX). Usado como ponteiro para dados (localizado no registro de segmento DS, quando em modo segmentado).
* Stack Pointer register (SP). Aponta para o topo da pilha.
* Stack Base Pointer register (BP). Usado para apontar para a base da pilha.
* Source Index register (SI). Usado como ponteiro para uma fonte de dados usado em operações de cadeias de dados (ex: arrays).
* Destination Index register (DI). Usado como ponteiro para um destino em umaoperação de cadeia de dados.

### Registradores de segmentos (SR)

* Stack Segment (SS). Ponteiro para pilha.
* Code Segment (CS). Ponteiro para o código.
* Data Segment (DS). Ponteiro para dados.
* Extra Segment (ES). Pointeiro para dados extra
* Segment (FS). Pointeiero para mais dados extra.
* Segment (GS). Pointeiro para ainda mais dados extra.


###  Registrador EFLAGS

O registrador _EFLAGS_ é um registrador de 32 bits usada como uma coleção de bits representando valores booleanos para armazenar os resultados das operações e o estado do processador. Para melhor referência, [aqui](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture#EFLAGS_Register) há mais informações.


###  Registrador Ponteiro de Instruções (IP)

O Ponteiro de Instrução armazena o endereço da próxima instrução a ser executada se nenhum saldo condicional acorre. O _IP_ só pode ser somente lido através da pilha após a chamada de uma intrução __call__.