# Contador / FPGA / SystemVerilog

Este código implementa um contador de clock com valores de 0 a 9, usando uma saída de 7 bits para exibir os valores em um display hexadecima

![DiagramaBlocos](https://user-images.githubusercontent.com/50549048/231699067-b6040a9e-7453-4f71-9778-c3bfd6cd1a75.png)


### Design: Módulo dcount

dcount é um módulo de contador de 4 bits que produz um valor de 7 bits com base no valor atual do contador.
Possui três portas: clk, rst e out.
O registrador cnt armazena o valor atual do contador e é incrementado em cada borda de subida de clk, desde que rst não esteja ativado.
Quando rst é ativado, cnt é resetado para 0.
O bloco always @ (*) atribui o valor de 7 bits apropriado a out com base no valor atual do contador.

### Testbench: Módulo div_cnt_tb:


div_cnt_tb instância um módulo dcount, clk_cnt_u0, e conecta suas portas a clk, rst e clk_divn, respectivamente.
No bloco inicial, rst é ativado e desativado para inicializar o circuito.
clk é alternado repetidamente usando um loop de repetição com um atraso de 5 unidades de tempo.
A simulação é encerrada com $ finish após 200 ciclos de clock.
Este código simula a funcionalidade do módulo dcount e verifica se ele conta corretamente. Observe que o parâmetro counter_size pode ser ajustado para alterar o tamanho do contador.

### Demonstração

Configurando o FPGA para um clock com periodo de 1 segundo podemos conferir o contador funcionando devidamente:

https://user-images.githubusercontent.com/50549048/231699006-e23cf066-0db6-44a8-b4b5-0e5cc5528104.mp4

