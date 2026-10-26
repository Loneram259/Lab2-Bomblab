
./bomb:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.sec:

Disassembly of section .text:

00000000004020f0 <phase_02>:
  4020f0:	endbr64
  4020f4:	push   %rbp
  4020f5:	mov    %rsp,%rbp
  4020f8:	push   %r13
  4020fa:	mov    %rsi,%r13                      /*r13现在是challenge*/
  4020fd:	mov    $0x6,%esi                      /*rsi现在是6，其实是count*/
  402102:	push   %r12
  402104:	mov    %rdi,%r12                      /*r12现在是输入字符串*/
  402107:	push   %rbx
  402108:	sub    $0x28,%rsp
  40210c:	call   402c70 <valid_u32_fields>      /*成功返回1，反之0*/
  402111:	test   %al,%al                        /*0则ZF=1*/
  402113:	jne    402128 <phase_02+0x38>         /*分支：所以刚刚成功了就跳转，失败了就继续*/
  402115:	xor    %ebx,%ebx
  402117:	lea    -0x18(%rbp),%rsp               /*rsp回到正常的栈顶位置*/
  40211b:	mov    %ebx,%eax                      /*rax清零，不对，如果输入有问题就爆炸，如果没问题，输出是rbx*/
  40211d:	pop    %rbx
  40211e:	pop    %r12
  402120:	pop    %r13
  402122:	pop    %rbp
  402123:	ret                                   /*无事发生，返回0，bomb!*/
  402124:	nopl   0x0(%rax)                      /*？？？*/
  402128:	mov    %eax,%ebx                      /*分支后续：rbx是刚刚的输出，此时只能是1*/
                                                /*我的风格是_是被占用的，__是空的*/
  40212a:	lea    -0x2c(%rbp),%rax               /*rax现在是0_8_16_24(used)__44(rax)__64(rsp)*/
  40212e:	lea    -0x3c(%rbp),%rcx               /*rcx是-60的位置*/
  402132:	mov    $0x40317a,%esi                 /*rsi被赋值0x40317a*/
  402137:	push   %rax                           /*0_8_16_24__44__60__64_(存了-44这个位置)72*/
  402138:	lea    -0x30(%rbp),%rax               /*0_8_16_24__44__48(rax)__60__64_(存了-44这个位置)72*/
  40213c:	lea    -0x40(%rbp),%rdx               /*0_8_16_24__44__48(rax)__60__64(rdx)_(存了-44这个位置)72*/
  402140:	mov    %r12,%rdi                      /*rdi现在是输入字符串*/
  402143:	push   %rax                           /*0_8_16_24__44__48(rax)__60__64(rdx)_(-44这个位置)72_(-48这个位置)80*/
  402144:	lea    -0x34(%rbp),%r9                
  402148:	lea    -0x38(%rbp),%r8                
  40214c:	xor    %eax,%eax                      /*0_8_16_24__44__48__52(r9)__56(r8)__60(rcx)__64(rdx)_(-44这个位置)72_(-48这个位置)80*/
  40214e:	call   4011e0 <__isoc99_sscanf@plt>
  402153:	pop    %rdx                           /*rdx是rbp-48*/
  402154:	pop    %rcx                           /*rcx是rbp-44*/
                                                /*0_8_16_24__40_44(rcx)_48(rdx)_52(r9)_56(r8)_60_64*/
  402155:	cmp    $0x6,%eax                      
  402158:	jne    402115 <phase_02+0x25>         /*输入不对就爆炸喵*/
  40215a:	mov    %r13,%rdx                      /*rdx64是challenge*/
  40215d:	mov    -0x40(%rbp),%eax               /*rax存栈上rbp-64的数据*/
  402160:	shr    $1,%rdx                        /*rdx64逻辑右移1位*/
  402163:	and    $0x7f,%edx                     /*rdx32与0x7f按位与*/
  402166:	lea    (%rdx,%rdx,2),%edx             /*rdx32现在再翻3倍，还是32位*/
  402169:	cmp    %edx,%eax                      /*rax32与rdx32比较*/
  40216b:	jne    402115 <phase_02+0x25>         /*不相同就爆炸喵！(((challenge >> 1) & 0xffffffff & 0x7f) * 3) & 0xffffffff == -64这个输入*/
  40216d:	mov    $0x8,%ecx                      /*rcx=8，也是初始化*/
  402172:	mov    $0x1,%edx                      /*rdx=1，应该是初始化，就叫i吧*/
  402177:	cmp    $0x6,%rdx                      /*？？？，不对，之后会变，直到6*/
  40217b:	je     402117 <phase_02+0x27>         /*最终判断：数组内所有数符合要求，返回rbx，此时应该是1*/
  40217d:	mov    %r13,%rdi                      /*rdi是challenge*/
  402180:	add    %edx,%eax                      /*rax32现在是上一个输入的数据加上i*/
  402182:	shr    %cl,%rdi                       /*rdi逻辑右移rcx位*/
  402185:	lea    (%rax,%rax,4),%eax             /*rax32翻五倍，还是32位*/
  402188:	add    $0x4,%ecx                      /*rcx+=4*/
  40218b:	and    $0x3f,%edi                     /*rdi取末32位&0x3f*/
  40218e:	sub    %edi,%eax                      /*rax-rdi，只有32位*/
  402190:	mov    %eax,%esi                      /*rsi是刚刚的rax-rdi*/
  402192:	mov    -0x40(%rbp,%rdx,4),%eax        /*rax32存的数往前面推4格*/
  402196:	add    $0x1,%rdx                      /*i++*/
  40219a:	cmp    %esi,%eax                      /*如果下一个存的数与刚刚的rax-rdi相等*/
  40219c:	je     402177 <phase_02+0x87>         /*那么循环继续*/
  40219e:	jmp    402115 <phase_02+0x25>         /*否则爆炸喵*/

Disassembly of section .fini:
