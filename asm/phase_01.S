
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000402090 <phase_01>:
  402090:	endbr64
  402094:	push   %rbp                           /*移入栈*/
  402095:	mov    %rsp,%rbp                      /*rbp作为栈帧基址*/
  402098:	push   %r12                           /*移入栈，rsp = rbp - (r12)*/
  40209a:	mov    %rsi,%r12                      /*r12现在表示challenge*/
  40209d:	mov    $0x1,%esi                      /*esi现在是0x1*/ 
  4020a2:	push   %rbx                           /*移入栈，rsp = rbp - (r12) - (rbx)*/
  4020a3:	mov    %rdi,%rbx                      /*rbx表示输入字符串*/
  4020a6:	sub    $0x10,%rsp                     /*rsp再减16*/
  4020aa:	call   402c70 <valid_u32_fields>      /*检查输入合法？*/
  4020af:	test   %al,%al                        /*0则ZF=1*/
  4020b1:	jne    4020c0 <phase_01+0x30>         /*刚刚al是0就不继续，不是0就跳转*/
  4020b3:	add    $0x10,%rsp                     /*rsp加回去*/
  4020b7:	xor    %eax,%eax                      /*rax清零*/
  4020b9:	pop    %rbx                           /*撤销移入栈*/
  4020ba:	pop    %r12                           /*撤销移入栈*/
  4020bc:	pop    %rbp                           /*再撤销*/
  4020bd:	ret                                   /*返回0，简而言之，输入不合法就啥也没干，估计也是失败*/
  4020be:	xchg   %ax,%ax                        /*？？？*/
  4020c0:	xor    %eax,%eax                      /*rax清零*/
  4020c2:	lea    -0x14(%rbp),%rdx               /*rdx = rbp - 20，rbp是栈帧基址*/
  4020c6:	mov    $0x403189,%esi                 /*rsi存了一个应该是地址的东西*/
  4020cb:	mov    %rbx,%rdi                      /*rdi存储输入字符串*/
  4020ce:	call   4011e0 <__isoc99_sscanf@plt>   /*sscanf，rsi存的地址可能就在这里填上*/
  4020d3:	cmp    $0x1,%eax                      /*如果输入不对，也爆炸*/
  4020d6:	jne    4020b3 <phase_01+0x23>         /*跳转回去就是了*/
  4020d8:	mov    %r12,%rdi                      /*rdi现在是challenge*/
  4020db:	call   402050 <p1_compute>            /*运行p1*/
  4020e0:	cmp    %eax,-0x14(%rbp)               /*比较刚刚的输出和rbp - 20的位置，而这里曾经被rdx表示*/
  4020e3:	sete   %al                            /*做判断，正确返回1*/
  4020e6:	add    $0x10,%rsp                     /*没有意义了*/
  4020ea:	pop    %rbx
  4020eb:	pop    %r12
  4020ed:	pop    %rbp
  4020ee:	ret

Disassembly of section .fini:

Dump of assembler code for function p1_compute:
  402050 <+0>:     endbr64
  402054 <+4>:     push   %rbp                  
  402055 <+5>:     mov    %rdi,%rax             /*rax现在是challenge*/
  402058 <+8>:     mov    %rdi,%rdx             /*rdx也是challenge*/
  40205b <+11>:    mov    %edi,%esi             /*rsi里是challenge的低32位*/
  40205d <+13>:    shr    $0x20,%rax            /*rax右移32位，现在是challenge的高32位*/
  402061 <+17>:    mov    %edi,%r8d             /*r8d里也是challenge的低32位*/
  402064 <+20>:    shr    $0x10,%rdx            /*rdx右移16位*/
  402068 <+24>:    mov    %eax,%edi             /*edi是challenge高32位了*/
  40206a <+26>:    mov    %rsp,%rbp             /*rbp作为栈帧基址*/
  40206d <+29>:    call   0x402040 <p1_step2>   /*我管输出叫作x吧*/
  402072 <+34>:    mov    %rdx,%rsi             /*rsi是challenge右移16位*/
  402075 <+37>:    mov    %r8d,%edi             /*rdi是challenge的低32位*/
  402078 <+40>:    mov    %eax,%ecx             /*rcx是刚刚的按位异或x*/
  40207a <+42>:    call   0x402020 <p1_step0>   /*就叫y吧*/
  40207f <+47>:    mov    %ecx,%esi             /*esi现在是x*/
  402081 <+49>:    mov    %eax,%edi             /*edi现在是y*/
  402083 <+51>:    call   0x402030 <p1_step1>
  402088 <+56>:    pop    %rbp
  402089 <+57>:    ret
End of assembler dump.
Dump of assembler code for function p1_step2:
  402040 <+0>:     endbr64
  402044 <+4>:     lea    (%rdi,%rdi,4),%eax    /*rax存了5倍的challenge高32位，但只有32位*/
  402047 <+7>:     add    $0x2e,%esi            /*rsi现在是challenge的低32位加46，依然只有32位*/
  40204a <+10>:    xor    %esi,%eax             /*按位异或*/
  40204c <+12>:    ret
End of assembler dump.
Dump of assembler code for function p1_step0:
  402020 <+0>:     endbr64
  402024 <+4>:     sub    %esi,%edi             /*edi是challenge低32位减中间32位*/
  402026 <+6>:     lea    0x9648(%rdi,%rdi,2),%eax  /*3倍edi+0x9648的32位结果*/
  40202d <+13>:    ret
End of assembler dump.
Dump of assembler code for function p1_step1:
  402030 <+0>:     endbr64
  402034 <+4>:     lea    (%rdi,%rdi,4),%eax    /*eax现在是5倍y，只有32位*/
  402037 <+7>:     add    %esi,%eax             /*eax加上x，依然只有32位*/
  402039 <+9>:     xor    $0xfcbb,%eax          /*结果是eax与这个数异或*/
  40203e <+14>:    ret
End of assembler dump.