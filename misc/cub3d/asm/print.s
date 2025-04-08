	.text
	.file	"print.c"
	.globl	print_map_data                  # -- Begin function print_map_data
	.p2align	4, 0x90
	.type	print_map_data,@function
print_map_data:                         # @print_map_data
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/print.c"
	.loc	1 16 0                          # src/print.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 19 4 prologue_end             # src/print.c:19:4
	movl	$0, -12(%rbp)
	.loc	1 20 2                          # src/print.c:20:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 21 9                          # src/print.c:21:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 21 2 is_stmt 0                # src/print.c:21:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 23 18 is_stmt 1               # src/print.c:23:18
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 23 3 is_stmt 0                # src/print.c:23:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 24 4 is_stmt 1                # src/print.c:24:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp2:
	.loc	1 21 2                          # src/print.c:21:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 26 2                          # src/print.c:26:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 27 1                          # src/print.c:27:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	print_map_data, .Lfunc_end0-print_map_data
	.cfi_endproc
                                        # -- End function
	.globl	print_ceiling_and_floor         # -- Begin function print_ceiling_and_floor
	.p2align	4, 0x90
	.type	print_ceiling_and_floor,@function
print_ceiling_and_floor:                # @print_ceiling_and_floor
.Lfunc_begin1:
	.loc	1 30 0                          # src/print.c:30:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp4:
	.loc	1 33 4 prologue_end             # src/print.c:33:4
	movl	$0, -20(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 35 11                         # src/print.c:35:11
	cmpl	$3, -20(%rbp)
	.loc	1 35 2 is_stmt 0                # src/print.c:35:2
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp5:
	.loc	1 37 19 is_stmt 1               # src/print.c:37:19
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	.loc	1 37 3 is_stmt 0                # src/print.c:37:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 38 4 is_stmt 1                # src/print.c:38:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp6:
	.loc	1 35 2                          # src/print.c:35:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 40 1                          # src/print.c:40:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	print_ceiling_and_floor, .Lfunc_end1-print_ceiling_and_floor
	.cfi_endproc
                                        # -- End function
	.globl	print_file_data                 # -- Begin function print_file_data
	.p2align	4, 0x90
	.type	print_file_data,@function
print_file_data:                        # @print_file_data
.Lfunc_begin2:
	.loc	1 43 0                          # src/print.c:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	1 50 2 prologue_end             # src/print.c:50:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 51 26                         # src/print.c:51:26
	movq	-8(%rbp), %rdi
	.loc	1 51 31 is_stmt 0               # src/print.c:51:31
	addq	$48, %rdi
	.loc	1 51 40                         # src/print.c:51:40
	movq	-8(%rbp), %rsi
	.loc	1 51 45                         # src/print.c:51:45
	addq	$51, %rsi
	.loc	1 51 2                          # src/print.c:51:2
	callq	print_ceiling_and_floor
	.loc	1 52 2 is_stmt 1                # src/print.c:52:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 53 4                          # src/print.c:53:4
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 54 9                          # src/print.c:54:9
	movq	-8(%rbp), %rax
	.loc	1 54 14 is_stmt 0               # src/print.c:54:14
	movq	56(%rax), %rax
	.loc	1 54 9                          # src/print.c:54:9
	movslq	-12(%rbp), %rcx
	.loc	1 54 2                          # src/print.c:54:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp9:
	.loc	1 56 18 is_stmt 1               # src/print.c:56:18
	movq	-8(%rbp), %rax
	.loc	1 56 23 is_stmt 0               # src/print.c:56:23
	movq	56(%rax), %rax
	.loc	1 56 18                         # src/print.c:56:18
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 56 3                          # src/print.c:56:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 57 4 is_stmt 1                # src/print.c:57:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp10:
	.loc	1 54 2                          # src/print.c:54:2
	jmp	.LBB2_1
.LBB2_3:
	.loc	1 59 2                          # src/print.c:59:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 60 1                          # src/print.c:60:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	print_file_data, .Lfunc_end2-print_file_data
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	4 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/../include/cub3d.h"
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x1f1 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	206                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	223                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5c:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x71:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	230                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x7f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	230                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	223                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x9c:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xb1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	264                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbf:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	223                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xce:0x5 DW_TAG_pointer_type
	.long	211                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd3:0x5 DW_TAG_pointer_type
	.long	216                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd8:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xdf:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xe6:0x5 DW_TAG_pointer_type
	.long	235                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xeb:0xb DW_TAG_typedef
	.long	246                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xf6:0xb DW_TAG_typedef
	.long	257                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x101:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x108:0x5 DW_TAG_pointer_type
	.long	269                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x10d:0xb DW_TAG_typedef
	.long	280                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x118:0x75 DW_TAG_structure_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x120:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	397                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x12c:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	397                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x138:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x144:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x150:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x15c:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x168:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x174:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x180:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	206                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x18d:0xb DW_TAG_typedef
	.long	408                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x198:0xb DW_TAG_typedef
	.long	419                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1a3:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1aa:0x5 DW_TAG_pointer_type
	.long	431                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1af:0xb DW_TAG_typedef
	.long	442                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1ba:0x2d DW_TAG_structure_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1c2:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	223                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1ce:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	223                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1da:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1e7:0x1 DW_TAG_pointer_type
	.byte	11                              # Abbrev [11] 0x1e8:0xc DW_TAG_array_type
	.long	235                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ed:0x6 DW_TAG_subrange_type
	.long	500                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1f4:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/print.c"                   # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=50
.Linfo_string3:
	.asciz	"print_map_data"                # string offset=89
.Linfo_string4:
	.asciz	"print_ceiling_and_floor"       # string offset=104
.Linfo_string5:
	.asciz	"print_file_data"               # string offset=128
.Linfo_string6:
	.asciz	"data"                          # string offset=144
.Linfo_string7:
	.asciz	"char"                          # string offset=149
.Linfo_string8:
	.asciz	"i"                             # string offset=154
.Linfo_string9:
	.asciz	"int"                           # string offset=156
.Linfo_string10:
	.asciz	"ceiling"                       # string offset=160
.Linfo_string11:
	.asciz	"unsigned char"                 # string offset=168
.Linfo_string12:
	.asciz	"__uint8_t"                     # string offset=182
.Linfo_string13:
	.asciz	"uint8_t"                       # string offset=192
.Linfo_string14:
	.asciz	"floor"                         # string offset=200
.Linfo_string15:
	.asciz	"map"                           # string offset=206
.Linfo_string16:
	.asciz	"width"                         # string offset=210
.Linfo_string17:
	.asciz	"long unsigned int"             # string offset=216
.Linfo_string18:
	.asciz	"__uint64_t"                    # string offset=234
.Linfo_string19:
	.asciz	"uint64_t"                      # string offset=245
.Linfo_string20:
	.asciz	"height"                        # string offset=254
.Linfo_string21:
	.asciz	"no_texture"                    # string offset=261
.Linfo_string22:
	.asciz	"ptr"                           # string offset=272
.Linfo_string23:
	.asciz	"s_xpm"                         # string offset=276
.Linfo_string24:
	.asciz	"t_xpm"                         # string offset=282
.Linfo_string25:
	.asciz	"so_texture"                    # string offset=288
.Linfo_string26:
	.asciz	"we_texture"                    # string offset=299
.Linfo_string27:
	.asciz	"ea_texture"                    # string offset=310
.Linfo_string28:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=321
.Linfo_string29:
	.asciz	"s_map"                         # string offset=341
.Linfo_string30:
	.asciz	"t_map"                         # string offset=347
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym printf
	.addrsig_sym print_ceiling_and_floor
	.addrsig_sym ft_printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:
