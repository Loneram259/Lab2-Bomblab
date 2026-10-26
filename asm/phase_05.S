
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000402480 <phase_05>:
  402480:	endbr64
  402484:	push   %rbp
  402485:	mov    %rsp,%rbp
  402488:	push   %r12
  40248a:	mov    %rsi,%r12                      //r12 = challenge
  40248d:	mov    $0x2,%esi                      //两个输入
  402492:	push   %rbx                           
  402493:	mov    %rdi,%rbx                      //rbx = 输入字符串地址
  402496:	sub    $0x10,%rsp                     //rbp_8_16__32(rsp)
  40249a:	call   402c70 <valid_u32_fields>
  40249f:	test   %al,%al
  4024a1:	jne    4024b0 <phase_05+0x30>
  4024a3:	xor    %eax,%eax
  4024a5:	add    $0x10,%rsp
  4024a9:	pop    %rbx
  4024aa:	pop    %r12
  4024ac:	pop    %rbp
  4024ad:	ret
  4024ae:	xchg   %ax,%ax
  4024b0:	xor    %eax,%eax                      //eax = 0
  4024b2:	lea    -0x18(%rbp),%rcx               //rcx = rbp - 24 第二个数
  4024b6:	lea    -0x1c(%rbp),%rdx               //rdx = rbp - 28 第一个数
  4024ba:	mov    $0x403186,%esi
  4024bf:	mov    %rbx,%rdi
  4024c2:	call   4011e0 <__isoc99_sscanf@plt>
  4024c7:	cmp    $0x2,%eax
  4024ca:	jne    4024a3 <phase_05+0x23>
  4024cc:	lea    -0x14(%rbp),%rsi               //rsi = rbp - 20
  4024d0:	mov    %r12,%rdi                      //rdi = challenge
  4024d3:	call   402420 <p5_traverse>
  4024d8:	mov    %eax,%edx                      //edx = 输出
  4024da:	xor    %eax,%eax
  4024dc:	cmp    %edx,-0x1c(%rbp)               //第一个数是上一个函数的输出
  4024df:	jne    4024a5 <phase_05+0x25>
  4024e1:	mov    -0x14(%rbp),%eax               //eax读取rbp - 20
  4024e4:	cmp    %eax,-0x18(%rbp)               //rbp - 20对应第二个输入
  4024e7:	sete   %al
  4024ea:	jmp    4024a5 <phase_05+0x25>         //成功并返回1

Disassembly of section .fini:

Dump of assembler code for function p5_traverse:
  402420 <+0>:     endbr64
  402424 <+4>:     mov    %rdi,%rax                     
  402427 <+7>:     mov    %rdi,%rcx                     
  40242a <+10>:    mov    %rsi,%r8                      //r8 = rbp - 20
  40242d <+13>:    and    $0x7,%eax                     
  402430 <+16>:    shr    $0x3,%rcx                     //rcx = challenge >> 3
  402434 <+20>:    mov    0x405b60(,%rax,8),%rdx        //rdx对应0x405b60 + (eax 第一次是challenge & 7) * 8内的内容
  /*uint_32_1, uint_32_2, address_64
    +0         +4         +8        */
  40243c <+28>:    mov    %rdi,%rax                     
  40243f <+31>:    shr    $0x20,%rdi                    
  402443 <+35>:    shr    $0x6,%rax                     
  402447 <+39>:    xor    %edi,%eax                     
  402449 <+41>:    mov    0x4(%rdx),%esi                //esi对应(之前的内容+4)所对应的内容
  40244c <+44>:    mov    %ecx,%edi                     //edi = challenge >> 3
  40244e <+46>:    xor    $0x3506,%eax                  
  402453 <+51>:    add    (%rdx),%eax                   
  402455 <+53>:    lea    (%rax,%rax,4),%eax            //eax = 5 * (rdx对应4字节内容 + ((challenge >> 6) ^ (challenge >> 32) ^ 0x3506))
  402458 <+56>:    mov    %esi,(%r8)                    //rbp - 20里存放esi
  40245b <+59>:    xor    %esi,%eax                     //eax = eax ^ esi
  40245d <+61>:    and    $0x3,%edi                     //edi = (challenge >> 3) & 3
  402460 <+64>:    je     0x40247f <p5_traverse+95>     //if (edi == 0) 结束
  402462 <+66>:    mov    $0x1,%ecx                     //else ecx = 1
  402467 <+71>:    mov    0x8(%rdx),%rdx                //rdx存放(0x405b60 + (eax 第一次是challenge & 7) * 8内的内容 + 8)内的内容
  40246b <+75>:    add    $0x1,%ecx                     //ecx++
  40246e <+78>:    mov    0x4(%rdx),%esi                //esi存放(那个内容+4)对应的内容
  402471 <+81>:    add    (%rdx),%eax                   
  402473 <+83>:    lea    (%rax,%rax,4),%eax
  402476 <+86>:    mov    %esi,(%r8)                    //rbp - 20里存放esi
  402479 <+89>:    xor    %esi,%eax
  40247b <+91>:    cmp    %ecx,%edi                     //直到ecx > edi结束
  40247d <+93>:    jae    0x402467 <p5_traverse+71>
  40247f <+95>:    ret

  (gdb) x/8gx 0x405b60
0x405b60 <p5_heads>:    0x0000000000405c40 0     0x0000000000405bc0 1
0x405b70 <p5_heads+16>: 0x0000000000405c20 2     0x0000000000405c30 3
0x405b80 <p5_heads+32>: 0x0000000000405ba0 4     0x0000000000405be0 5
0x405b90 <p5_heads+48>: 0x0000000000405c50 6     0x0000000000405c10 7

(gdb) x/48wx 0x405ba0
0x405ba0 <p5_nodes>:    0x0000302a      0x0000053c      0x00405be0      0x00000000            4 >> 5
0x405bb0 <p5_nodes+16>: 0x00003d46      0x00000245      0x00000000      0x00000000            11 >> 12
0x405bc0 <p5_nodes+32>: 0x00006a6b      0x00000a1b      0x00405c20      0x00000000            1 >> 2
0x405bd0 <p5_nodes+48>: 0x00003256      0x00000331      0x00405bb0      0x00000000            10 >> 11
0x405be0 <p5_nodes+64>: 0x0000c3ee      0x00000825      0x00405c50      0x00000000            5 >> 6
0x405bf0 <p5_nodes+80>: 0x0000cdc2      0x0000075b      0x00405bd0      0x00000000            9 >> 10
0x405c00 <p5_nodes+96>: 0x0000a363      0x0000012b      0x00405bf0      0x00000000            8 >> 9
0x405c10 <p5_nodes+112>:        0x0000d54e      0x00000928      0x00405c00      0x00000000    7 >> 8
0x405c20 <p5_nodes+128>:        0x0000f149      0x00000b12      0x00405c30      0x00000000    2 >> 3
0x405c30 <p5_nodes+144>:        0x0000123c      0x00000471      0x00405ba0      0x00000000    3 >> 4
0x405c40 <p5_nodes+160>:        0x00005dfe      0x0000006d      0x00405bc0      0x00000000    0 >> 1
0x405c50 <p5_nodes+176>:        0x0000839f      0x0000063d      0x00405c10      0x00000000    6 >> 7