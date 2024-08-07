section .bss
    sum resq 1
    start_time resq 1
    end_time resq 1

section .data
    msg db "Sum: ", 0
    msg_len equ $ - msg
    new_line db 10, 0
    new_line_len equ $ - new_line

section .text
    global _start
    extern write

_start:
    ; Получить аргумент командной строки
    mov rdi, [rsp+8]         ; Получить указатель на аргумент командной строки
    add rdi, 8               ; Пропустить имя программы
    mov rsi, [rdi]           ; Получить указатель на строку аргумента
    call atoi                ; Преобразовать строку в число

    ; Начать замер времени
    call get_time
    mov [start_time], rax

    ; Сложить числа от 1 до N
    mov rbx, rax             ; rbx = N
    xor rax, rax             ; rax = 0
    xor rcx, rcx             ; rcx = i

.loop:
    inc rcx                  ; i++
    add rax, rcx             ; sum += i
    cmp rcx, rbx             ; Сравнить i с N
    jl .loop                 ; Если i < N, перейти к .loop

    ; Сохранить результат
    mov [sum], rax

    ; Закончить замер времени
    call get_time
    mov [end_time], rax

    ; Рассчитать время выполнения
    mov rax, [end_time]
    sub rax, [start_time]

    ; Напечатать сообщение
    mov rdi, 1               ; file descriptor: stdout
    mov rsi, msg             ; указатель на сообщение
    mov rdx, msg_len         ; размер сообщения
    mov rax, 1               ; системный вызов: sys_write
    syscall

    ; Напечатать результат
    mov rsi, sum             ; указатель на результат
    mov rdx, 8               ; размер данных для вывода
    mov rax, 1               ; системный вызов: sys_write
    syscall

    ; Напечатать новую строку
    mov rsi, new_line        ; указатель на новую строку
    mov rdx, new_line_len    ; размер новой строки
    mov rax, 1               ; системный вызов: sys_write
    syscall

    ; Завершить программу
    mov rax, 60              ; Номер системного вызова для выхода
    xor rdi, rdi             ; Код выхода 0
    syscall

; Функция atoi
atoi:
    xor rax, rax             ; rax = 0
    xor rcx, rcx             ; rcx = 0
.atoi_loop:
    movzx rdx, byte [rsi + rcx]
    test rdx, rdx
    jz .atoi_done
    sub rdx, '0'
    imul rax, rax, 10
    add rax, rdx
    inc rcx
    jmp .atoi_loop
.atoi_done:
    ret

; Функция get_time
get_time:
    mov rax, 228             ; Номер системного вызова clock_gettime
    mov rdi, 0               ; CLOCK_REALTIME
    lea rsi, [rel ts]
    syscall
    mov rax, [ts]
    ret

section .bss
    ts resq 2
