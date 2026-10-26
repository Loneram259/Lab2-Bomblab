
0000000000402720 <secret_gate>:
  402720:	endbr64                               
  402724:	push   %rbp
  402725:	xor    %eax,%eax                              //eax = 0
  402727:	mov    $0x14,%ecx                             //ecx = 0x14
  40272c:	mov    %rsp,%rbp
  40272f:	push   %r14
  402731:	mov    %rdx,%r14                              //r14 = context
  402734:	push   %r13
  402736:	mov    %rsi,%r13                              //r13 = challenge
  402739:	push   %r12
  40273b:	lea    -0xd0(%rbp),%r12                       //r12 = rbp - 0xd0
  402742:	push   %rbx                                   
  402743:	mov    %rdi,%rbx                              //rbx = 输入字符串地址
  402746:	mov    %r12,%rdi                              
  402749:	sub    $0xb0,%rsp                             
  402750:	rep stos %rax,(%rdi)                          //ecx = 0
  402753:	movl   $0x0,(%rdi)                            //rbp_32__44____(00···0)____208(rsp)
  402759:	mov    %rbx,%rdi                              //rdi = 输入字符串地址
  40275c:	call   401190 <strlen@plt>                    //字符串求长度
  402761:	sub    $0x24,%rax                             //rax = 长度 - 36
  402765:	cmp    $0x7f,%rax                             //if (rax <= 0x7f)
  402769:	jbe    402780 <secret_gate+0x60>              //  跳转继续
  40276b:	add    $0xb0,%rsp
  402772:	xor    %eax,%eax
  402774:	pop    %rbx
  402775:	pop    %r12
  402777:	pop    %r13
  402779:	pop    %r14
  40277b:	pop    %rbp
  40277c:	ret                                           //失败
  40277d:	nopl   (%rax)
  402780:	mov    %rbx,%rsi                              //rsi = 输入字符串地址
  402783:	mov    %r12,%rdi                              //rdi = rbp - 208
  402786:	call   402700 <secret_copy>                   //eax = 数组长度，包含\0
  40278b:	cmpl   $0x4e45504f,-0xb0(%rbp)                //对4个字节进行检查
  402795:	jne    40276b <secret_gate+0x4b>              //不对就失败
  402797:	mov    %r14,%rdx                              //rdx = context
  40279a:	mov    %r13,%rsi                              //rsi = challenge
  40279d:	lea    -0xac(%rbp),%rdi                       //rdi = 从刚刚那4个字节前的定位
  4027a4:	call   402640 <secret_phase>
  4027a9:	add    $0xb0,%rsp
  4027b0:	pop    %rbx
  4027b1:	pop    %r12
  4027b3:	pop    %r13
  4027b5:	pop    %r14
  4027b7:	pop    %rbp
  4027b8:	ret

0000000000402700 <secret_copy>:
  402700:	endbr64
  402704:	xor    %eax,%eax
  402706:	cs nopw 0x0(%rax,%rax,1)
  402710:	movzbl (%rsi,%rax,1),%edx                     //edx = 读第一个字（i）
  402714:	mov    %dl,(%rdi,%rax,1)                      //rbp - 208存第一个字（i）
  402717:	add    $0x1,%rax                              //rax++
  40271b:	test   %dl,%dl                                //一直那么做，直到\0
  40271d:	jne    402710 <secret_copy+0x10>
  40271f:	ret

0000000000402640 <secret_phase>:
  402640:	endbr64
  402644:	push   %rbp
  402645:	mov    %rsp,%rbp                              
  402648:	push   %r13
  40264a:	mov    %rdx,%r13                              //r13 = context
  40264d:	push   %r12
  40264f:	mov    %rsi,%r12                              //r12 = challenge
  402652:	mov    $0x3,%esi                              //esi = 3
  402657:	push   %rbx
  402658:	mov    %rdi,%rbx                              //rbx定位是旧的rbp-0xac
  40265b:	sub    $0x18,%rsp                             //__rbp_24__48(rsp)
  40265f:	call   402c70 <valid_u32_fields>
  402664:	test   %al,%al
  402666:	jne    402680 <secret_phase+0x40>
  402668:	xor    %edx,%edx
  40266a:	add    $0x18,%rsp
  40266e:	mov    %edx,%eax
  402670:	pop    %rbx
  402671:	pop    %r12
  402673:	pop    %r13
  402675:	pop    %rbp
  402676:	ret
  402677:	nopw   0x0(%rax,%rax,1)
  402680:	xor    %eax,%eax                              //eax = 0
  402682:	lea    -0x24(%rbp),%r8                        //r8 = rbp - 36
  402686:	lea    -0x28(%rbp),%rcx                       //rcx = rbp - 40
  40268a:	mov    $0x403183,%esi                         //esi = 0x403183
  40268f:	lea    -0x2c(%rbp),%rdx                       //rdx = rbp - 44
  402693:	mov    %rbx,%rdi                              //rdi = 旧rbp - 0xac
  402696:	call   4011e0 <__isoc99_sscanf@plt>
  40269b:	cmp    $0x3,%eax                              //3个输入
  40269e:	jne    402668 <secret_phase+0x28>
  4026a0:	mov    %r13d,%ecx                             
  4026a3:	xor    %edx,%edx                              //edx = 0
  4026a5:	and    $0x3,%ecx                              //ecx = context & 3
  4026a8:	cmp    %ecx,-0x2c(%rbp)                       //rbp - 44和ecx比较
  4026ab:	jne    40266a <secret_phase+0x2a>             //不相同就完蛋了
  4026ad:	mov    %r12,%rsi                              
  4026b0:	imul   $0xdf3b,%ecx,%r9d                      
  4026b7:	mov    %r13,%r8                               
  4026ba:	shr    $0x20,%rsi                             
  4026be:	shr    $0x20,%r8                              
  4026c2:	xor    %r12d,%esi                             //esi = challenge ^ (challenge >> 32)
  4026c5:	xor    %r13d,%r8d                             //r8d = context ^ (context >> 32)
  4026c8:	shr    $0x10,%r13                             //r13 = context >> 16
  4026cc:	mov    %esi,%edi                              
  4026ce:	xor    %r13d,%r9d                             //r9d = ((context & 3) * 0xdf3b) ^ (context >> 16)
  4026d1:	xor    %r8d,%edi                              //edi = (challenge ^ (challenge >> 32)) ^ (context ^ (context >> 32))
  4026d4:	call   402620 <secret_mix>
  4026d9:	xor    %r9d,%eax                              //eax = eax ^ r9d
  4026dc:	cmp    %eax,-0x28(%rbp)                       //rbp - 40和eax比较
  4026df:	jne    40266a <secret_phase+0x2a>
  4026e1:	shr    $0x5,%esi                              //esi = esi >> 5 //这是为了保证32位后再移位
  4026e4:	lea    0x766e(%r8,%rcx,1),%edx                
  4026ec:	add    %esi,%edx                              //edx = r8d + (context & 3) + 0x766e + esi
  4026ee:	xor    %edx,%eax                              //eax = 上一个输入 ^ edx
  4026f0:	cmp    -0x24(%rbp),%eax
  4026f3:	sete   %dl
  4026f6:	jmp    40266a <secret_phase+0x2a>

Disassembly of section .fini:

0000000000402620 <secret_mix>:
  402620:	endbr64
  402624:	lea    0xdf3b(%rdi,%rdi,4),%eax               
  40262b:	xor    $0x766e,%eax                           //eax = (5 * ((challenge ^ (challenge >> 32)) ^ (context ^ (context >> 32))) + 0xdf3b) ^ 0x766e
  402630:	ret
  402631:	data16 cs nopw 0x0(%rax,%rax,1)
  40263c:	nopl   0x0(%rax)
