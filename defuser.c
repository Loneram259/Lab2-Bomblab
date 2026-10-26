#include "defuser.h"

#include <inttypes.h>
#include <stdio.h>

#define MAX_FIELDS 8

/*
 * 把 values 中的 count 个整数写成一行“空格分隔的无符号十进制整数”，存入 out。
 * 成功返回 0；count 为 0（还没有实现）、snprintf 出错或结果被截断时返回非零。
 */
static int write_answer(char *out, size_t cap, const uint32_t *values, size_t count) {
    size_t used = 0;
    for (size_t i = 0; i < count; ++i) {
        int size = snprintf(out + used, cap - used, "%s%" PRIu32, i ? " " : "", values[i]);
        if (size < 0 || (size_t)size >= cap - used) return 1;
        used += (size_t)size;
    }
    return count == 0;
}

int solve_phase_1(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 1;
    uint32_t a = 5 * (challenge >> 32);
    uint32_t b = 46 + challenge;
    a = a ^ b;
    b = challenge - (challenge >> 16);
    uint32_t c = 3 * b + 0x9648;
    b = (5 * c + a) ^ 0xfcbb;
    values[0] = b;
    return write_answer(out, cap, values, count);
}

int solve_phase_2(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 6;
    int i = 1;
    int c = 8;
    uint64_t temp;
    uint32_t key;
    
    temp = (((challenge >> 1) & 0x7f) * 3) & 0xffffffff;
    values[0] = temp;

    while (i <= 5) {
        temp = ((challenge >> c) & 0x3f);
        key = (values[i - 1] + i) * 5;
        key -= temp;
        values[i] = key;
        c += 4;
        i++;
    }

    return write_answer(out, cap, values, count);
}

int solve_phase_3(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 2;
    values[0] = challenge & 7;
    uint32_t edi = (challenge >> 32) ^ (challenge >> 3);
    switch (values[0]){
        case 0:
            values[1] = (edi ^ 0x14fa) + (edi >> 2);
            break;
        case 1:
            values[1] = (2 * edi) ^ 0x7a2d;
            break;
        case 2:
            values[1] = 0x4cd0 ^ (2 * edi);
            break;
        case 3:
            values[1] = 5 * edi + 0x4434a;
            break;
        case 4:
            values[1] = 5 * edi + 0x166d4;
            break;
        case 5:
            values[1] = 5 * edi + 0xcfcf;
            break;
        case 6:
            values[1] = 3 * edi + 0xc1b;
            break;
        case 7:
            values[1] = (edi ^ 0x3e8d) + (edi >> 2);
            break;
        default:
            break;
    }
    return write_answer(out, cap, values, count);
}

int solve_phase_4(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 1;
    uint32_t ab[8];
    uint32_t ebx[8];
    uint32_t eax = challenge & 0x7f;
    uint32_t high = 0x7f;
    uint32_t ecx = (challenge >> 7) ^ (challenge >> 32);
    uint32_t low = 0;
    uint32_t mid;
    int32_t index = 0;
    while (1){
        mid = low + ((high - low) >> 1);
        if (eax == mid){
            ab[index] = 0;
            break;
        }else if (eax < mid){
            ab[index] = 1;
            ebx[index] = mid + ecx;
            high = mid - 1;
        }else{
            ab[index] = 2;
            ebx[index] = mid + ecx;
            low = mid + 1;
        }
        index++;
    }
    while (index >= 0){
        switch (ab[index]){
        case 0:
            eax = (eax + 0xb3) ^ ((challenge >> 7) ^ (challenge >> 32));
            break;
        case 1:
            eax = (3 * eax) ^ ebx[index] ^ 17;
            break;
        case 2:
            eax = (3 * eax) ^ ebx[index] ^ 7;
            break;
        default:
            break;
        }
        index--;
    }
    values[0] = eax;
    return write_answer(out, cap, values, count);
}

int solve_phase_5(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 2;
    uint32_t index;
    uint32_t rbp_20;
    uint32_t limit = (challenge >> 3) & 3;
    uint32_t eax =  challenge & 7;
    uint32_t a_0[] = {0x00005dfe, 0x00006a6b, 0x0000f149, 0x0000123c, 
        0x0000302a, 0x0000c3ee, 0x0000839f, 0x0000d54e, 
        0x0000a363, 0x0000cdc2, 0x00003256, 0x00003d46};
    uint32_t a_4[] = {0x0000006d, 0x00000a1b, 0x00000b12, 0x00000471, 
        0x0000053c, 0x00000825, 0x0000063d, 0x00000928, 
        0x0000012b, 0x0000075b, 0x00000331, 0x00000245};
    uint32_t ecx = 1;
    index = eax;
    rbp_20 = a_4[index];
    eax = (5 * (a_0[index] + ((challenge >> 6) ^ (challenge >> 32) ^ 0x3506))) ^ rbp_20;
    if (limit){
        while (ecx <= limit){
            ecx++;
            index++;
            rbp_20 = a_4[index];
            eax = (5 * (eax + a_0[index])) ^ rbp_20;
        }
    }
    values[0] = eax;
    values[1] = rbp_20;
    return write_answer(out, cap, values, count);
}

int solve_phase_6(uint64_t challenge, char *out, size_t cap) {
    uint32_t values[MAX_FIELDS] = {0};
    size_t count = 1;
    uint32_t edi = challenge >> 32 ^ challenge >> 6;
    uint32_t check;
    for(int i = 1; i <= 2; i++){
        if (i == 1)
            check = challenge & 7;
        else
            check = (challenge & 0x38) / 8;
        switch(check){
            case 0:
                edi = (edi >> 7) | (edi << 25);
                break;
            case 1:
            case 2:
            case 6:
                edi = ((edi >> 30) | (edi << 2)) ^ 0x88db;
                break;
            case 3:
                edi = (edi ^ 0x4bf5) + 2 * edi;
                break;
            case 4:
                edi = 0x12b7 + (edi ^ (edi >> 3));
                break;
            case 5:
                edi = (3 * edi) ^ ((edi << 5) + 0x1bf0);
                break;
            case 7:
                edi = (edi + 0x3481) ^ (edi >> 1);
                break;
            default:
                break;
        }
        if (i == 2)
            break;
        else
            edi = edi ^ 0xc0e;
    }
    values[0] = edi + 0x5c59;
    return write_answer(out, cap, values, count);
}

int solve_secret(uint64_t challenge, uint64_t context, char *out, size_t cap) {
    uint32_t values[3];
    values[0] = context & 3;
    uint32_t esi = challenge ^ (challenge >> 32);
    values[1] = ((5 * ((challenge ^ (challenge >> 32)) ^ (context ^ (context >> 32))) + 0xdf3b) ^ 0x766e) ^ ((context & 3) * 0xdf3b) ^ (context >> 16);
    esi = esi >> 5;
    values[2] = values[1] ^ ((context ^ (context >> 32)) + (context & 3) + 0x766e + esi);
    snprintf(out, cap, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOPEN%u %u %u", (unsigned int)values[0], (unsigned int)values[1], (unsigned int)values[2]);
    return 0;
}
