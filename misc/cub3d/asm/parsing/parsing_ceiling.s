	.text
	.file	"parsing_ceiling.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	is_valid_ceiling                # -- Begin function is_valid_ceiling
	.p2align	4, 0x90
	.type	is_valid_ceiling,@function
is_valid_ceiling:                       # @is_valid_ceiling
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_ceiling.c"
	.loc	2 16 0                          # src/parsing/parsing_ceiling.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 7 prologue_end             # src/parsing/parsing_ceiling.c:17:7
	movq	-16(%rbp), %rax
	.loc	2 17 6 is_stmt 0                # src/parsing/parsing_ceiling.c:17:6
	movsbl	(%rax), %eax
	.loc	2 17 15                         # src/parsing/parsing_ceiling.c:17:15
	cmpl	$67, %eax
.Ltmp1:
	.loc	2 17 6                          # src/parsing/parsing_ceiling.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 18 3 is_stmt 1                # src/parsing/parsing_ceiling.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.Ltmp3:
.LBB0_2:
	.loc	2 19 2                          # src/parsing/parsing_ceiling.c:19:2
	movb	$0, -1(%rbp)
.LBB0_3:
	.loc	2 20 1                          # src/parsing/parsing_ceiling.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_valid_ceiling, .Lfunc_end0-is_valid_ceiling
	.cfi_endproc
                                        # -- End function
	.globl	extract_ceiling_data            # -- Begin function extract_ceiling_data
	.p2align	4, 0x90
	.type	extract_ceiling_data,@function
extract_ceiling_data:                   # @extract_ceiling_data
.Lfunc_begin1:
	.loc	2 23 0                          # src/parsing/parsing_ceiling.c:23:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp5:
	.loc	2 28 4 prologue_end             # src/parsing/parsing_ceiling.c:28:4
	movl	$0, -20(%rbp)
	.loc	2 29 4                          # src/parsing/parsing_ceiling.c:29:4
	movl	$0, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 30 9                          # src/parsing/parsing_ceiling.c:30:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	2 30 17 is_stmt 0               # src/parsing/parsing_ceiling.c:30:17
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 30 22                         # src/parsing/parsing_ceiling.c:30:22
	cmpl	$3, -24(%rbp)
	setl	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 0 22                          # src/parsing/parsing_ceiling.c:0:22
	movb	-33(%rbp), %al                  # 1-byte Reload
	.loc	2 30 2                          # src/parsing/parsing_ceiling.c:30:2
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_7
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp6:
	.loc	2 32 23 is_stmt 1               # src/parsing/parsing_ceiling.c:32:23
	movq	-16(%rbp), %rdi
	.loc	2 32 9 is_stmt 0                # src/parsing/parsing_ceiling.c:32:9
	callq	get_rgb_value
	.loc	2 32 7                          # src/parsing/parsing_ceiling.c:32:7
	movq	%rax, -32(%rbp)
.Ltmp7:
	.loc	2 33 8 is_stmt 1                # src/parsing/parsing_ceiling.c:33:8
	cmpq	$0, -32(%rbp)
.Ltmp8:
	.loc	2 33 7 is_stmt 0                # src/parsing/parsing_ceiling.c:33:7
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp9:
	.loc	2 34 34 is_stmt 1               # src/parsing/parsing_ceiling.c:34:34
	movq	-8(%rbp), %rdi
	.loc	2 34 4 is_stmt 0                # src/parsing/parsing_ceiling.c:34:4
	movl	$8, %esi
	callq	print_error_then_exit_program
.Ltmp10:
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 35 36 is_stmt 1               # src/parsing/parsing_ceiling.c:35:36
	movq	-32(%rbp), %rdi
	.loc	2 35 28 is_stmt 0               # src/parsing/parsing_ceiling.c:35:28
	callq	ft_atoi
	movb	%al, %dl
	.loc	2 35 3                          # src/parsing/parsing_ceiling.c:35:3
	movq	-8(%rbp), %rax
	.loc	2 35 10                         # src/parsing/parsing_ceiling.c:35:10
	movq	24(%rax), %rax
	.loc	2 35 3                          # src/parsing/parsing_ceiling.c:35:3
	movslq	-24(%rbp), %rcx
	.loc	2 35 26                         # src/parsing/parsing_ceiling.c:35:26
	movb	%dl, 48(%rax,%rcx)
	.loc	2 36 18 is_stmt 1               # src/parsing/parsing_ceiling.c:36:18
	movq	-32(%rbp), %rdi
	.loc	2 36 8 is_stmt 0                # src/parsing/parsing_ceiling.c:36:8
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	2 36 5                          # src/parsing/parsing_ceiling.c:36:5
	movslq	-20(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	.loc	2 37 4 is_stmt 1                # src/parsing/parsing_ceiling.c:37:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	2 38 8                          # src/parsing/parsing_ceiling.c:38:8
	movq	-32(%rbp), %rdi
	.loc	2 38 3 is_stmt 0                # src/parsing/parsing_ceiling.c:38:3
	callq	free
.Ltmp11:
	.loc	2 30 2 is_stmt 1                # src/parsing/parsing_ceiling.c:30:2
	jmp	.LBB1_1
.LBB1_7:
	.loc	2 40 29                         # src/parsing/parsing_ceiling.c:40:29
	movq	-8(%rbp), %rax
	.loc	2 40 36 is_stmt 0               # src/parsing/parsing_ceiling.c:40:36
	movq	32(%rax), %rsi
	.loc	2 40 42                         # src/parsing/parsing_ceiling.c:40:42
	addq	$4, %rsi
	.loc	2 40 2                          # src/parsing/parsing_ceiling.c:40:2
	movl	$5, %edi
	callq	set_mask_element
	.loc	2 41 1 is_stmt 1                # src/parsing/parsing_ceiling.c:41:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end1:
	.size	extract_ceiling_data, .Lfunc_end1-extract_ceiling_data
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d_player.h"
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x636 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x86:0x31 DW_TAG_enumeration_type
	.long	127                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa4:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xaa:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb0:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb7:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	315                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xd0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xdf:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xf4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	334                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x102:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x110:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	744                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string124                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	744                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string125                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x13b:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x142:0x5 DW_TAG_pointer_type
	.long	327                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x147:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x14e:0x5 DW_TAG_pointer_type
	.long	339                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x153:0xb DW_TAG_typedef
	.long	350                             # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x15e:0x8d DW_TAG_structure_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x166:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x172:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	520                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x17e:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	520                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x18a:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x196:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	775                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1a2:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	896                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ae:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1018                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ba:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1161                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1c6:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1210                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1d2:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1379                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1de:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1481                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1eb:0xb DW_TAG_typedef
	.long	502                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1f6:0xb DW_TAG_typedef
	.long	513                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x201:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x208:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x209:0x5 DW_TAG_pointer_type
	.long	526                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x20e:0xb DW_TAG_typedef
	.long	537                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x219:0x75 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x221:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	654                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x22d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	654                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x239:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x245:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x251:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x25d:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x269:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x275:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x281:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	770                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x28e:0xb DW_TAG_typedef
	.long	665                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x299:0xb DW_TAG_typedef
	.long	676                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2a4:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2ab:0x5 DW_TAG_pointer_type
	.long	688                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2b0:0xb DW_TAG_typedef
	.long	699                             # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2bb:0x2d DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2cf:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2db:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	520                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2e8:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x2ef:0xc DW_TAG_array_type
	.long	491                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2f4:0x6 DW_TAG_subrange_type
	.long	763                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x2fb:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x302:0x5 DW_TAG_pointer_type
	.long	322                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x307:0x5 DW_TAG_pointer_type
	.long	780                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x30c:0xb DW_TAG_typedef
	.long	791                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x317:0x69 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x31f:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x32b:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x337:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x343:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x34f:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x35b:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x367:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x373:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	770                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x380:0x5 DW_TAG_pointer_type
	.long	901                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x385:0xb DW_TAG_typedef
	.long	912                             # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x390:0x15 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x398:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	933                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3a5:0x5 DW_TAG_pointer_type
	.long	938                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3aa:0xb DW_TAG_typedef
	.long	949                             # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3b5:0x45 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3bd:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	520                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3c9:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3d5:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3e1:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ed:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3fa:0x5 DW_TAG_pointer_type
	.long	1023                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3ff:0xb DW_TAG_typedef
	.long	1034                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x40a:0x69 DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x412:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x41e:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x42a:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x436:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x442:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x44e:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x45a:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x466:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1146                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x473:0x7 DW_TAG_base_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x47a:0x5 DW_TAG_pointer_type
	.long	1151                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x47f:0x5 DW_TAG_pointer_type
	.long	1156                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x484:0x5 DW_TAG_pointer_type
	.long	491                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x489:0x5 DW_TAG_pointer_type
	.long	1166                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x48e:0xb DW_TAG_typedef
	.long	1177                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x499:0x21 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4a1:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ad:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4ba:0x5 DW_TAG_pointer_type
	.long	1215                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4bf:0xb DW_TAG_typedef
	.long	1226                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4ca:0x99 DW_TAG_structure_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4d2:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4de:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x502:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51a:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x526:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x532:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53e:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54a:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x556:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x563:0x5 DW_TAG_pointer_type
	.long	1384                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x568:0xb DW_TAG_typedef
	.long	1395                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x573:0x39 DW_TAG_structure_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x57b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x587:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x593:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5ac:0xb DW_TAG_typedef
	.long	1463                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b7:0xb DW_TAG_typedef
	.long	1474                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5c2:0x7 DW_TAG_base_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x5c9:0x5 DW_TAG_pointer_type
	.long	1486                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5ce:0xb DW_TAG_typedef
	.long	1497                            # DW_AT_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5d9:0x51 DW_TAG_structure_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5e1:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ed:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5f9:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x605:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	1578                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x611:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1578                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x61d:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1578                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x62a:0xb DW_TAG_typedef
	.long	1589                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x635:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_ceiling.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=68
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=107
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=120
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=132
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=144
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=156
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=173
.Linfo_string9:
	.asciz	"err_id"                        # string offset=186
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=193
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=202
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=212
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=224
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=235
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=250
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=271
.Linfo_string17:
	.asciz	"north"                         # string offset=281
.Linfo_string18:
	.asciz	"east"                          # string offset=287
.Linfo_string19:
	.asciz	"west"                          # string offset=292
.Linfo_string20:
	.asciz	"south"                         # string offset=297
.Linfo_string21:
	.asciz	"e_floor"                       # string offset=303
.Linfo_string22:
	.asciz	"ceiling"                       # string offset=311
.Linfo_string23:
	.asciz	"e_element"                     # string offset=319
.Linfo_string24:
	.asciz	"is_valid_ceiling"              # string offset=329
.Linfo_string25:
	.asciz	"_Bool"                         # string offset=346
.Linfo_string26:
	.asciz	"extract_ceiling_data"          # string offset=352
.Linfo_string27:
	.asciz	"element"                       # string offset=373
.Linfo_string28:
	.asciz	"char"                          # string offset=381
.Linfo_string29:
	.asciz	"cub3d"                         # string offset=386
.Linfo_string30:
	.asciz	"program_state"                 # string offset=392
.Linfo_string31:
	.asciz	"unsigned char"                 # string offset=406
.Linfo_string32:
	.asciz	"__uint8_t"                     # string offset=420
.Linfo_string33:
	.asciz	"uint8_t"                       # string offset=430
.Linfo_string34:
	.asciz	"win_ptr"                       # string offset=438
.Linfo_string35:
	.asciz	"mlx_ptr"                       # string offset=446
.Linfo_string36:
	.asciz	"map"                           # string offset=454
.Linfo_string37:
	.asciz	"width"                         # string offset=458
.Linfo_string38:
	.asciz	"long unsigned int"             # string offset=464
.Linfo_string39:
	.asciz	"__uint64_t"                    # string offset=482
.Linfo_string40:
	.asciz	"uint64_t"                      # string offset=493
.Linfo_string41:
	.asciz	"height"                        # string offset=502
.Linfo_string42:
	.asciz	"no_texture"                    # string offset=509
.Linfo_string43:
	.asciz	"int"                           # string offset=520
.Linfo_string44:
	.asciz	"ptr"                           # string offset=524
.Linfo_string45:
	.asciz	"s_xpm"                         # string offset=528
.Linfo_string46:
	.asciz	"t_xpm"                         # string offset=534
.Linfo_string47:
	.asciz	"so_texture"                    # string offset=540
.Linfo_string48:
	.asciz	"we_texture"                    # string offset=551
.Linfo_string49:
	.asciz	"ea_texture"                    # string offset=562
.Linfo_string50:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=573
.Linfo_string51:
	.asciz	"floor"                         # string offset=593
.Linfo_string52:
	.asciz	"data"                          # string offset=599
.Linfo_string53:
	.asciz	"s_map"                         # string offset=604
.Linfo_string54:
	.asciz	"t_map"                         # string offset=610
.Linfo_string55:
	.asciz	"file"                          # string offset=616
.Linfo_string56:
	.asciz	"fd"                            # string offset=621
.Linfo_string57:
	.asciz	"mask"                          # string offset=624
.Linfo_string58:
	.asciz	"offset"                        # string offset=629
.Linfo_string59:
	.asciz	"no_filename"                   # string offset=636
.Linfo_string60:
	.asciz	"so_filename"                   # string offset=648
.Linfo_string61:
	.asciz	"we_filename"                   # string offset=660
.Linfo_string62:
	.asciz	"ea_filename"                   # string offset=672
.Linfo_string63:
	.asciz	"s_file"                        # string offset=684
.Linfo_string64:
	.asciz	"t_file"                        # string offset=691
.Linfo_string65:
	.asciz	"scene"                         # string offset=698
.Linfo_string66:
	.asciz	"img"                           # string offset=704
.Linfo_string67:
	.asciz	"addr"                          # string offset=708
.Linfo_string68:
	.asciz	"endian"                        # string offset=713
.Linfo_string69:
	.asciz	"size_line"                     # string offset=720
.Linfo_string70:
	.asciz	"bpp"                           # string offset=730
.Linfo_string71:
	.asciz	"s_img"                         # string offset=734
.Linfo_string72:
	.asciz	"t_img"                         # string offset=740
.Linfo_string73:
	.asciz	"s_scene"                       # string offset=746
.Linfo_string74:
	.asciz	"t_scene"                       # string offset=754
.Linfo_string75:
	.asciz	"player"                        # string offset=762
.Linfo_string76:
	.asciz	"x0"                            # string offset=769
.Linfo_string77:
	.asciz	"y0"                            # string offset=772
.Linfo_string78:
	.asciz	"x1"                            # string offset=775
.Linfo_string79:
	.asciz	"y1"                            # string offset=778
.Linfo_string80:
	.asciz	"angle"                         # string offset=781
.Linfo_string81:
	.asciz	"double"                        # string offset=787
.Linfo_string82:
	.asciz	"pos_x"                         # string offset=794
.Linfo_string83:
	.asciz	"pos_y"                         # string offset=800
.Linfo_string84:
	.asciz	"vertex"                        # string offset=806
.Linfo_string85:
	.asciz	"s_player"                      # string offset=813
.Linfo_string86:
	.asciz	"t_player"                      # string offset=822
.Linfo_string87:
	.asciz	"window"                        # string offset=831
.Linfo_string88:
	.asciz	"s_window"                      # string offset=838
.Linfo_string89:
	.asciz	"t_window"                      # string offset=847
.Linfo_string90:
	.asciz	"raycast"                       # string offset=856
.Linfo_string91:
	.asciz	"posX"                          # string offset=864
.Linfo_string92:
	.asciz	"posY"                          # string offset=869
.Linfo_string93:
	.asciz	"dirX"                          # string offset=874
.Linfo_string94:
	.asciz	"dirY"                          # string offset=879
.Linfo_string95:
	.asciz	"planeX"                        # string offset=884
.Linfo_string96:
	.asciz	"planeY"                        # string offset=891
.Linfo_string97:
	.asciz	"sideX"                         # string offset=898
.Linfo_string98:
	.asciz	"sideY"                         # string offset=904
.Linfo_string99:
	.asciz	"deltaDistX"                    # string offset=910
.Linfo_string100:
	.asciz	"deltaDistY"                    # string offset=921
.Linfo_string101:
	.asciz	"time"                          # string offset=932
.Linfo_string102:
	.asciz	"oldtime"                       # string offset=937
.Linfo_string103:
	.asciz	"s_raycast"                     # string offset=945
.Linfo_string104:
	.asciz	"t_raycast"                     # string offset=955
.Linfo_string105:
	.asciz	"minimap"                       # string offset=965
.Linfo_string106:
	.asciz	"unsigned short"                # string offset=973
.Linfo_string107:
	.asciz	"__uint16_t"                    # string offset=988
.Linfo_string108:
	.asciz	"uint16_t"                      # string offset=999
.Linfo_string109:
	.asciz	"x_pos"                         # string offset=1008
.Linfo_string110:
	.asciz	"y_pos"                         # string offset=1014
.Linfo_string111:
	.asciz	"s_minimap"                     # string offset=1020
.Linfo_string112:
	.asciz	"t_minimap"                     # string offset=1030
.Linfo_string113:
	.asciz	"main_menu"                     # string offset=1040
.Linfo_string114:
	.asciz	"xpm"                           # string offset=1050
.Linfo_string115:
	.asciz	"color"                         # string offset=1054
.Linfo_string116:
	.asciz	"__uint32_t"                    # string offset=1060
.Linfo_string117:
	.asciz	"uint32_t"                      # string offset=1071
.Linfo_string118:
	.asciz	"s_main_menu"                   # string offset=1080
.Linfo_string119:
	.asciz	"t_main_menu"                   # string offset=1092
.Linfo_string120:
	.asciz	"s_cub3d"                       # string offset=1104
.Linfo_string121:
	.asciz	"t_cub3d"                       # string offset=1112
.Linfo_string122:
	.asciz	"line"                          # string offset=1120
.Linfo_string123:
	.asciz	"i"                             # string offset=1125
.Linfo_string124:
	.asciz	"j"                             # string offset=1127
.Linfo_string125:
	.asciz	"tmp"                           # string offset=1129
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_rgb_value
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym ft_atoi
	.addrsig_sym ft_strlen
	.addrsig_sym free
	.addrsig_sym set_mask_element
	.section	.debug_line,"",@progbits
.Lline_table_start0:
