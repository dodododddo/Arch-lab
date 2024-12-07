/**
 *  向标准输出打印1个64位整数
 * */

.section .bss
//    .lcomm num, 8       // 存储64位整数
    .lcomm buffer, 21   // 20个数字 + 1个空字符 作为输出的缓冲区

.section .data
    newline: .byte 0xA      // 换行符

.section .text
    .globl _start

_start:
    // 初始化要打印的数字
    mov $1234567890123456789, %rax
//    mov %rax, num(%rip)

    // 将整数转换为字符串
//    mov num(%rip), %rax
    lea buffer+19(%rip), %rdi   // 将输出字符串的最后一个字符地址放入rdi寄存器
    movb $0, (%rdi)             // 给取后一个字符赋'\0'标志结束

convert_loop:                   // 将整数转换为字符串等待输出
    xor %rdx, %rdx
    mov $10, %rcx
    div %rcx                    
    add $'0', %dl              
    dec %rdi
    mov %dl, (%rdi)             
    test %rax, %rax            // 添加判断结束的指令：测试商是否为0
    jnz convert_loop           // 如果不为0，继续循环

find_start:                     // 转换结束，跳过字符串前的所有0
    cmpb $'0', (%rdi)
    jne print_string
    inc %rdi
    jmp find_start

print_string:                   // 开始输出字符串
                                // 计算字符串长度
    lea buffer+20(%rip), %rax
    sub %rdi, %rax              // 计算存储的字节数
    mov %rax, %rdx              // 待输出的字节数放入rdx中

    // 修复系统调用
    mov $1, %rax                // 系统调用号 (sys_write)
    mov $1, %rdi                // 文件描述符 (stdout)
    lea buffer(%rip), %rsi      // 修正：使用正确的字符串起始地址
    syscall

    // 打印换行符
    mov $1, %rax
    mov $1, %rdi
    lea newline(%rip), %rsi
    mov $1, %rdx
    syscall

    // 退出程序
    mov $60, %rax  // 系统调用号 (sys_exit)
    xor %rdi, %rdi // 退出状态码
    syscall