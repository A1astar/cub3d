	.text
	.file	"error.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/error/../../include/cub3d.h"
	.globl	print_error                     # -- Begin function print_error
	.p2align	4, 0x90
	.type	print_error,@function
print_error:                            # @print_error
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/error/error.c"
	.loc	2 16 0                          # src/error/error.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp0:
	.loc	2 17 13 prologue_end            # src/error/error.c:17:13
	cmpl	$0, -4(%rbp)
.Ltmp1:
	.loc	2 17 6 is_stmt 0                # src/error/error.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 18 3 is_stmt 1                # src/error/error.c:18:3
	movl	$2, %edi
	movabsq	$.L.str, %rsi
	movl	$14, %edx
	callq	write
	jmp	.LBB0_29
.LBB0_2:
.Ltmp3:
	.loc	2 19 18                         # src/error/error.c:19:18
	cmpl	$1, -4(%rbp)
.Ltmp4:
	.loc	2 19 11 is_stmt 0               # src/error/error.c:19:11
	jne	.LBB0_4
# %bb.3:
.Ltmp5:
	.loc	2 20 3 is_stmt 1                # src/error/error.c:20:3
	movl	$2, %edi
	movabsq	$.L.str.1, %rsi
	movl	$14, %edx
	callq	write
	jmp	.LBB0_28
.LBB0_4:
.Ltmp6:
	.loc	2 21 18                         # src/error/error.c:21:18
	cmpl	$2, -4(%rbp)
.Ltmp7:
	.loc	2 21 11 is_stmt 0               # src/error/error.c:21:11
	jne	.LBB0_6
# %bb.5:
.Ltmp8:
	.loc	2 22 3 is_stmt 1                # src/error/error.c:22:3
	movl	$2, %edi
	movabsq	$.L.str.2, %rsi
	movl	$26, %edx
	callq	write
	jmp	.LBB0_27
.LBB0_6:
.Ltmp9:
	.loc	2 23 18                         # src/error/error.c:23:18
	cmpl	$4, -4(%rbp)
.Ltmp10:
	.loc	2 23 11 is_stmt 0               # src/error/error.c:23:11
	jne	.LBB0_8
# %bb.7:
.Ltmp11:
	.loc	2 24 3 is_stmt 1                # src/error/error.c:24:3
	movl	$2, %edi
	movabsq	$.L.str.3, %rsi
	movl	$15, %edx
	callq	write
	jmp	.LBB0_26
.LBB0_8:
.Ltmp12:
	.loc	2 25 18                         # src/error/error.c:25:18
	cmpl	$6, -4(%rbp)
.Ltmp13:
	.loc	2 25 11 is_stmt 0               # src/error/error.c:25:11
	jne	.LBB0_10
# %bb.9:
.Ltmp14:
	.loc	2 26 3 is_stmt 1                # src/error/error.c:26:3
	movl	$2, %edi
	movabsq	$.L.str.4, %rsi
	movl	$16, %edx
	callq	write
	jmp	.LBB0_25
.LBB0_10:
.Ltmp15:
	.loc	2 27 18                         # src/error/error.c:27:18
	cmpl	$9, -4(%rbp)
.Ltmp16:
	.loc	2 27 11 is_stmt 0               # src/error/error.c:27:11
	jne	.LBB0_12
# %bb.11:
.Ltmp17:
	.loc	2 28 3 is_stmt 1                # src/error/error.c:28:3
	movl	$2, %edi
	movabsq	$.L.str.5, %rsi
	movl	$13, %edx
	callq	write
	jmp	.LBB0_24
.LBB0_12:
.Ltmp18:
	.loc	2 29 18                         # src/error/error.c:29:18
	cmpl	$5, -4(%rbp)
.Ltmp19:
	.loc	2 29 11 is_stmt 0               # src/error/error.c:29:11
	jne	.LBB0_14
# %bb.13:
.Ltmp20:
	.loc	2 30 3 is_stmt 1                # src/error/error.c:30:3
	movl	$2, %edi
	movabsq	$.L.str.6, %rsi
	movl	$9, %edx
	callq	write
	jmp	.LBB0_23
.LBB0_14:
.Ltmp21:
	.loc	2 31 18                         # src/error/error.c:31:18
	cmpl	$10, -4(%rbp)
.Ltmp22:
	.loc	2 31 11 is_stmt 0               # src/error/error.c:31:11
	jne	.LBB0_16
# %bb.15:
.Ltmp23:
	.loc	2 32 3 is_stmt 1                # src/error/error.c:32:3
	movl	$2, %edi
	movabsq	$.L.str.7, %rsi
	movl	$15, %edx
	callq	write
	jmp	.LBB0_22
.LBB0_16:
.Ltmp24:
	.loc	2 33 18                         # src/error/error.c:33:18
	cmpl	$3, -4(%rbp)
.Ltmp25:
	.loc	2 33 11 is_stmt 0               # src/error/error.c:33:11
	jne	.LBB0_18
# %bb.17:
.Ltmp26:
	.loc	2 34 3 is_stmt 1                # src/error/error.c:34:3
	movl	$2, %edi
	movabsq	$.L.str.8, %rsi
	movl	$15, %edx
	callq	write
	jmp	.LBB0_21
.LBB0_18:
.Ltmp27:
	.loc	2 35 18                         # src/error/error.c:35:18
	cmpl	$11, -4(%rbp)
.Ltmp28:
	.loc	2 35 11 is_stmt 0               # src/error/error.c:35:11
	jne	.LBB0_20
# %bb.19:
.Ltmp29:
	.loc	2 36 3 is_stmt 1                # src/error/error.c:36:3
	movl	$2, %edi
	movabsq	$.L.str.9, %rsi
	movl	$17, %edx
	callq	write
.Ltmp30:
.LBB0_20:
	.loc	2 0 3 is_stmt 0                 # src/error/error.c:0:3
	jmp	.LBB0_21
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	jmp	.LBB0_28
.LBB0_28:
	jmp	.LBB0_29
.LBB0_29:
	.loc	2 37 1 is_stmt 1                # src/error/error.c:37:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp31:
.Lfunc_end0:
	.size	print_error, .Lfunc_end0-print_error
	.cfi_endproc
                                        # -- End function
	.globl	print_error_then_exit_program   # -- Begin function print_error_then_exit_program
	.p2align	4, 0x90
	.type	print_error_then_exit_program,@function
print_error_then_exit_program:          # @print_error_then_exit_program
.Lfunc_begin1:
	.loc	2 40 0                          # src/error/error.c:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp32:
	.loc	2 41 14 prologue_end            # src/error/error.c:41:14
	movl	-12(%rbp), %edi
	.loc	2 41 2 is_stmt 0                # src/error/error.c:41:2
	callq	print_error
.Ltmp33:
	.loc	2 42 13 is_stmt 1               # src/error/error.c:42:13
	cmpl	$2, -12(%rbp)
.Ltmp34:
	.loc	2 42 6 is_stmt 0                # src/error/error.c:42:6
	je	.LBB1_2
# %bb.1:
.Ltmp35:
	.loc	2 43 17 is_stmt 1               # src/error/error.c:43:17
	movq	-8(%rbp), %rdi
	.loc	2 43 3 is_stmt 0                # src/error/error.c:43:3
	callq	clean_program
.Ltmp36:
.LBB1_2:
	.loc	2 44 10 is_stmt 1               # src/error/error.c:44:10
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	.loc	2 44 2 is_stmt 0                # src/error/error.c:44:2
	callq	__errno_location
	movl	-16(%rbp), %ecx                 # 4-byte Reload
	.loc	2 44 8                          # src/error/error.c:44:8
	movl	%ecx, (%rax)
	.loc	2 45 2 is_stmt 1                # src/error/error.c:45:2
	movl	$1, %edi
	callq	exit
.Ltmp37:
.Lfunc_end1:
	.size	print_error_then_exit_program, .Lfunc_end1-print_error_then_exit_program
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR MLX PTR\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"ERROR WIN PTR\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\033[31mERROR ARG NUMBER\n\033[0m"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ERROR FILENAME\n"
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ERROR OPEN FILE\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ERROR MALLOC\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ERROR ID\n"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ERROR MAP DATA\n"
	.size	.L.str.7, 16

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ERROR XPM FILE\n"
	.size	.L.str.8, 16

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"ERROR MAP FORMAT\n"
	.size	.L.str.9, 18

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/error/../../include/cub3d_player.h"
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
	.byte	8                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	10                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x5d0 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x55 DW_TAG_enumeration_type
	.long	127                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
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
	.byte	3                               # Abbrev [3] 0x5a:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x60:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6c:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x72:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x7f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x86:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x9b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xaa:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xbf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	227                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xcd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xdc:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xe3:0x5 DW_TAG_pointer_type
	.long	232                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe8:0xb DW_TAG_typedef
	.long	243                             # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xf3:0x8d DW_TAG_structure_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xfb:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x107:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x113:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x11f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12b:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x137:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	794                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x143:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	916                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x14f:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1059                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x15b:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1108                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x167:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1277                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x173:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1379                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x180:0xb DW_TAG_typedef
	.long	395                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x18b:0xb DW_TAG_typedef
	.long	406                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x196:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x19d:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x19e:0x5 DW_TAG_pointer_type
	.long	419                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a3:0xb DW_TAG_typedef
	.long	430                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1ae:0x75 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1b6:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	547                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c2:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	547                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ce:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1da:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1e6:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1f2:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1fe:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	637                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x20a:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	637                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x216:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	656                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x223:0xb DW_TAG_typedef
	.long	558                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x22e:0xb DW_TAG_typedef
	.long	569                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x239:0x7 DW_TAG_base_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x240:0x5 DW_TAG_pointer_type
	.long	581                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x245:0xb DW_TAG_typedef
	.long	592                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x250:0x2d DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x258:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x264:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x270:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x27d:0xc DW_TAG_array_type
	.long	384                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x282:0x6 DW_TAG_subrange_type
	.long	649                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x289:0x7 DW_TAG_base_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x290:0x5 DW_TAG_pointer_type
	.long	661                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x295:0x5 DW_TAG_pointer_type
	.long	666                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x29a:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2a1:0x5 DW_TAG_pointer_type
	.long	678                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2a6:0xb DW_TAG_typedef
	.long	689                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2b1:0x69 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2b9:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c5:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2d1:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2dd:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e9:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2f5:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x301:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x30d:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	656                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x31a:0x5 DW_TAG_pointer_type
	.long	799                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x31f:0xb DW_TAG_typedef
	.long	810                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x32a:0x15 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x332:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	831                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x33f:0x5 DW_TAG_pointer_type
	.long	836                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x344:0xb DW_TAG_typedef
	.long	847                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x34f:0x45 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x357:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x363:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x36f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37b:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x387:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x394:0x5 DW_TAG_pointer_type
	.long	921                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x399:0xb DW_TAG_typedef
	.long	932                             # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3a4:0x69 DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c4:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x400:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1044                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x40d:0x7 DW_TAG_base_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x414:0x5 DW_TAG_pointer_type
	.long	1049                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x419:0x5 DW_TAG_pointer_type
	.long	1054                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x41e:0x5 DW_TAG_pointer_type
	.long	384                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x423:0x5 DW_TAG_pointer_type
	.long	1064                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x428:0xb DW_TAG_typedef
	.long	1075                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x433:0x21 DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x43b:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x447:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x454:0x5 DW_TAG_pointer_type
	.long	1113                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x459:0xb DW_TAG_typedef
	.long	1124                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x464:0x99 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x46c:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x478:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x484:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x490:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49c:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a8:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4b4:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4c0:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4cc:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d8:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e4:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f0:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4fd:0x5 DW_TAG_pointer_type
	.long	1282                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x502:0xb DW_TAG_typedef
	.long	1293                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x50d:0x39 DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x515:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1350                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x521:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1350                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x52d:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1350                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x539:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	1350                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x546:0xb DW_TAG_typedef
	.long	1361                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x551:0xb DW_TAG_typedef
	.long	1372                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x55c:0x7 DW_TAG_base_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x563:0x5 DW_TAG_pointer_type
	.long	1384                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x568:0xb DW_TAG_typedef
	.long	1395                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x573:0x51 DW_TAG_structure_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x57b:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x587:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x593:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1476                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1476                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5b7:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1476                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c4:0xb DW_TAG_typedef
	.long	1487                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5cf:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/error/error.c"             # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=56
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=95
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=108
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=120
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=132
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=144
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=161
.Linfo_string9:
	.asciz	"err_id"                        # string offset=174
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=181
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=190
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=200
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=212
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=223
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=238
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=259
.Linfo_string17:
	.asciz	"print_error"                   # string offset=269
.Linfo_string18:
	.asciz	"print_error_then_exit_program" # string offset=281
.Linfo_string19:
	.asciz	"errnum"                        # string offset=311
.Linfo_string20:
	.asciz	"int"                           # string offset=318
.Linfo_string21:
	.asciz	"cub3d"                         # string offset=322
.Linfo_string22:
	.asciz	"program_state"                 # string offset=328
.Linfo_string23:
	.asciz	"unsigned char"                 # string offset=342
.Linfo_string24:
	.asciz	"__uint8_t"                     # string offset=356
.Linfo_string25:
	.asciz	"uint8_t"                       # string offset=366
.Linfo_string26:
	.asciz	"win_ptr"                       # string offset=374
.Linfo_string27:
	.asciz	"mlx_ptr"                       # string offset=382
.Linfo_string28:
	.asciz	"map"                           # string offset=390
.Linfo_string29:
	.asciz	"width"                         # string offset=394
.Linfo_string30:
	.asciz	"long unsigned int"             # string offset=400
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=418
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=429
.Linfo_string33:
	.asciz	"height"                        # string offset=438
.Linfo_string34:
	.asciz	"no_texture"                    # string offset=445
.Linfo_string35:
	.asciz	"ptr"                           # string offset=456
.Linfo_string36:
	.asciz	"s_xpm"                         # string offset=460
.Linfo_string37:
	.asciz	"t_xpm"                         # string offset=466
.Linfo_string38:
	.asciz	"so_texture"                    # string offset=472
.Linfo_string39:
	.asciz	"we_texture"                    # string offset=483
.Linfo_string40:
	.asciz	"ea_texture"                    # string offset=494
.Linfo_string41:
	.asciz	"ceiling"                       # string offset=505
.Linfo_string42:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=513
.Linfo_string43:
	.asciz	"floor"                         # string offset=533
.Linfo_string44:
	.asciz	"data"                          # string offset=539
.Linfo_string45:
	.asciz	"char"                          # string offset=544
.Linfo_string46:
	.asciz	"s_map"                         # string offset=549
.Linfo_string47:
	.asciz	"t_map"                         # string offset=555
.Linfo_string48:
	.asciz	"file"                          # string offset=561
.Linfo_string49:
	.asciz	"fd"                            # string offset=566
.Linfo_string50:
	.asciz	"mask"                          # string offset=569
.Linfo_string51:
	.asciz	"offset"                        # string offset=574
.Linfo_string52:
	.asciz	"no_filename"                   # string offset=581
.Linfo_string53:
	.asciz	"so_filename"                   # string offset=593
.Linfo_string54:
	.asciz	"we_filename"                   # string offset=605
.Linfo_string55:
	.asciz	"ea_filename"                   # string offset=617
.Linfo_string56:
	.asciz	"s_file"                        # string offset=629
.Linfo_string57:
	.asciz	"t_file"                        # string offset=636
.Linfo_string58:
	.asciz	"scene"                         # string offset=643
.Linfo_string59:
	.asciz	"img"                           # string offset=649
.Linfo_string60:
	.asciz	"addr"                          # string offset=653
.Linfo_string61:
	.asciz	"endian"                        # string offset=658
.Linfo_string62:
	.asciz	"size_line"                     # string offset=665
.Linfo_string63:
	.asciz	"bpp"                           # string offset=675
.Linfo_string64:
	.asciz	"s_img"                         # string offset=679
.Linfo_string65:
	.asciz	"t_img"                         # string offset=685
.Linfo_string66:
	.asciz	"s_scene"                       # string offset=691
.Linfo_string67:
	.asciz	"t_scene"                       # string offset=699
.Linfo_string68:
	.asciz	"player"                        # string offset=707
.Linfo_string69:
	.asciz	"x0"                            # string offset=714
.Linfo_string70:
	.asciz	"y0"                            # string offset=717
.Linfo_string71:
	.asciz	"x1"                            # string offset=720
.Linfo_string72:
	.asciz	"y1"                            # string offset=723
.Linfo_string73:
	.asciz	"angle"                         # string offset=726
.Linfo_string74:
	.asciz	"double"                        # string offset=732
.Linfo_string75:
	.asciz	"pos_x"                         # string offset=739
.Linfo_string76:
	.asciz	"pos_y"                         # string offset=745
.Linfo_string77:
	.asciz	"vertex"                        # string offset=751
.Linfo_string78:
	.asciz	"s_player"                      # string offset=758
.Linfo_string79:
	.asciz	"t_player"                      # string offset=767
.Linfo_string80:
	.asciz	"window"                        # string offset=776
.Linfo_string81:
	.asciz	"s_window"                      # string offset=783
.Linfo_string82:
	.asciz	"t_window"                      # string offset=792
.Linfo_string83:
	.asciz	"raycast"                       # string offset=801
.Linfo_string84:
	.asciz	"posX"                          # string offset=809
.Linfo_string85:
	.asciz	"posY"                          # string offset=814
.Linfo_string86:
	.asciz	"dirX"                          # string offset=819
.Linfo_string87:
	.asciz	"dirY"                          # string offset=824
.Linfo_string88:
	.asciz	"planeX"                        # string offset=829
.Linfo_string89:
	.asciz	"planeY"                        # string offset=836
.Linfo_string90:
	.asciz	"sideX"                         # string offset=843
.Linfo_string91:
	.asciz	"sideY"                         # string offset=849
.Linfo_string92:
	.asciz	"deltaDistX"                    # string offset=855
.Linfo_string93:
	.asciz	"deltaDistY"                    # string offset=866
.Linfo_string94:
	.asciz	"time"                          # string offset=877
.Linfo_string95:
	.asciz	"oldtime"                       # string offset=882
.Linfo_string96:
	.asciz	"s_raycast"                     # string offset=890
.Linfo_string97:
	.asciz	"t_raycast"                     # string offset=900
.Linfo_string98:
	.asciz	"minimap"                       # string offset=910
.Linfo_string99:
	.asciz	"unsigned short"                # string offset=918
.Linfo_string100:
	.asciz	"__uint16_t"                    # string offset=933
.Linfo_string101:
	.asciz	"uint16_t"                      # string offset=944
.Linfo_string102:
	.asciz	"x_pos"                         # string offset=953
.Linfo_string103:
	.asciz	"y_pos"                         # string offset=959
.Linfo_string104:
	.asciz	"s_minimap"                     # string offset=965
.Linfo_string105:
	.asciz	"t_minimap"                     # string offset=975
.Linfo_string106:
	.asciz	"main_menu"                     # string offset=985
.Linfo_string107:
	.asciz	"xpm"                           # string offset=995
.Linfo_string108:
	.asciz	"color"                         # string offset=999
.Linfo_string109:
	.asciz	"__uint32_t"                    # string offset=1005
.Linfo_string110:
	.asciz	"uint32_t"                      # string offset=1016
.Linfo_string111:
	.asciz	"s_main_menu"                   # string offset=1025
.Linfo_string112:
	.asciz	"t_main_menu"                   # string offset=1037
.Linfo_string113:
	.asciz	"s_cub3d"                       # string offset=1049
.Linfo_string114:
	.asciz	"t_cub3d"                       # string offset=1057
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_error
	.addrsig_sym write
	.addrsig_sym clean_program
	.addrsig_sym __errno_location
	.addrsig_sym exit
	.section	.debug_line,"",@progbits
.Lline_table_start0:
