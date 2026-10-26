
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

00000000004025c0 <phase_06>:
  4025c0:	endbr64
  4025c4:	push   %rbp
  4025c5:	mov    %rsp,%rbp
  4025c8:	push   %r12
  4025ca:	mov    %rsi,%r12                        //r12 = challenge
  4025cd:	mov    $0x1,%esi                        //一个输入
  4025d2:	push   %rbx
  4025d3:	mov    %rdi,%rbx                        //rbx = 输入字符串地址
  4025d6:	sub    $0x10,%rsp                       //rbp_8_16__32(rsp)
  4025da:	call   402c70 <valid_u32_fields>        
  4025df:	test   %al,%al
  4025e1:	jne    4025f0 <phase_06+0x30>
  4025e3:	add    $0x10,%rsp
  4025e7:	xor    %eax,%eax                        //输入不对就爆炸喵
  4025e9:	pop    %rbx
  4025ea:	pop    %r12
  4025ec:	pop    %rbp
  4025ed:	ret
  4025ee:	xchg   %ax,%ax
  4025f0:	xor    %eax,%eax                        //rax = 0
  4025f2:	lea    -0x14(%rbp),%rdx                 //rbp_8_16__20(rdx)__32(rsp)
  4025f6:	mov    $0x403189,%esi                   //esi = $0x403189
  4025fb:	mov    %rbx,%rdi                        //rdi = 输入字符串地址
  4025fe:	call   4011e0 <__isoc99_sscanf@plt>
  402603:	cmp    $0x1,%eax                        
  402606:	jne    4025e3 <phase_06+0x23>           //输出不是1就爆炸
  402608:	mov    %r12,%rdi                        //rdi = challenge
  40260b:	call   402570 <p6_dispatch>
  402610:	cmp    %eax,-0x14(%rbp)                 //输出与rbp-20存储的进行比较
  402613:	sete   %al                              //返回1，成功
  402616:	add    $0x10,%rsp
  40261a:	pop    %rbx
  40261b:	pop    %r12
  40261d:	pop    %rbp
  40261e:	ret

Disassembly of section .fini:

Dump of assembler code for function p6_dispatch:
  402570 <+0>:     endbr64
  402574 <+4>:     push   %rbp
  402575 <+5>:     mov    %rsp,%rbp               //rbp_8
  402578 <+8>:     push   %rbx                    
  402579 <+9>:     mov    %rdi,%rbx               //rbx = challenge
  40257c <+12>:    shr    $0x6,%rdi               //rdi = challenge >> 6
  402580 <+16>:    mov    %rbx,%rax               
  402583 <+19>:    shr    $0x20,%rax              
  402587 <+23>:    xor    %eax,%edi               //edi = challenge >> 32 ^ challenge >> 6
  402589 <+25>:    mov    %rbx,%rax               //rax = challenge
  40258c <+28>:    sub    $0x8,%rsp               //rbp_8__16(rsp)
  402590 <+32>:    and    $0x38,%ebx              //ebx = challenge & 0x38
  402593 <+35>:    and    $0x7,%eax               //eax = challenge & 0x7
  402596 <+38>:    call   *0x405e00(,%rax,8)      //call 0x405e00 + eax × 8, edi = challenge >> 32 ^ challenge >> 6
  40259d <+45>:    xor    $0xc0e,%eax
  4025a2 <+50>:    mov    %eax,%edi               //edi = 输出 ^ 0xc0e
  4025a4 <+52>:    call   *0x405e00(%rbx)         //同上
  4025aa <+58>:    mov    -0x8(%rbp),%rbx
  4025ae <+62>:    leave
  4025af <+63>:    add    $0x5c59,%eax            //第二次引用的结果+0x5c59
  4025b4 <+68>:    ret

  (gdb) x/8gx 0x405e00
0x405e00 <p6_ops>:      0x0000000000402530      0x00000000004024f0
0x405e10 <p6_ops+16>:   0x00000000004024f0      0x0000000000402520
0x405e20 <p6_ops+32>:   0x0000000000402540      0x0000000000402500
0x405e30 <p6_ops+48>:   0x00000000004024f0      0x0000000000402560

Dump of assembler code for function p6_op_0:
   0x0000000000402530 <+0>:     endbr64
   0x0000000000402534 <+4>:     mov    %edi,%eax
   0x0000000000402536 <+6>:     ror    $0x7,%eax  //eax = (edi >> 7) | (edi << 25)
   0x0000000000402539 <+9>:     ret
End of assembler dump.

Dump of assembler code for function p6_op_1_2_6:
   0x00000000004024f0 <+0>:     endbr64
   0x00000000004024f4 <+4>:     mov    %edi,%eax
   0x00000000004024f6 <+6>:     rol    $0x2,%eax
   0x00000000004024f9 <+9>:     xor    $0x88db,%eax         //eax = ((edi >> 30) | (edi << 2)) ^ 0x88db
   0x00000000004024fe <+14>:    ret
End of assembler dump.

Dump of assembler code for function p6_op_3:
   0x0000000000402520 <+0>:     endbr64
   0x0000000000402524 <+4>:     mov    %edi,%eax
   0x0000000000402526 <+6>:     xor    $0x4bf5,%eax         
   0x000000000040252b <+11>:    lea    (%rax,%rdi,2),%eax   //eax = (edi ^ 0x4bf5) + 2 * edi
   0x000000000040252e <+14>:    ret
End of assembler dump.

Dump of assembler code for function p6_op_4:
   0x0000000000402540 <+0>:     endbr64
   0x0000000000402544 <+4>:     mov    %edi,%eax            
   0x0000000000402546 <+6>:     shr    $0x3,%eax
   0x0000000000402549 <+9>:     xor    %edi,%eax            
   0x000000000040254b <+11>:    add    $0x12b7,%eax         //eax = 0x12b7 + (edi ^ (edi >> 3))
   0x0000000000402550 <+16>:    ret
End of assembler dump.

Dump of assembler code for function p6_op_5:
   0x0000000000402500 <+0>:     endbr64
   0x0000000000402504 <+4>:     mov    %edi,%eax
   0x0000000000402506 <+6>:     lea    (%rdi,%rdi,2),%edx   //edx = 3 * edi
   0x0000000000402509 <+9>:     shl    $0x5,%eax
   0x000000000040250c <+12>:    add    $0x1bf0,%eax         //eax = (edi << 5) + 0x1bf0
   0x0000000000402511 <+17>:    xor    %edx,%eax            //eax = (3 * edi) ^ ((edi << 5) + 0x1bf0)
   0x0000000000402513 <+19>:    ret
End of assembler dump.

Dump of assembler code for function p6_op_7:
   0x0000000000402560 <+0>:     endbr64
   0x0000000000402564 <+4>:     lea    0x3481(%rdi),%eax    
   0x000000000040256a <+10>:    shr    $1,%edi
   0x000000000040256c <+12>:    xor    %edi,%eax            //eax = (edi + 0x3481) ^ (edi >> 1)
   0x000000000040256e <+14>:    ret
End of assembler dump.