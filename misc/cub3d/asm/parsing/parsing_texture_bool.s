	.text
	.file	"parsing_texture_bool.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	is_valid_north_texture          # -- Begin function is_valid_north_texture
	.p2align	4, 0x90
	.type	is_valid_north_texture,@function
is_valid_north_texture:                 # @is_valid_north_texture
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_texture_bool.c"
	.loc	2 16 0                          # src/parsing/parsing_texture_bool.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp0:
	.loc	2 17 9 prologue_end             # src/parsing/parsing_texture_bool.c:17:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp1:
	.loc	2 18 7                          # src/parsing/parsing_texture_bool.c:18:7
	movq	-16(%rbp), %rax
	.loc	2 18 6 is_stmt 0                # src/parsing/parsing_texture_bool.c:18:6
	movsbl	(%rax), %eax
	.loc	2 18 15                         # src/parsing/parsing_texture_bool.c:18:15
	cmpl	$79, %eax
	.loc	2 18 22                         # src/parsing/parsing_texture_bool.c:18:22
	jne	.LBB0_4
# %bb.1:
	.loc	2 18 29                         # src/parsing/parsing_texture_bool.c:18:29
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 18 27                         # src/parsing/parsing_texture_bool.c:18:27
	cmpb	$0, 1(%rax)
	.loc	2 18 40                         # src/parsing/parsing_texture_bool.c:18:40
	je	.LBB0_3
# %bb.2:
	.loc	2 18 54                         # src/parsing/parsing_texture_bool.c:18:54
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 18 43                         # src/parsing/parsing_texture_bool.c:18:43
	movsbl	1(%rax), %edi
	callq	is_space
.Ltmp2:
	.loc	2 18 6                          # src/parsing/parsing_texture_bool.c:18:6
	testb	$1, %al
	jne	.LBB0_3
	jmp	.LBB0_4
.LBB0_3:
.Ltmp3:
	.loc	2 20 4 is_stmt 1                # src/parsing/parsing_texture_bool.c:20:4
	movq	-24(%rbp), %rax
	.loc	2 20 12 is_stmt 0               # src/parsing/parsing_texture_bool.c:20:12
	movl	$0, (%rax)
	.loc	2 21 3 is_stmt 1                # src/parsing/parsing_texture_bool.c:21:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_5
.Ltmp4:
.LBB0_4:
	.loc	2 23 2                          # src/parsing/parsing_texture_bool.c:23:2
	movb	$0, -1(%rbp)
.LBB0_5:
	.loc	2 24 1                          # src/parsing/parsing_texture_bool.c:24:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	is_valid_north_texture, .Lfunc_end0-is_valid_north_texture
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_west_texture           # -- Begin function is_valid_west_texture
	.p2align	4, 0x90
	.type	is_valid_west_texture,@function
is_valid_west_texture:                  # @is_valid_west_texture
.Lfunc_begin1:
	.loc	2 27 0                          # src/parsing/parsing_texture_bool.c:27:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp6:
	.loc	2 28 9 prologue_end             # src/parsing/parsing_texture_bool.c:28:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp7:
	.loc	2 29 7                          # src/parsing/parsing_texture_bool.c:29:7
	movq	-16(%rbp), %rax
	.loc	2 29 6 is_stmt 0                # src/parsing/parsing_texture_bool.c:29:6
	movsbl	(%rax), %eax
	.loc	2 29 15                         # src/parsing/parsing_texture_bool.c:29:15
	cmpl	$69, %eax
	.loc	2 29 22                         # src/parsing/parsing_texture_bool.c:29:22
	jne	.LBB1_4
# %bb.1:
	.loc	2 29 29                         # src/parsing/parsing_texture_bool.c:29:29
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 29 27                         # src/parsing/parsing_texture_bool.c:29:27
	cmpb	$0, 1(%rax)
	.loc	2 29 40                         # src/parsing/parsing_texture_bool.c:29:40
	je	.LBB1_3
# %bb.2:
	.loc	2 29 54                         # src/parsing/parsing_texture_bool.c:29:54
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 29 43                         # src/parsing/parsing_texture_bool.c:29:43
	movsbl	1(%rax), %edi
	callq	is_space
.Ltmp8:
	.loc	2 29 6                          # src/parsing/parsing_texture_bool.c:29:6
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:
.Ltmp9:
	.loc	2 31 4 is_stmt 1                # src/parsing/parsing_texture_bool.c:31:4
	movq	-24(%rbp), %rax
	.loc	2 31 12 is_stmt 0               # src/parsing/parsing_texture_bool.c:31:12
	movl	$2, (%rax)
	.loc	2 32 3 is_stmt 1                # src/parsing/parsing_texture_bool.c:32:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_5
.Ltmp10:
.LBB1_4:
	.loc	2 34 2                          # src/parsing/parsing_texture_bool.c:34:2
	movb	$0, -1(%rbp)
.LBB1_5:
	.loc	2 35 1                          # src/parsing/parsing_texture_bool.c:35:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	is_valid_west_texture, .Lfunc_end1-is_valid_west_texture
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_east_texture           # -- Begin function is_valid_east_texture
	.p2align	4, 0x90
	.type	is_valid_east_texture,@function
is_valid_east_texture:                  # @is_valid_east_texture
.Lfunc_begin2:
	.loc	2 38 0                          # src/parsing/parsing_texture_bool.c:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp12:
	.loc	2 39 9 prologue_end             # src/parsing/parsing_texture_bool.c:39:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp13:
	.loc	2 40 7                          # src/parsing/parsing_texture_bool.c:40:7
	movq	-16(%rbp), %rax
	.loc	2 40 6 is_stmt 0                # src/parsing/parsing_texture_bool.c:40:6
	movsbl	(%rax), %eax
	.loc	2 40 15                         # src/parsing/parsing_texture_bool.c:40:15
	cmpl	$65, %eax
	.loc	2 40 22                         # src/parsing/parsing_texture_bool.c:40:22
	jne	.LBB2_4
# %bb.1:
	.loc	2 40 29                         # src/parsing/parsing_texture_bool.c:40:29
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 40 27                         # src/parsing/parsing_texture_bool.c:40:27
	cmpb	$0, 1(%rax)
	.loc	2 40 40                         # src/parsing/parsing_texture_bool.c:40:40
	je	.LBB2_3
# %bb.2:
	.loc	2 40 54                         # src/parsing/parsing_texture_bool.c:40:54
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 40 43                         # src/parsing/parsing_texture_bool.c:40:43
	movsbl	1(%rax), %edi
	callq	is_space
.Ltmp14:
	.loc	2 40 6                          # src/parsing/parsing_texture_bool.c:40:6
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
.Ltmp15:
	.loc	2 42 4 is_stmt 1                # src/parsing/parsing_texture_bool.c:42:4
	movq	-24(%rbp), %rax
	.loc	2 42 12 is_stmt 0               # src/parsing/parsing_texture_bool.c:42:12
	movl	$1, (%rax)
	.loc	2 43 3 is_stmt 1                # src/parsing/parsing_texture_bool.c:43:3
	movb	$1, -1(%rbp)
	jmp	.LBB2_5
.Ltmp16:
.LBB2_4:
	.loc	2 45 2                          # src/parsing/parsing_texture_bool.c:45:2
	movb	$0, -1(%rbp)
.LBB2_5:
	.loc	2 46 1                          # src/parsing/parsing_texture_bool.c:46:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	is_valid_east_texture, .Lfunc_end2-is_valid_east_texture
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_south_texture          # -- Begin function is_valid_south_texture
	.p2align	4, 0x90
	.type	is_valid_south_texture,@function
is_valid_south_texture:                 # @is_valid_south_texture
.Lfunc_begin3:
	.loc	2 49 0                          # src/parsing/parsing_texture_bool.c:49:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp18:
	.loc	2 50 9 prologue_end             # src/parsing/parsing_texture_bool.c:50:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp19:
	.loc	2 51 7                          # src/parsing/parsing_texture_bool.c:51:7
	movq	-16(%rbp), %rax
	.loc	2 51 6 is_stmt 0                # src/parsing/parsing_texture_bool.c:51:6
	movsbl	(%rax), %eax
	.loc	2 51 15                         # src/parsing/parsing_texture_bool.c:51:15
	cmpl	$79, %eax
	.loc	2 51 22                         # src/parsing/parsing_texture_bool.c:51:22
	jne	.LBB3_4
# %bb.1:
	.loc	2 51 29                         # src/parsing/parsing_texture_bool.c:51:29
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 51 27                         # src/parsing/parsing_texture_bool.c:51:27
	cmpb	$0, 1(%rax)
	.loc	2 51 40                         # src/parsing/parsing_texture_bool.c:51:40
	je	.LBB3_3
# %bb.2:
	.loc	2 51 54                         # src/parsing/parsing_texture_bool.c:51:54
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	.loc	2 51 43                         # src/parsing/parsing_texture_bool.c:51:43
	movsbl	1(%rax), %edi
	callq	is_space
.Ltmp20:
	.loc	2 51 6                          # src/parsing/parsing_texture_bool.c:51:6
	testb	$1, %al
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:
.Ltmp21:
	.loc	2 53 4 is_stmt 1                # src/parsing/parsing_texture_bool.c:53:4
	movq	-24(%rbp), %rax
	.loc	2 53 12 is_stmt 0               # src/parsing/parsing_texture_bool.c:53:12
	movl	$3, (%rax)
	.loc	2 54 3 is_stmt 1                # src/parsing/parsing_texture_bool.c:54:3
	movb	$1, -1(%rbp)
	jmp	.LBB3_5
.Ltmp22:
.LBB3_4:
	.loc	2 56 2                          # src/parsing/parsing_texture_bool.c:56:2
	movb	$0, -1(%rbp)
.LBB3_5:
	.loc	2 57 1                          # src/parsing/parsing_texture_bool.c:57:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end3:
	.size	is_valid_south_texture, .Lfunc_end3-is_valid_south_texture
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_texture                # -- Begin function is_valid_texture
	.p2align	4, 0x90
	.type	is_valid_texture,@function
is_valid_texture:                       # @is_valid_texture
.Lfunc_begin4:
	.loc	2 60 0                          # src/parsing/parsing_texture_bool.c:60:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp24:
	.loc	2 61 7 prologue_end             # src/parsing/parsing_texture_bool.c:61:7
	movq	-16(%rbp), %rax
	.loc	2 61 6 is_stmt 0                # src/parsing/parsing_texture_bool.c:61:6
	movsbl	(%rax), %eax
	.loc	2 61 15                         # src/parsing/parsing_texture_bool.c:61:15
	cmpl	$78, %eax
.Ltmp25:
	.loc	2 61 6                          # src/parsing/parsing_texture_bool.c:61:6
	jne	.LBB4_2
# %bb.1:
.Ltmp26:
	.loc	2 62 34 is_stmt 1               # src/parsing/parsing_texture_bool.c:62:34
	movq	-16(%rbp), %rdi
	.loc	2 62 43 is_stmt 0               # src/parsing/parsing_texture_bool.c:62:43
	movq	-24(%rbp), %rsi
	.loc	2 62 11                         # src/parsing/parsing_texture_bool.c:62:11
	callq	is_valid_north_texture
	.loc	2 62 3                          # src/parsing/parsing_texture_bool.c:62:3
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB4_12
.LBB4_2:
.Ltmp27:
	.loc	2 63 12 is_stmt 1               # src/parsing/parsing_texture_bool.c:63:12
	movq	-16(%rbp), %rax
	.loc	2 63 11 is_stmt 0               # src/parsing/parsing_texture_bool.c:63:11
	movsbl	(%rax), %eax
	.loc	2 63 20                         # src/parsing/parsing_texture_bool.c:63:20
	cmpl	$87, %eax
.Ltmp28:
	.loc	2 63 11                         # src/parsing/parsing_texture_bool.c:63:11
	jne	.LBB4_4
# %bb.3:
.Ltmp29:
	.loc	2 64 33 is_stmt 1               # src/parsing/parsing_texture_bool.c:64:33
	movq	-16(%rbp), %rdi
	.loc	2 64 42 is_stmt 0               # src/parsing/parsing_texture_bool.c:64:42
	movq	-24(%rbp), %rsi
	.loc	2 64 11                         # src/parsing/parsing_texture_bool.c:64:11
	callq	is_valid_west_texture
	.loc	2 64 3                          # src/parsing/parsing_texture_bool.c:64:3
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB4_12
.LBB4_4:
.Ltmp30:
	.loc	2 65 12 is_stmt 1               # src/parsing/parsing_texture_bool.c:65:12
	movq	-16(%rbp), %rax
	.loc	2 65 11 is_stmt 0               # src/parsing/parsing_texture_bool.c:65:11
	movsbl	(%rax), %eax
	.loc	2 65 20                         # src/parsing/parsing_texture_bool.c:65:20
	cmpl	$83, %eax
.Ltmp31:
	.loc	2 65 11                         # src/parsing/parsing_texture_bool.c:65:11
	jne	.LBB4_6
# %bb.5:
.Ltmp32:
	.loc	2 66 34 is_stmt 1               # src/parsing/parsing_texture_bool.c:66:34
	movq	-16(%rbp), %rdi
	.loc	2 66 43 is_stmt 0               # src/parsing/parsing_texture_bool.c:66:43
	movq	-24(%rbp), %rsi
	.loc	2 66 11                         # src/parsing/parsing_texture_bool.c:66:11
	callq	is_valid_south_texture
	.loc	2 66 3                          # src/parsing/parsing_texture_bool.c:66:3
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB4_12
.LBB4_6:
.Ltmp33:
	.loc	2 67 12 is_stmt 1               # src/parsing/parsing_texture_bool.c:67:12
	movq	-16(%rbp), %rax
	.loc	2 67 11 is_stmt 0               # src/parsing/parsing_texture_bool.c:67:11
	movsbl	(%rax), %eax
	.loc	2 67 20                         # src/parsing/parsing_texture_bool.c:67:20
	cmpl	$69, %eax
.Ltmp34:
	.loc	2 67 11                         # src/parsing/parsing_texture_bool.c:67:11
	jne	.LBB4_8
# %bb.7:
.Ltmp35:
	.loc	2 68 33 is_stmt 1               # src/parsing/parsing_texture_bool.c:68:33
	movq	-16(%rbp), %rdi
	.loc	2 68 42 is_stmt 0               # src/parsing/parsing_texture_bool.c:68:42
	movq	-24(%rbp), %rsi
	.loc	2 68 11                         # src/parsing/parsing_texture_bool.c:68:11
	callq	is_valid_east_texture
	.loc	2 68 3                          # src/parsing/parsing_texture_bool.c:68:3
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB4_12
.Ltmp36:
.LBB4_8:
	.loc	2 0 3                           # src/parsing/parsing_texture_bool.c:0:3
	jmp	.LBB4_9
.LBB4_9:
	jmp	.LBB4_10
.LBB4_10:
	jmp	.LBB4_11
.LBB4_11:
	.loc	2 69 3 is_stmt 1                # src/parsing/parsing_texture_bool.c:69:3
	movq	-24(%rbp), %rax
	.loc	2 69 11 is_stmt 0               # src/parsing/parsing_texture_bool.c:69:11
	movl	$-1, (%rax)
	.loc	2 70 2 is_stmt 1                # src/parsing/parsing_texture_bool.c:70:2
	movb	$0, -1(%rbp)
.LBB4_12:
	.loc	2 71 1                          # src/parsing/parsing_texture_bool.c:71:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end4:
	.size	is_valid_texture, .Lfunc_end4-is_valid_texture
	.cfi_endproc
                                        # -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x185 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x31 DW_TAG_enumeration_type
	.long	91                              # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5b:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x62:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	368                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x7b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	375                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x89:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x98:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	368                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	375                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xbf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xce:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	368                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xe7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	375                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x104:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	368                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x11d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	375                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x12b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x13a:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	368                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x153:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	375                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x161:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x170:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x177:0x5 DW_TAG_pointer_type
	.long	380                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x17c:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x183:0x5 DW_TAG_pointer_type
	.long	392                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x188:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_texture_bool.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=73
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=112
.Linfo_string4:
	.asciz	"north"                         # string offset=125
.Linfo_string5:
	.asciz	"east"                          # string offset=131
.Linfo_string6:
	.asciz	"west"                          # string offset=136
.Linfo_string7:
	.asciz	"south"                         # string offset=141
.Linfo_string8:
	.asciz	"e_floor"                       # string offset=147
.Linfo_string9:
	.asciz	"ceiling"                       # string offset=155
.Linfo_string10:
	.asciz	"e_element"                     # string offset=163
.Linfo_string11:
	.asciz	"is_valid_north_texture"        # string offset=173
.Linfo_string12:
	.asciz	"_Bool"                         # string offset=196
.Linfo_string13:
	.asciz	"is_valid_west_texture"         # string offset=202
.Linfo_string14:
	.asciz	"is_valid_east_texture"         # string offset=224
.Linfo_string15:
	.asciz	"is_valid_south_texture"        # string offset=246
.Linfo_string16:
	.asciz	"is_valid_texture"              # string offset=269
.Linfo_string17:
	.asciz	"element"                       # string offset=286
.Linfo_string18:
	.asciz	"char"                          # string offset=294
.Linfo_string19:
	.asciz	"texture"                       # string offset=299
.Linfo_string20:
	.asciz	"int"                           # string offset=307
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_valid_north_texture
	.addrsig_sym is_space
	.addrsig_sym is_valid_west_texture
	.addrsig_sym is_valid_east_texture
	.addrsig_sym is_valid_south_texture
	.section	.debug_line,"",@progbits
.Lline_table_start0:
