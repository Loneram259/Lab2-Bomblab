
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	endbr64
  401004:	sub    $0x8,%rsp
  401008:	mov    0x6fd1(%rip),%rax        # 407fe0 <__gmon_start__@Base>
  40100f:	test   %rax,%rax
  401012:	je     401016 <_init+0x16>
  401014:	call   *%rax
  401016:	add    $0x8,%rsp
  40101a:	ret

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	push   0x6fca(%rip)        # 407ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	jmp    *0x6fcc(%rip)        # 407ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	nopl   0x0(%rax)
  401030:	endbr64
  401034:	push   $0x0
  401039:	jmp    401020 <_init+0x20>
  40103e:	xchg   %ax,%ax
  401040:	endbr64
  401044:	push   $0x1
  401049:	jmp    401020 <_init+0x20>
  40104e:	xchg   %ax,%ax
  401050:	endbr64
  401054:	push   $0x2
  401059:	jmp    401020 <_init+0x20>
  40105e:	xchg   %ax,%ax
  401060:	endbr64
  401064:	push   $0x3
  401069:	jmp    401020 <_init+0x20>
  40106e:	xchg   %ax,%ax
  401070:	endbr64
  401074:	push   $0x4
  401079:	jmp    401020 <_init+0x20>
  40107e:	xchg   %ax,%ax
  401080:	endbr64
  401084:	push   $0x5
  401089:	jmp    401020 <_init+0x20>
  40108e:	xchg   %ax,%ax
  401090:	endbr64
  401094:	push   $0x6
  401099:	jmp    401020 <_init+0x20>
  40109e:	xchg   %ax,%ax
  4010a0:	endbr64
  4010a4:	push   $0x7
  4010a9:	jmp    401020 <_init+0x20>
  4010ae:	xchg   %ax,%ax
  4010b0:	endbr64
  4010b4:	push   $0x8
  4010b9:	jmp    401020 <_init+0x20>
  4010be:	xchg   %ax,%ax
  4010c0:	endbr64
  4010c4:	push   $0x9
  4010c9:	jmp    401020 <_init+0x20>
  4010ce:	xchg   %ax,%ax
  4010d0:	endbr64
  4010d4:	push   $0xa
  4010d9:	jmp    401020 <_init+0x20>
  4010de:	xchg   %ax,%ax
  4010e0:	endbr64
  4010e4:	push   $0xb
  4010e9:	jmp    401020 <_init+0x20>
  4010ee:	xchg   %ax,%ax
  4010f0:	endbr64
  4010f4:	push   $0xc
  4010f9:	jmp    401020 <_init+0x20>
  4010fe:	xchg   %ax,%ax
  401100:	endbr64
  401104:	push   $0xd
  401109:	jmp    401020 <_init+0x20>
  40110e:	xchg   %ax,%ax
  401110:	endbr64
  401114:	push   $0xe
  401119:	jmp    401020 <_init+0x20>
  40111e:	xchg   %ax,%ax
  401120:	endbr64
  401124:	push   $0xf
  401129:	jmp    401020 <_init+0x20>
  40112e:	xchg   %ax,%ax
  401130:	endbr64
  401134:	push   $0x10
  401139:	jmp    401020 <_init+0x20>
  40113e:	xchg   %ax,%ax

Disassembly of section .plt.sec:

0000000000401140 <getenv@plt>:
  401140:	endbr64
  401144:	jmp    *0x6eb6(%rip)        # 408000 <getenv@GLIBC_2.2.5>
  40114a:	nopw   0x0(%rax,%rax,1)

0000000000401150 <__errno_location@plt>:
  401150:	endbr64
  401154:	jmp    *0x6eae(%rip)        # 408008 <__errno_location@GLIBC_2.2.5>
  40115a:	nopw   0x0(%rax,%rax,1)

0000000000401160 <puts@plt>:
  401160:	endbr64
  401164:	jmp    *0x6ea6(%rip)        # 408010 <puts@GLIBC_2.2.5>
  40116a:	nopw   0x0(%rax,%rax,1)

0000000000401170 <ferror@plt>:
  401170:	endbr64
  401174:	jmp    *0x6e9e(%rip)        # 408018 <ferror@GLIBC_2.2.5>
  40117a:	nopw   0x0(%rax,%rax,1)

0000000000401180 <isatty@plt>:
  401180:	endbr64
  401184:	jmp    *0x6e96(%rip)        # 408020 <isatty@GLIBC_2.2.5>
  40118a:	nopw   0x0(%rax,%rax,1)

0000000000401190 <strlen@plt>:
  401190:	endbr64
  401194:	jmp    *0x6e8e(%rip)        # 408028 <strlen@GLIBC_2.2.5>
  40119a:	nopw   0x0(%rax,%rax,1)

00000000004011a0 <strcmp@plt>:
  4011a0:	endbr64
  4011a4:	jmp    *0x6e86(%rip)        # 408030 <strcmp@GLIBC_2.2.5>
  4011aa:	nopw   0x0(%rax,%rax,1)

00000000004011b0 <putc@plt>:
  4011b0:	endbr64
  4011b4:	jmp    *0x6e7e(%rip)        # 408038 <putc@GLIBC_2.2.5>
  4011ba:	nopw   0x0(%rax,%rax,1)

00000000004011c0 <__memcpy_chk@plt>:
  4011c0:	endbr64
  4011c4:	jmp    *0x6e76(%rip)        # 408040 <__memcpy_chk@GLIBC_2.3.4>
  4011ca:	nopw   0x0(%rax,%rax,1)

00000000004011d0 <fflush@plt>:
  4011d0:	endbr64
  4011d4:	jmp    *0x6e6e(%rip)        # 408048 <fflush@GLIBC_2.2.5>
  4011da:	nopw   0x0(%rax,%rax,1)

00000000004011e0 <__isoc99_sscanf@plt>:
  4011e0:	endbr64
  4011e4:	jmp    *0x6e66(%rip)        # 408050 <__isoc99_sscanf@GLIBC_2.7>
  4011ea:	nopw   0x0(%rax,%rax,1)

00000000004011f0 <__printf_chk@plt>:
  4011f0:	endbr64
  4011f4:	jmp    *0x6e5e(%rip)        # 408058 <__printf_chk@GLIBC_2.3.4>
  4011fa:	nopw   0x0(%rax,%rax,1)

0000000000401200 <strtoumax@plt>:
  401200:	endbr64
  401204:	jmp    *0x6e56(%rip)        # 408060 <strtoumax@GLIBC_2.2.5>
  40120a:	nopw   0x0(%rax,%rax,1)

0000000000401210 <exit@plt>:
  401210:	endbr64
  401214:	jmp    *0x6e4e(%rip)        # 408068 <exit@GLIBC_2.2.5>
  40121a:	nopw   0x0(%rax,%rax,1)

0000000000401220 <fwrite@plt>:
  401220:	endbr64
  401224:	jmp    *0x6e46(%rip)        # 408070 <fwrite@GLIBC_2.2.5>
  40122a:	nopw   0x0(%rax,%rax,1)

0000000000401230 <getc@plt>:
  401230:	endbr64
  401234:	jmp    *0x6e3e(%rip)        # 408078 <getc@GLIBC_2.2.5>
  40123a:	nopw   0x0(%rax,%rax,1)

0000000000401240 <__ctype_b_loc@plt>:
  401240:	endbr64
  401244:	jmp    *0x6e36(%rip)        # 408080 <__ctype_b_loc@GLIBC_2.3>
  40124a:	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401250 <main>:
  401250:	endbr64
  401254:	push   %rbp
  401255:	mov    %rsp,%rbp
  401258:	push   %r15
  40125a:	push   %r14
  40125c:	push   %r13
  40125e:	push   %r12
  401260:	mov    %rsi,%r12
  401263:	push   %rbx
  401264:	mov    %edi,%ebx
  401266:	sub    $0x8a8,%rsp
  40126d:	cmp    $0x2,%edi
  401270:	jne    401288 <main+0x38>
  401272:	mov    0x8(%rsi),%rdi
  401276:	mov    $0x40300c,%esi
  40127b:	call   4011a0 <strcmp@plt>
  401280:	test   %eax,%eax
  401282:	je     40148a <main+0x23a>
  401288:	lea    -0x8c0(%rbp),%rdx
  40128f:	mov    %r12,%rsi
  401292:	mov    %ebx,%edi
  401294:	call   402940 <parse_options>
  401299:	test   %eax,%eax
  40129b:	jne    401472 <main+0x222>
  4012a1:	cmpl   $0x0,-0x8a4(%rbp)
  4012a8:	jne    4014b6 <main+0x266>
  4012ae:	mov    $0x402d50,%eax
  4012b3:	mov    $0xc0,%ecx
  4012b8:	mov    $0x1,%ebx
  4012bd:	mov    $0x6,%r13d
  4012c3:	movq   %rax,%xmm0
  4012c8:	mov    $0x4020f0,%eax
  4012cd:	lea    -0x630(%rbp),%rdi
  4012d4:	movq   $0x4025c0,-0x840(%rbp)
  4012df:	movhps 0x41e2(%rip),%xmm0        # 4054c8 <_IO_stdin_used+0x24c8>
  4012e6:	movaps %xmm0,-0x870(%rbp)
  4012ed:	movq   %rax,%xmm0
  4012f2:	mov    $0x4023a0,%eax
  4012f7:	movhps 0x41d2(%rip),%xmm0        # 4054d0 <_IO_stdin_used+0x24d0>
  4012fe:	movaps %xmm0,-0x860(%rbp)
  401305:	movq   %rax,%xmm0
  40130a:	xor    %eax,%eax
  40130c:	rep stos %rax,(%rdi)
  40130f:	mov    -0x8c0(%rbp),%edi
  401315:	movhps 0x41bc(%rip),%xmm0        # 4054d8 <_IO_stdin_used+0x24d8>
  40131c:	movaps %xmm0,-0x850(%rbp)
  401323:	cmp    $0x7,%edi
  401326:	cmovne %edi,%ebx
  401329:	cmovne %edi,%r13d
  40132d:	call   401a40 <story_begin>
  401332:	nopw   0x0(%rax,%rax,1)
  401338:	mov    %ebx,%edi
  40133a:	xor    %r14d,%r14d
  40133d:	call   401c00 <story_phase_enter>
  401342:	mov    %ebx,%esi
  401344:	lea    -0x8c0(%rbp),%rdi
  40134b:	call   402c50 <phase_challenge>
  401350:	mov    %ebx,%edx
  401352:	mov    $0x403013,%esi
  401357:	mov    $0x2,%edi
  40135c:	mov    %rax,%rcx
  40135f:	mov    %rax,%r12
  401362:	xor    %eax,%eax
  401364:	call   4011f0 <__printf_chk@plt>
  401369:	mov    $0x4032c8,%edi
  40136e:	call   401160 <puts@plt>
  401373:	mov    0x6d26(%rip),%rdi        # 4080a0 <stdout@GLIBC_2.2.5>
  40137a:	call   4011d0 <fflush@plt>
  40137f:	jmp    4013ae <main+0x15e>
  401381:	nopl   0x0(%rax)
  401388:	cmp    $0xffffffff,%eax
  40138b:	je     4013bf <main+0x16f>
  40138d:	test   %eax,%eax
  40138f:	je     40146d <main+0x21d>
  401395:	add    $0x1,%r14
  401399:	cmp    $0x100,%r14
  4013a0:	je     40146d <main+0x21d>
  4013a6:	mov    %al,-0x831(%rbp,%r14,1)
  4013ae:	mov    0x6cfb(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  4013b5:	call   401230 <getc@plt>
  4013ba:	cmp    $0xa,%eax
  4013bd:	jne    401388 <main+0x138>
  4013bf:	mov    0x6cea(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  4013c6:	call   401170 <ferror@plt>
  4013cb:	test   %r14,%r14
  4013ce:	sete   %r15b
  4013d2:	test   %eax,%eax
  4013d4:	setne  %al
  4013d7:	or     %al,%r15b
  4013da:	jne    40146d <main+0x21d>
  4013e0:	mov    %ebx,%eax
  4013e2:	mov    %r12,%rsi
  4013e5:	movb   $0x0,-0x830(%rbp,%r14,1)
  4013ee:	lea    -0x830(%rbp),%rdi
  4013f5:	call   *-0x870(%rbp,%rax,8)
  4013fc:	mov    %eax,%r12d
  4013ff:	test   %al,%al
  401401:	je     40146d <main+0x21d>
  401403:	test   %ebx,%ebx
  401405:	je     40143a <main+0x1ea>
  401407:	lea    -0x1(%rbx),%edi
  40140a:	mov    $0x600,%eax
  40140f:	lea    0x1(%r14),%rdx
  401413:	shl    $0x8,%rdi
  401417:	lea    -0x830(%rbp),%rsi
  40141e:	cmp    %rax,%rdi
  401421:	cmovae %rdi,%rax
  401425:	mov    %rax,%rcx
  401428:	lea    -0x630(%rbp),%rax
  40142f:	sub    %rdi,%rcx
  401432:	add    %rax,%rdi
  401435:	call   4011c0 <__memcpy_chk@plt>
  40143a:	mov    %ebx,%edx
  40143c:	mov    $0x403031,%esi
  401441:	mov    $0x2,%edi
  401446:	xor    %eax,%eax
  401448:	call   4011f0 <__printf_chk@plt>
  40144d:	mov    %ebx,%edi
  40144f:	add    $0x1,%ebx
  401452:	call   401ca0 <story_phase_passed>
  401457:	cmp    %ebx,%r13d
  40145a:	jae    401338 <main+0xe8>
  401460:	cmpl   $0x7,-0x8c0(%rbp)
  401467:	je     4014d8 <main+0x288>
  401469:	xor    %eax,%eax
  40146b:	jmp    401478 <main+0x228>
  40146d:	call   401790 <explode_bomb>
  401472:	sar    $0x1e,%eax
  401475:	and    $0x2,%eax
  401478:	add    $0x8a8,%rsp
  40147f:	pop    %rbx
  401480:	pop    %r12
  401482:	pop    %r13
  401484:	pop    %r14
  401486:	pop    %r15
  401488:	pop    %rbp
  401489:	ret
  40148a:	mov    $0x4031b0,%edi
  40148f:	call   401160 <puts@plt>
  401494:	mov    $0x4031e0,%edi
  401499:	call   401160 <puts@plt>
  40149e:	mov    $0x403208,%edi
  4014a3:	call   401160 <puts@plt>
  4014a8:	mov    $0x403250,%edi
  4014ad:	call   401160 <puts@plt>
  4014b2:	xor    %eax,%eax
  4014b4:	jmp    401478 <main+0x228>
  4014b6:	mov    $0x21,%edx
  4014bb:	mov    $0x1,%esi
  4014c0:	mov    $0x4032a0,%edi
  4014c5:	mov    0x6bf4(%rip),%rcx        # 4080c0 <stderr@GLIBC_2.2.5>
  4014cc:	call   401220 <fwrite@plt>
  4014d1:	mov    $0x2,%eax
  4014d6:	jmp    401478 <main+0x228>
  4014d8:	mov    $0x4032f0,%edi
  4014dd:	call   401160 <puts@plt>
  4014e2:	call   401d40 <story_city_saved>
  4014e7:	xor    %edi,%edi
  4014e9:	call   401180 <isatty@plt>
  4014ee:	test   %eax,%eax
  4014f0:	jne    401688 <main+0x438>
  4014f6:	mov    0x6bb3(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  4014fd:	call   401230 <getc@plt>
  401502:	mov    %eax,%edx
  401504:	cmp    $0xffffffff,%eax
  401507:	je     401674 <main+0x424>
  40150d:	xor    %r13d,%r13d
  401510:	xor    %ebx,%ebx
  401512:	jmp    401566 <main+0x316>
  401514:	mov    %edx,-0x8c4(%rbp)
  40151a:	call   401240 <__ctype_b_loc@plt>
  40151f:	mov    -0x8c4(%rbp),%edx
  401525:	mov    %rax,%rcx
  401528:	mov    (%rcx),%rcx
  40152b:	movzbl %dl,%eax
  40152e:	testb  $0x20,0x1(%rcx,%rax,2)
  401533:	je     40158d <main+0x33d>
  401535:	test   %edx,%edx
  401537:	je     40146d <main+0x21d>
  40153d:	lea    0x1(%rbx),%rax
  401541:	cmp    $0xff,%rax
  401547:	ja     401553 <main+0x303>
  401549:	mov    %dl,-0x730(%rbp,%rbx,1)
  401550:	mov    %rax,%rbx
  401553:	mov    0x6b56(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  40155a:	call   401230 <getc@plt>
  40155f:	mov    %eax,%edx
  401561:	cmp    $0xffffffff,%eax
  401564:	je     40159a <main+0x34a>
  401566:	cmp    $0xa,%edx
  401569:	je     40159a <main+0x34a>
  40156b:	test   %r13b,%r13b
  40156e:	je     401514 <main+0x2c4>
  401570:	test   %edx,%edx
  401572:	je     40146d <main+0x21d>
  401578:	lea    0x1(%rbx),%rax
  40157c:	cmp    $0xff,%rax
  401582:	ja     40146d <main+0x21d>
  401588:	mov    %r12d,%r13d
  40158b:	jmp    401549 <main+0x2f9>
  40158d:	call   401dd0 <story_honor_begin>
  401592:	mov    -0x8c4(%rbp),%edx
  401598:	jmp    401570 <main+0x320>
  40159a:	mov    0x6b0f(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  4015a1:	call   401170 <ferror@plt>
  4015a6:	test   %eax,%eax
  4015a8:	jne    40146d <main+0x21d>
  4015ae:	test   %r13b,%r13b
  4015b1:	je     4014f6 <main+0x2a6>
  4015b7:	lea    -0x630(%rbp),%rcx
  4015be:	lea    -0x530(%rbp),%rax
  4015c5:	movb   $0x0,-0x730(%rbp,%rbx,1)
  4015cd:	movq   %rax,%xmm1
  4015d2:	movq   %rcx,%xmm0
  4015d7:	lea    -0x430(%rbp),%rax
  4015de:	punpcklqdq %xmm1,%xmm0
  4015e2:	lea    -0x8a0(%rbp),%rdi
  4015e9:	movaps %xmm0,-0x8a0(%rbp)
  4015f0:	movq   %rax,%xmm0
  4015f5:	lea    -0x330(%rbp),%rax
  4015fc:	movq   %rax,%xmm2
  401601:	lea    -0x230(%rbp),%rax
  401608:	punpcklqdq %xmm2,%xmm0
  40160c:	movaps %xmm0,-0x890(%rbp)
  401613:	movq   %rax,%xmm0
  401618:	lea    -0x130(%rbp),%rax
  40161f:	movq   %rax,%xmm3
  401624:	punpcklqdq %xmm3,%xmm0
  401628:	movaps %xmm0,-0x880(%rbp)
  40162f:	call   402820 <transcript_context>
  401634:	mov    $0x7,%esi
  401639:	lea    -0x8c0(%rbp),%rdi
  401640:	mov    %rax,%rbx
  401643:	call   402c50 <phase_challenge>
  401648:	mov    %rbx,%rdx
  40164b:	lea    -0x730(%rbp),%rdi
  401652:	mov    %rax,%rsi
  401655:	call   402720 <secret_gate>
  40165a:	mov    %eax,%r15d
  40165d:	test   %al,%al
  40165f:	je     40146d <main+0x21d>
  401665:	mov    $0x403044,%edi
  40166a:	call   401160 <puts@plt>
  40166f:	call   401e60 <story_honor_passed>
  401674:	mov    0x6a35(%rip),%rdi        # 4080b0 <stdin@GLIBC_2.2.5>
  40167b:	call   401170 <ferror@plt>
  401680:	test   %eax,%eax
  401682:	jne    40146d <main+0x21d>
  401688:	movzbl %r15b,%edi
  40168c:	call   401ef0 <story_finish>
  401691:	xor    %eax,%eax
  401693:	jmp    401478 <main+0x228>
  401698:	nopl   0x0(%rax,%rax,1)

0000000000402620 <secret_mix>:
  402620:	endbr64
  402624:	lea    0xdf3b(%rdi,%rdi,4),%eax
  40262b:	xor    $0x766e,%eax
  402630:	ret
  402631:	data16 cs nopw 0x0(%rax,%rax,1)
  40263c:	nopl   0x0(%rax)

0000000000402640 <secret_phase>:
  402640:	endbr64
  402644:	push   %rbp
  402645:	mov    %rsp,%rbp
  402648:	push   %r13
  40264a:	mov    %rdx,%r13
  40264d:	push   %r12
  40264f:	mov    %rsi,%r12
  402652:	mov    $0x3,%esi
  402657:	push   %rbx
  402658:	mov    %rdi,%rbx
  40265b:	sub    $0x18,%rsp
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
  402680:	xor    %eax,%eax
  402682:	lea    -0x24(%rbp),%r8
  402686:	lea    -0x28(%rbp),%rcx
  40268a:	mov    $0x403183,%esi
  40268f:	lea    -0x2c(%rbp),%rdx
  402693:	mov    %rbx,%rdi
  402696:	call   4011e0 <__isoc99_sscanf@plt>
  40269b:	cmp    $0x3,%eax
  40269e:	jne    402668 <secret_phase+0x28>
  4026a0:	mov    %r13d,%ecx
  4026a3:	xor    %edx,%edx
  4026a5:	and    $0x3,%ecx
  4026a8:	cmp    %ecx,-0x2c(%rbp)
  4026ab:	jne    40266a <secret_phase+0x2a>
  4026ad:	mov    %r12,%rsi
  4026b0:	imul   $0xdf3b,%ecx,%r9d
  4026b7:	mov    %r13,%r8
  4026ba:	shr    $0x20,%rsi
  4026be:	shr    $0x20,%r8
  4026c2:	xor    %r12d,%esi
  4026c5:	xor    %r13d,%r8d
  4026c8:	shr    $0x10,%r13
  4026cc:	mov    %esi,%edi
  4026ce:	xor    %r13d,%r9d
  4026d1:	xor    %r8d,%edi
  4026d4:	call   402620 <secret_mix>
  4026d9:	xor    %r9d,%eax
  4026dc:	cmp    %eax,-0x28(%rbp)
  4026df:	jne    40266a <secret_phase+0x2a>
  4026e1:	shr    $0x5,%esi
  4026e4:	lea    0x766e(%r8,%rcx,1),%edx
  4026ec:	add    %esi,%edx
  4026ee:	xor    %edx,%eax
  4026f0:	cmp    -0x24(%rbp),%eax
  4026f3:	sete   %dl
  4026f6:	jmp    40266a <secret_phase+0x2a>
  4026fb:	nopl   0x0(%rax,%rax,1)

0000000000402700 <secret_copy>:
  402700:	endbr64
  402704:	xor    %eax,%eax
  402706:	cs nopw 0x0(%rax,%rax,1)
  402710:	movzbl (%rsi,%rax,1),%edx
  402714:	mov    %dl,(%rdi,%rax,1)
  402717:	add    $0x1,%rax
  40271b:	test   %dl,%dl
  40271d:	jne    402710 <secret_copy+0x10>
  40271f:	ret

0000000000402720 <secret_gate>:
  402720:	endbr64
  402724:	push   %rbp
  402725:	xor    %eax,%eax
  402727:	mov    $0x14,%ecx
  40272c:	mov    %rsp,%rbp
  40272f:	push   %r14
  402731:	mov    %rdx,%r14
  402734:	push   %r13
  402736:	mov    %rsi,%r13
  402739:	push   %r12
  40273b:	lea    -0xd0(%rbp),%r12
  402742:	push   %rbx
  402743:	mov    %rdi,%rbx
  402746:	mov    %r12,%rdi
  402749:	sub    $0xb0,%rsp
  402750:	rep stos %rax,(%rdi)
  402753:	movl   $0x0,(%rdi)
  402759:	mov    %rbx,%rdi
  40275c:	call   401190 <strlen@plt>
  402761:	sub    $0x24,%rax
  402765:	cmp    $0x7f,%rax
  402769:	jbe    402780 <secret_gate+0x60>
  40276b:	add    $0xb0,%rsp
  402772:	xor    %eax,%eax
  402774:	pop    %rbx
  402775:	pop    %r12
  402777:	pop    %r13
  402779:	pop    %r14
  40277b:	pop    %rbp
  40277c:	ret
  40277d:	nopl   (%rax)
  402780:	mov    %rbx,%rsi
  402783:	mov    %r12,%rdi
  402786:	call   402700 <secret_copy>
  40278b:	cmpl   $0x4e45504f,-0xb0(%rbp)
  402795:	jne    40276b <secret_gate+0x4b>
  402797:	mov    %r14,%rdx
  40279a:	mov    %r13,%rsi
  40279d:	lea    -0xac(%rbp),%rdi
  4027a4:	call   402640 <secret_phase>
  4027a9:	add    $0xb0,%rsp
  4027b0:	pop    %rbx
  4027b1:	pop    %r12
  4027b3:	pop    %r13
  4027b5:	pop    %r14
  4027b7:	pop    %rbp
  4027b8:	ret
  4027b9:	nopl   0x0(%rax)

00000000004027c0 <challenge_from_seed>:
  4027c0:	endbr64
  4027c4:	movabs $0x9e3779b97f4a7c15,%rdx
  4027ce:	mov    %esi,%eax
  4027d0:	add    $0x1,%rax
  4027d4:	imul   %rdx,%rax
  4027d8:	add    %rdi,%rax
  4027db:	mov    %rax,%rdx
  4027de:	shr    $0x1e,%rdx
  4027e2:	xor    %rdx,%rax
  4027e5:	movabs $0xbf58476d1ce4e5b9,%rdx
  4027ef:	imul   %rdx,%rax
  4027f3:	mov    %rax,%rdx
  4027f6:	shr    $0x1b,%rdx
  4027fa:	xor    %rax,%rdx
  4027fd:	movabs $0x94d049bb133111eb,%rax
  402807:	imul   %rax,%rdx
  40280b:	mov    %rdx,%rax
  40280e:	shr    $0x1f,%rax
  402812:	xor    %rdx,%rax
  402815:	ret
  402816:	cs nopw 0x0(%rax,%rax,1)

0000000000402820 <transcript_context>:
  402820:	endbr64
  402824:	push   %rbp
  402825:	mov    $0x1,%r11d
  40282b:	movabs $0x243f6a8885a308d3,%rsi
  402835:	movabs $0xbf58476d1ce4e5b9,%r9
  40283f:	movabs $0x94d049bb133111eb,%r8
  402849:	mov    %rsp,%rbp
  40284c:	push   %r12
  40284e:	push   %rbx
  40284f:	mov    %rdi,%rbx
  402852:	nopw   0x0(%rax,%rax,1)
  402858:	xor    %r11,%rsi
  40285b:	mov    %rsi,%rdx
  40285e:	shr    $0x1e,%rdx
  402862:	xor    %rsi,%rdx
  402865:	imul   %r9,%rdx
  402869:	mov    %rdx,%rax
  40286c:	shr    $0x1b,%rax
  402870:	xor    %rdx,%rax
  402873:	mov    -0x8(%rbx,%r11,8),%rdx
  402878:	imul   %r8,%rax
  40287c:	mov    %rax,%rsi
  40287f:	shr    $0x1f,%rsi
  402883:	xor    %rax,%rsi
  402886:	movzbl (%rdx),%eax
  402889:	test   %al,%al
  40288b:	je     4028b4 <transcript_context+0x94>
  40288d:	mov    %r11,%r10
  402890:	sub    $0x30,%eax
  402893:	xor    %edi,%edi
  402895:	shl    $0x20,%r10
  402899:	cmp    $0x9,%al
  40289b:	jbe    4028d4 <transcript_context+0xb4>
  40289d:	nopl   (%rax)
  4028a0:	movzbl 0x1(%rdx),%eax
  4028a4:	add    $0x1,%rdx
  4028a8:	lea    -0x30(%rax),%ecx
  4028ab:	cmp    $0x9,%cl
  4028ae:	jbe    4028d0 <transcript_context+0xb0>
  4028b0:	test   %al,%al
  4028b2:	jne    4028a0 <transcript_context+0x80>
  4028b4:	add    $0x1,%r11
  4028b8:	cmp    $0x7,%r11
  4028bc:	jne    402858 <transcript_context+0x38>
  4028be:	pop    %rbx
  4028bf:	mov    %rsi,%rax
  4028c2:	pop    %r12
  4028c4:	pop    %rbp
  4028c5:	ret
  4028c6:	cs nopw 0x0(%rax,%rax,1)
  4028d0:	test   %al,%al
  4028d2:	je     4028b4 <transcript_context+0x94>
  4028d4:	movzbl (%rdx),%eax
  4028d7:	lea    -0x30(%rax),%ecx
  4028da:	cmp    $0x9,%cl
  4028dd:	mov    $0x0,%ecx
  4028e2:	ja     402906 <transcript_context+0xe6>
  4028e4:	nopl   0x0(%rax)
  4028e8:	sub    $0x30,%eax
  4028eb:	lea    (%rcx,%rcx,4),%rcx
  4028ef:	add    $0x1,%rdx
  4028f3:	cltq
  4028f5:	lea    (%rax,%rcx,2),%rcx
  4028f9:	movzbl (%rdx),%eax
  4028fc:	lea    -0x30(%rax),%r12d
  402900:	cmp    $0x9,%r12b
  402904:	jbe    4028e8 <transcript_context+0xc8>
  402906:	mov    %edi,%r12d
  402909:	add    $0x1,%edi
  40290c:	or     %r10,%r12
  40290f:	xor    %rsi,%r12
  402912:	xor    %r12,%rcx
  402915:	mov    %rcx,%rsi
  402918:	shr    $0x1e,%rsi
  40291c:	xor    %rcx,%rsi
  40291f:	imul   %r9,%rsi
  402923:	mov    %rsi,%rcx
  402926:	shr    $0x1b,%rcx
  40292a:	xor    %rsi,%rcx
  40292d:	imul   %r8,%rcx
  402931:	mov    %rcx,%rsi
  402934:	shr    $0x1f,%rsi
  402938:	xor    %rcx,%rsi
  40293b:	jmp    4028b0 <transcript_context+0x90>

0000000000402940 <parse_options>:
  402940:	endbr64
  402944:	push   %rbp
  402945:	mov    %rsp,%rbp
  402948:	push   %r15
  40294a:	push   %r14
  40294c:	push   %r13
  40294e:	push   %r12
  402950:	mov    %rdx,%r12
  402953:	push   %rbx
  402954:	sub    $0x58,%rsp
  402958:	cmp    $0x1,%edi
  40295b:	jle    402c2f <parse_options+0x2ef>
  402961:	cmp    $0x2,%edi
  402964:	mov    %edi,%r14d
  402967:	mov    $0x7,%edi
  40296c:	mov    %rdx,-0x78(%rbp)
  402970:	movq   $0x0,-0x58(%rbp)
  402978:	mov    $0x1,%ebx
  40297d:	mov    %rsi,%r13
  402980:	movq   $0x1,-0x70(%rbp)
  402988:	mov    %rdi,-0x50(%rbp)
  40298c:	mov    %r14d,-0x44(%rbp)
  402990:	sete   -0x45(%rbp)
  402994:	xor    %r15d,%r15d
  402997:	movslq %ebx,%rax
  40299a:	mov    $0x40300c,%esi
  40299f:	mov    0x0(%r13,%rax,8),%r12
  4029a4:	lea    0x0(,%rax,8),%r14
  4029ac:	mov    %r12,%rdi
  4029af:	call   4011a0 <strcmp@plt>
  4029b4:	test   %eax,%eax
  4029b6:	jne    4029c2 <parse_options+0x82>
  4029b8:	cmpb   $0x0,-0x45(%rbp)
  4029bc:	jne    402bfd <parse_options+0x2bd>
  4029c2:	mov    $0x40318c,%esi
  4029c7:	mov    %r12,%rdi
  4029ca:	call   4011a0 <strcmp@plt>
  4029cf:	test   %eax,%eax
  4029d1:	jne    402a78 <parse_options+0x138>
  4029d7:	test   $0x8,%r15b
  4029db:	jne    402b70 <parse_options+0x230>
  4029e1:	or     $0x8,%r15d
  4029e5:	add    $0x1,%ebx
  4029e8:	cmp    %ebx,-0x44(%rbp)
  4029eb:	jg     402997 <parse_options+0x57>
  4029ed:	mov    %r15d,%eax
  4029f0:	mov    -0x50(%rbp),%rdi
  4029f4:	mov    -0x78(%rbp),%r12
  4029f8:	not    %eax
  4029fa:	test   $0x3,%al
  4029fc:	je     402be0 <parse_options+0x2a0>
  402a02:	test   $0x4,%r15b
  402a06:	je     402bcb <parse_options+0x28b>
  402a0c:	cmp    $0x6,%rdi
  402a10:	ja     402be0 <parse_options+0x2a0>
  402a16:	mov    %r15d,%eax
  402a19:	and    $0xe,%eax
  402a1c:	cmp    $0x2,%eax
  402a1f:	je     402be0 <parse_options+0x2a0>
  402a25:	mov    %r15d,%eax
  402a28:	not    %eax
  402a2a:	test   $0xc,%al
  402a2c:	je     402be0 <parse_options+0x2a0>
  402a32:	mov    -0x70(%rbp),%rax
  402a36:	mov    %r15d,%edx
  402a39:	mov    %edi,(%r12)
  402a3d:	shr    $0x3,%edx
  402a40:	mov    %rax,0x8(%r12)
  402a45:	mov    -0x58(%rbp),%rax
  402a49:	and    $0x1,%edx
  402a4c:	mov    %edx,0x1c(%r12)
  402a51:	mov    %rax,0x10(%r12)
  402a56:	mov    %r15d,%eax
  402a59:	shr    $1,%eax
  402a5b:	and    $0x1,%eax
  402a5e:	mov    %eax,0x18(%r12)
  402a63:	xor    %eax,%eax
  402a65:	add    $0x58,%rsp
  402a69:	pop    %rbx
  402a6a:	pop    %r12
  402a6c:	pop    %r13
  402a6e:	pop    %r14
  402a70:	pop    %r15
  402a72:	pop    %rbp
  402a73:	ret
  402a74:	nopl   0x0(%rax)
  402a78:	mov    $0x403195,%esi
  402a7d:	mov    %r12,%rdi
  402a80:	call   4011a0 <strcmp@plt>
  402a85:	test   %eax,%eax
  402a87:	je     402ba0 <parse_options+0x260>
  402a8d:	mov    $0x40319c,%esi
  402a92:	mov    %r12,%rdi
  402a95:	call   4011a0 <strcmp@plt>
  402a9a:	test   %eax,%eax
  402a9c:	je     402bc0 <parse_options+0x280>
  402aa2:	mov    $0x4031a8,%esi
  402aa7:	mov    %r12,%rdi
  402aaa:	call   4011a0 <strcmp@plt>
  402aaf:	test   %eax,%eax
  402ab1:	jne    402b70 <parse_options+0x230>
  402ab7:	mov    $0x4,%r12d
  402abd:	test   %r15d,%r12d
  402ac0:	jne    402b70 <parse_options+0x230>
  402ac6:	add    $0x1,%ebx
  402ac9:	cmp    %ebx,-0x44(%rbp)
  402acc:	je     402b70 <parse_options+0x230>
  402ad2:	mov    0x8(%r13,%r14,1),%r14
  402ad7:	movzbl (%r14),%eax
  402adb:	lea    -0x30(%rax),%edx
  402ade:	cmp    $0x9,%dl
  402ae1:	ja     402b70 <parse_options+0x230>
  402ae7:	mov    $0xa,%edx
  402aec:	cmp    $0x30,%al
  402aee:	jne    402b02 <parse_options+0x1c2>
  402af0:	movzbl 0x1(%r14),%eax
  402af5:	and    $0xffffffdf,%eax
  402af8:	cmp    $0x58,%al
  402afa:	mov    $0x10,%eax
  402aff:	cmove  %eax,%edx
  402b02:	mov    %edx,-0x64(%rbp)
  402b05:	movq   $0x0,-0x38(%rbp)
  402b0d:	call   401150 <__errno_location@plt>
  402b12:	mov    -0x64(%rbp),%edx
  402b15:	lea    -0x38(%rbp),%rsi
  402b19:	mov    %r14,%rdi
  402b1c:	movl   $0x0,(%rax)
  402b22:	mov    %rax,-0x60(%rbp)
  402b26:	call   401200 <strtoumax@plt>
  402b2b:	mov    -0x60(%rbp),%rcx
  402b2f:	mov    (%rcx),%edx
  402b31:	test   %edx,%edx
  402b33:	jne    402b70 <parse_options+0x230>
  402b35:	mov    -0x38(%rbp),%rdx
  402b39:	cmp    %rdx,%r14
  402b3c:	je     402b70 <parse_options+0x230>
  402b3e:	cmpb   $0x0,(%rdx)
  402b41:	jne    402b70 <parse_options+0x230>
  402b43:	or     %r12d,%r15d
  402b46:	cmp    $0x1,%r12d
  402b4a:	je     402bb0 <parse_options+0x270>
  402b4c:	mov    -0x50(%rbp),%rcx
  402b50:	cmp    $0x2,%r12d
  402b54:	cmovne %rax,%rcx
  402b58:	cmovne -0x58(%rbp),%rax
  402b5d:	mov    %rcx,-0x50(%rbp)
  402b61:	mov    %rax,-0x58(%rbp)
  402b65:	jmp    4029e5 <parse_options+0xa5>
  402b6a:	nopw   0x0(%rax,%rax,1)
  402b70:	mov    $0x33,%edx
  402b75:	mov    $0x1,%esi
  402b7a:	mov    $0x405430,%edi
  402b7f:	mov    0x553a(%rip),%rcx        # 4080c0 <stderr@GLIBC_2.2.5>
  402b86:	call   401220 <fwrite@plt>
  402b8b:	add    $0x58,%rsp
  402b8f:	mov    $0xffffffff,%eax
  402b94:	pop    %rbx
  402b95:	pop    %r12
  402b97:	pop    %r13
  402b99:	pop    %r14
  402b9b:	pop    %r15
  402b9d:	pop    %rbp
  402b9e:	ret
  402b9f:	nop
  402ba0:	mov    $0x1,%r12d
  402ba6:	jmp    402abd <parse_options+0x17d>
  402bab:	nopl   0x0(%rax,%rax,1)
  402bb0:	mov    %rax,-0x70(%rbp)
  402bb4:	jmp    4029e5 <parse_options+0xa5>
  402bb9:	nopl   0x0(%rax)
  402bc0:	mov    $0x2,%r12d
  402bc6:	jmp    402abd <parse_options+0x17d>
  402bcb:	mov    %r15d,%eax
  402bce:	and    $0xe,%eax
  402bd1:	cmp    $0x2,%eax
  402bd4:	jne    402a32 <parse_options+0xf2>
  402bda:	nopw   0x0(%rax,%rax,1)
  402be0:	mov    $0x5e,%edx
  402be5:	mov    $0x1,%esi
  402bea:	mov    $0x405468,%edi
  402bef:	mov    0x54ca(%rip),%rcx        # 4080c0 <stderr@GLIBC_2.2.5>
  402bf6:	call   401220 <fwrite@plt>
  402bfb:	jmp    402b8b <parse_options+0x24b>
  402bfd:	mov    $0x4031b0,%edi
  402c02:	call   401160 <puts@plt>
  402c07:	mov    $0x4031e0,%edi
  402c0c:	call   401160 <puts@plt>
  402c11:	mov    $0x4053f8,%edi
  402c16:	call   401160 <puts@plt>
  402c1b:	mov    $0x403208,%edi
  402c20:	call   401160 <puts@plt>
  402c25:	mov    $0x1,%eax
  402c2a:	jmp    402a65 <parse_options+0x125>
  402c2f:	movq   $0x1,-0x70(%rbp)
  402c37:	mov    $0x7,%edi
  402c3c:	xor    %r15d,%r15d
  402c3f:	movq   $0x0,-0x58(%rbp)
  402c47:	jmp    402a32 <parse_options+0xf2>
  402c4c:	nopl   0x0(%rax)

0000000000402c50 <phase_challenge>:
  402c50:	endbr64
  402c54:	mov    0x18(%rdi),%eax
  402c57:	test   %eax,%eax
  402c59:	je     402c60 <phase_challenge+0x10>
  402c5b:	mov    0x10(%rdi),%rax
  402c5f:	ret
  402c60:	mov    0x8(%rdi),%rdi
  402c64:	jmp    4027c0 <challenge_from_seed>
  402c69:	nopl   0x0(%rax)

0000000000402c70 <valid_u32_fields>:
  402c70:	endbr64
  402c74:	push   %rbp
  402c75:	mov    %rsp,%rbp
  402c78:	push   %r12
  402c7a:	mov    %rsi,%r12
  402c7d:	push   %rbx
  402c7e:	mov    %rdi,%rbx
  402c81:	call   401240 <__ctype_b_loc@plt>
  402c86:	xor    %r8d,%r8d
  402c89:	mov    $0xcccccccd,%edi
  402c8e:	mov    (%rax),%rsi
  402c91:	movzbl (%rbx),%eax
  402c94:	test   %r12,%r12
  402c97:	je     402d2c <valid_u32_fields+0xbc>
  402c9d:	movzbl %al,%edx
  402ca0:	testb  $0x20,0x1(%rsi,%rdx,2)
  402ca5:	je     402cc2 <valid_u32_fields+0x52>
  402ca7:	nopw   0x0(%rax,%rax,1)
  402cb0:	movzbl 0x1(%rbx),%edx
  402cb4:	add    $0x1,%rbx
  402cb8:	mov    %rdx,%rax
  402cbb:	testb  $0x20,0x1(%rsi,%rdx,2)
  402cc0:	jne    402cb0 <valid_u32_fields+0x40>
  402cc2:	sub    $0x30,%eax
  402cc5:	cmp    $0x9,%al
  402cc7:	ja     402cfb <valid_u32_fields+0x8b>
  402cc9:	xor    %ecx,%ecx
  402ccb:	jmp    402ce5 <valid_u32_fields+0x75>
  402ccd:	nopl   (%rax)
  402cd0:	lea    (%rcx,%rcx,4),%eax
  402cd3:	add    $0x1,%rbx
  402cd7:	lea    (%rdx,%rax,2),%ecx
  402cda:	movzbl (%rbx),%eax
  402cdd:	lea    -0x30(%rax),%edx
  402ce0:	cmp    $0x9,%dl
  402ce3:	ja     402d08 <valid_u32_fields+0x98>
  402ce5:	movzbl (%rbx),%edx
  402ce8:	sub    $0x30,%edx
  402ceb:	mov    %edx,%eax
  402ced:	not    %eax
  402cef:	imul   %rdi,%rax
  402cf3:	shr    $0x23,%rax
  402cf7:	cmp    %ecx,%eax
  402cf9:	jae    402cd0 <valid_u32_fields+0x60>
  402cfb:	xor    %eax,%eax
  402cfd:	pop    %rbx
  402cfe:	pop    %r12
  402d00:	pop    %rbp
  402d01:	ret
  402d02:	nopw   0x0(%rax,%rax,1)
  402d08:	test   %al,%al
  402d0a:	je     402d16 <valid_u32_fields+0xa6>
  402d0c:	movzbl %al,%edx
  402d0f:	testb  $0x20,0x1(%rsi,%rdx,2)
  402d14:	je     402cfb <valid_u32_fields+0x8b>
  402d16:	add    $0x1,%r8
  402d1a:	cmp    %r8,%r12
  402d1d:	jne    402c9d <valid_u32_fields+0x2d>
  402d23:	jmp    402d2c <valid_u32_fields+0xbc>
  402d25:	nopl   (%rax)
  402d28:	add    $0x1,%rbx
  402d2c:	movzbl (%rbx),%edx
  402d2f:	testb  $0x20,0x1(%rsi,%rdx,2)
  402d34:	jne    402d28 <valid_u32_fields+0xb8>
  402d36:	test   %dl,%dl
  402d38:	sete   %al
  402d3b:	jmp    402cfd <valid_u32_fields+0x8d>
  402d3d:	nopl   (%rax)

0000000000402d40 <tutorial_mix>:
  402d40:	endbr64
  402d44:	lea    0x7(%rdi,%rdi,2),%eax
  402d48:	ret
  402d49:	nopl   0x0(%rax)

0000000000402d50 <phase_00>:
  402d50:	endbr64
  402d54:	push   %rbp
  402d55:	mov    %rsp,%rbp
  402d58:	push   %r12
  402d5a:	mov    %rdi,%r12
  402d5d:	push   %rbx
  402d5e:	mov    %rsi,%rbx
  402d61:	mov    $0x2,%esi
  402d66:	sub    $0x10,%rsp
  402d6a:	call   402c70 <valid_u32_fields>
  402d6f:	test   %al,%al
  402d71:	jne    402d80 <phase_00+0x30>
  402d73:	add    $0x10,%rsp
  402d77:	xor    %eax,%eax
  402d79:	pop    %rbx
  402d7a:	pop    %r12
  402d7c:	pop    %rbp
  402d7d:	ret
  402d7e:	xchg   %ax,%ax
  402d80:	xor    %eax,%eax
  402d82:	lea    -0x14(%rbp),%rcx
  402d86:	lea    -0x18(%rbp),%rdx
  402d8a:	mov    $0x403186,%esi
  402d8f:	mov    %r12,%rdi
  402d92:	call   4011e0 <__isoc99_sscanf@plt>
  402d97:	cmp    $0x2,%eax
  402d9a:	jne    402d73 <phase_00+0x23>
  402d9c:	shr    $0x5,%rbx
  402da0:	movzbl %bl,%edi
  402da3:	xor    $0x2a,%edi
  402da6:	cmp    %edi,-0x18(%rbp)
  402da9:	jne    402d73 <phase_00+0x23>
  402dab:	call   402d40 <tutorial_mix>
  402db0:	cmp    %eax,-0x14(%rbp)
  402db3:	sete   %al
  402db6:	add    $0x10,%rsp
  402dba:	pop    %rbx
  402dbb:	pop    %r12
  402dbd:	pop    %rbp
  402dbe:	ret

Disassembly of section .fini:

0000000000402dc0 <_fini>:
  402dc0:	endbr64
  402dc4:	sub    $0x8,%rsp
  402dc8:	add    $0x8,%rsp
  402dcc:	ret
