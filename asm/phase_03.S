
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

00000000004022b0 <phase_03>:
  4022b0:	endbr64
  4022b4:	push   %rbp
  4022b5:	mov    %rsp,%rbp
  4022b8:	push   %r12
  4022ba:	mov    %rsi,%r12                    //r12 = challenge
  4022bd:	mov    $0x2,%esi                    //2个输入
  4022c2:	push   %rbx
  4022c3:	mov    %rdi,%rbx                    //rbx = 输入字符串地址
  4022c6:	sub    $0x10,%rsp                   //rbp_8_16__32(rsp)
  4022ca:	call   402c70 <valid_u32_fields>
  4022cf:	test   %al,%al
  4022d1:	jne    4022e0 <phase_03+0x30>
  4022d3:	xor    %eax,%eax
  4022d5:	add    $0x10,%rsp
  4022d9:	pop    %rbx
  4022da:	pop    %r12
  4022dc:	pop    %rbp
  4022dd:	ret
  4022de:	xchg   %ax,%ax
  4022e0:	xor    %eax,%eax                    
  4022e2:	lea    -0x14(%rbp),%rcx
  4022e6:	lea    -0x18(%rbp),%rdx             //rbp_8_16__20(rcx)__24(rdx)__32(rsp)
  4022ea:	mov    $0x403186,%esi               //esi = 0x403186
  4022ef:	mov    %rbx,%rdi
  4022f2:	call   4011e0 <__isoc99_sscanf@plt>
  4022f7:	cmp    $0x2,%eax                    //需要两个输入
  4022fa:	jne    4022d3 <phase_03+0x23>
  4022fc:	mov    %r12d,%edi                   //edi = challenge低32位
  4022ff:	xor    %eax,%eax
  402301:	and    $0x7,%edi                    //edi = challenge & 0x7
  402304:	cmp    %edi,-0x18(%rbp)             //rbp-24，第一个输入与这个相同
  402307:	jne    4022d5 <phase_03+0x25>       
  402309:	mov    %r12,%rax                    //
  40230c:	mov    %r12,%rsi
  40230f:	shr    $0x3,%rax
  402313:	shr    $0x20,%rsi
  402317:	xor    %eax,%esi                    //esi = (challenge >> 32) ^ (challenge >> 3)
  402319:	call   402250 <p3_dispatch>
  40231e:	cmp    %eax,-0x14(%rbp)             //第二个输入与这个相同
  402321:	sete   %al
  402324:	jmp    4022d5 <phase_03+0x25>

Disassembly of section .fini:

Dump of assembler code for function p3_dispatch:
  402250 <+0>:     endbr64
  402254 <+4>:     mov    %edi,%eax                 //eax = challenge & 0x7
  402256 <+6>:     mov    %esi,%edi                 //edi = (challenge >> 32) ^ (challenge >> 3)
  402258 <+8>:     cmp    $0x7,%eax
  40225b <+11>:    ja     0x4022a5 <p3_dispatch+85> //？？？
  40225d <+13>:    notrack jmp *0x405820(,%rax,8)
  402265 <+21>:    nopl   (%rax)
  402268 <+24>:    jmp    0x402220 <p3_case_5>      //打乱顺序，真恶心喵！
  40226a <+26>:    nopw   0x0(%rax,%rax,1)
  402270 <+32>:    jmp    0x402200 <p3_case_4>
  402272 <+34>:    nopw   0x0(%rax,%rax,1)
  402278 <+40>:    jmp    0x4021e0 <p3_case_3>
  40227d <+45>:    nopl   (%rax)
  402280 <+48>:    jmp    0x402230 <p3_case_6>
  402282 <+50>:    nopw   0x0(%rax,%rax,1)
  402288 <+56>:    jmp    0x4021b0 <p3_case_0>
  40228d <+61>:    nopl   (%rax)
  402290 <+64>:    jmp    0x402240 <p3_case_7>
  402292 <+66>:    nopw   0x0(%rax,%rax,1)
  402298 <+72>:    jmp    0x4021c0 <p3_case_1>
  40229d <+77>:    nopl   (%rax)
  4022a0 <+80>:    jmp    0x4021d0 <p3_case_2>
  4022a5 <+85>:    xor    %eax,%eax
  4022a7 <+87>:    ret
End of assembler dump.

0x405820:      402278     402280
0x405830:      402288     402290
0x405840:      402298     4022a0
0x405850:      402268     402270

Dump of assembler code from 0x4021b0 to 0x402250:
  4021b0 <p3_case_0+0>:    endbr64          2
  4021b4 <p3_case_0+4>:    lea    (%rdi,%rdi,1),%eax
  4021b7 <p3_case_0+7>:    xor    $0x4cd0,%eax                  //eax = 0x4cd0 ^ (2 * edi)
  4021bc <p3_case_0+12>:   ret
  4021bd:  nopl   (%rax)                    
  4021c0 <p3_case_1+0>:    endbr64          4
  4021c4 <p3_case_1+4>:    lea    0x166d4(%rdi,%rdi,4),%eax     //eax = 5 * edi + 0x166d4
  4021cb <p3_case_1+11>:   ret
  4021cc:  nopl   0x0(%rax)                 5
  4021d0 <p3_case_2+0>:    endbr64
  4021d4 <p3_case_2+4>:    lea    0xcfcf(%rdi,%rdi,4),%eax      //eax = 5 * edi + 0xcfcf
  4021db <p3_case_2+11>:   ret
  4021dc:  nopl   0x0(%rax)       
  4021e0 <p3_case_3+0>:    endbr64          0
  4021e4 <p3_case_3+4>:    mov    %edi,%eax                     //eax = edi
  4021e6 <p3_case_3+6>:    shr    $0x2,%edi                     // edi >> 2
  4021e9 <p3_case_3+9>:    xor    $0x14fa,%eax                  //eax = edi ^ 0x14fa
  4021ee <p3_case_3+14>:   add    %edi,%eax                     //eax = edi ^ 0x14fa + edi >> 2
  4021f0 <p3_case_3+16>:   ret
  4021f1:  data16 cs nopw 0x0(%rax,%rax,1)
  4021fc:  nopl   0x0(%rax)
  402200 <p3_case_4+0>:    endbr64          7
  402204 <p3_case_4+4>:    mov    %edi,%eax                     
  402206 <p3_case_4+6>:    shr    $0x2,%edi
  402209 <p3_case_4+9>:    xor    $0x3e8d,%eax
  40220e <p3_case_4+14>:   add    %edi,%eax                     //eax = edi ^ 0x3e8d + edi >> 2
  402210 <p3_case_4+16>:   ret
  402211:  data16 cs nopw 0x0(%rax,%rax,1)
  40221c:  nopl   0x0(%rax)                 
  402220 <p3_case_5+0>:    endbr64          6
  402224 <p3_case_5+4>:    lea    0xc1b(%rdi,%rdi,2),%eax       //eax = 3 * edi + 0xc1b
  40222b <p3_case_5+11>:   ret
  40222c:  nopl   0x0(%rax)       
  402230 <p3_case_6+0>:    endbr64          1
  402234 <p3_case_6+4>:    lea    (%rdi,%rdi,1),%eax            
  402237 <p3_case_6+7>:    xor    $0x7a2d,%eax                  //eax = (2 * edi) ^ 0x7a2d
  40223c <p3_case_6+12>:   ret
  40223d:  nopl   (%rax)                    3
  402240 <p3_case_7+0>:    endbr64
  402244 <p3_case_7+4>:    lea    0x4434a(%rdi,%rdi,4),%eax     //eax = (5 * edi) + 0x4434a
  40224b <p3_case_7+11>:   ret
  40224c:  nopl   0x0(%rax)
