
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

00000000004023a0 <phase_04>:
  4023a0:	endbr64
  4023a4:	push   %rbp
  4023a5:	mov    %rsp,%rbp
  4023a8:	push   %r12
  4023aa:	mov    %rsi,%r12                          //r12 = challenge
  4023ad:	mov    $0x1,%esi                          //1个输入
  4023b2:	push   %rbx
  4023b3:	mov    %rdi,%rbx                          //rbx = 字符串地址
  4023b6:	sub    $0x10,%rsp                         //rbp_8_16__32(rsp)
  4023ba:	call   402c70 <valid_u32_fields>
  4023bf:	test   %al,%al
  4023c1:	jne    4023d0 <phase_04+0x30>
  4023c3:	add    $0x10,%rsp
  4023c7:	xor    %eax,%eax
  4023c9:	pop    %rbx
  4023ca:	pop    %r12
  4023cc:	pop    %rbp
  4023cd:	ret
  4023ce:	xchg   %ax,%ax
  4023d0:	xor    %eax,%eax                          //rax = 0
  4023d2:	lea    -0x14(%rbp),%rdx                   //rbp_8_16__20(rdx)__32(rsp)
  4023d6:	mov    $0x403189,%esi                     //esi = 0x403189
  4023db:	mov    %rbx,%rdi                          //rdi = rbx = 字符串地址
  4023de:	call   4011e0 <__isoc99_sscanf@plt>
  4023e3:	cmp    $0x1,%eax
  4023e6:	jne    4023c3 <phase_04+0x23>
  4023e8:	mov    %r12,%rcx                          
  4023eb:	mov    %r12,%rax
  4023ee:	mov    %r12d,%edi
  4023f1:	xor    %esi,%esi                          //rsi = 0
  4023f3:	shr    $0x20,%rax                         //rax = challenge >> 32
  4023f7:	shr    $0x7,%rcx
  4023fb:	and    $0x7f,%edi                         //edi = challenge & 0x7f
  4023fe:	mov    $0x7f,%edx                         //edx = 0x7f
  402403:	xor    %eax,%ecx                          //ecx = (challenge >> 7) ^ (challenge >> 32)
  402405:	call   402330 <p4_walk>
  40240a:	cmp    %eax,-0x14(%rbp)                   //存入的数
  40240d:	sete   %al
  402410:	add    $0x10,%rsp
  402414:	pop    %rbx
  402415:	pop    %r12
  402417:	pop    %rbp
  402418:	ret

Disassembly of section .fini:

Dump of assembler code for function p4_walk:
  402330 <+0>:     endbr64
  402334 <+4>:     mov    %edi,%eax                 //eax = edi 初值challenge & 0x7f
  402336 <+6>:     mov    %edx,%edi                 //edi = edx 初值0x7f
  402338 <+8>:     sub    %esi,%edi                 //edi = edi - esi 初值是减0
  40233a <+10>:    shr    $1,%edi                   //edi = edi >> 1
  40233c <+12>:    add    %esi,%edi                 //edi = edi + esi edi和esi的中间值，向下取整
  40233e <+14>:    cmp    %eax,%edi                 //如果edi = eax，执行最后结果
  402340 <+16>:    je     0x402390 <p4_walk+96>
  402342 <+18>:    push   %rbp
  402343 <+19>:    mov    %rsp,%rbp                 
  402346 <+22>:    push   %rbx                      //保存上一轮rbx
  402347 <+23>:    lea    (%rdi,%rcx,1),%ebx        //ebx = rdi + ecx
  40234a <+26>:    sub    $0x8,%rsp                 //rbp_(rbx输入字符串)8__16(rsp)
  40234e <+30>:    cmp    %edi,%eax                 //if eax < edi    rsi eax mrdi rdi
  402350 <+32>:    jb     0x402370 <p4_walk+64>
  402352 <+34>:    lea    0x1(%rdi),%esi            //if eax > edi(其实只有大于) esi = rdi + 1重置下限
  402355 <+37>:    mov    %eax,%edi                 
  402357 <+39>:    call   0x402330 <p4_walk>        
  40235c <+44>:    lea    (%rax,%rax,2),%eax        //块2 eax = 3 * eax
  40235f <+47>:    xor    %ebx,%eax                 
  402361 <+49>:    mov    -0x8(%rbp),%rbx           //搞出上一轮的rbx用来下一步计算
  402365 <+53>:    leave
  402366 <+54>:    xor    $0x7,%eax                 //eax = eax ^ ebx ^ 7
  402369 <+57>:    ret
  40236a <+58>:    nopw   0x0(%rax,%rax,1)
  402370 <+64>:    lea    -0x1(%rdi),%edx           //edx = rdi - 1 结合之后，这是在更新上限 rdi = rdi - 1
  402373 <+67>:    mov    %eax,%edi                 //edi = eax
  402375 <+69>:    call   0x402330 <p4_walk>        //上一步相当于无效，保留eax的数值
  40237a <+74>:    lea    (%rax,%rax,2),%eax        //块1
  40237d <+77>:    xor    %ebx,%eax
  40237f <+79>:    mov    -0x8(%rbp),%rbx
  402383 <+83>:    leave
  402384 <+84>:    xor    $0x11,%eax                //eax = eax ^ ebx ^ 17
  402387 <+87>:    ret
  402388 <+88>:    nopl   0x0(%rax,%rax,1)
  402390 <+96>:    lea    0xb3(%rdi),%eax
  402396 <+102>:   xor    %ecx,%eax                 //ecx没变过 eax = (rdi + 0xb3) ^ ((challenge >> 7) ^ (challenge >> 32))
  402398 <+104>:   ret
  比较，等于时直接退出，不等时会反复迭代，直到，相等，进入下一步
