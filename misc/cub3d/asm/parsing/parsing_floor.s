	.text
	.file	"parsing_floor.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	is_valid_floor                  # -- Begin function is_valid_floor
	.p2align	4, 0x90
	.type	is_valid_floor,@function
is_valid_floor:                         # @is_valid_floor
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_floor.c"
	.loc	2 16 0                          # src/parsing/parsing_floor.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 7 prologue_end             # src/parsing/parsing_floor.c:17:7
	movq	-16(%rbp), %rax
	.loc	2 17 6 is_stmt 0                # src/parsing/parsing_floor.c:17:6
	movsbl	(%rax), %eax
	.loc	2 17 15                         # src/parsing/parsing_floor.c:17:15
	cmpl	$70, %eax
.Ltmp1:
	.loc	2 17 6                          # src/parsing/parsing_floor.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 18 3 is_stmt 1                # src/parsing/parsing_floor.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.Ltmp3:
.LBB0_2:
	.loc	2 19 2                          # src/parsing/parsing_floor.c:19:2
	movb	$0, -1(%rbp)
.LBB0_3:
	.loc	2 20 1                          # src/parsing/parsing_floor.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_valid_floor, .Lfunc_end0-is_valid_floor
	.cfi_endproc
                                        # -- End function
	.globl	extract_floor_data              # -- Begin function extract_floor_data
	.p2align	4, 0x90
	.type	extract_floor_data,@function
extract_floor_data:                     # @extract_floor_data
.Lfunc_begin1:
	.loc	2 23 0                          # src/parsing/parsing_floor.c:23:0
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
	.loc	2 29 4 prologue_end             # src/parsing/parsing_floor.c:29:4
	movl	$0, -20(%rbp)
	.loc	2 30 4                          # src/parsing/parsing_floor.c:30:4
	movl	$0, -24(%rbp)
	.loc	2 31 18                         # src/parsing/parsing_floor.c:31:18
	movq	-16(%rbp), %rdi
	.loc	2 31 8 is_stmt 0                # src/parsing/parsing_floor.c:31:8
	callq	ft_strlen
                                        # kill: def $eax killed $eax killed $rax
	.loc	2 31 6                          # src/parsing/parsing_floor.c:31:6
	movl	%eax, -28(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 32 9 is_stmt 1                # src/parsing/parsing_floor.c:32:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	2 32 17 is_stmt 0               # src/parsing/parsing_floor.c:32:17
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 32 22                         # src/parsing/parsing_floor.c:32:22
	cmpl	$3, -24(%rbp)
	setl	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 0 22                          # src/parsing/parsing_floor.c:0:22
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	2 32 2                          # src/parsing/parsing_floor.c:32:2
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_9
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp6:
	.loc	2 34 24 is_stmt 1               # src/parsing/parsing_floor.c:34:24
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 34 9 is_stmt 0                # src/parsing/parsing_floor.c:34:9
	callq	get_rgb_value
	.loc	2 34 7                          # src/parsing/parsing_floor.c:34:7
	movq	%rax, -40(%rbp)
.Ltmp7:
	.loc	2 35 8 is_stmt 1                # src/parsing/parsing_floor.c:35:8
	cmpq	$0, -40(%rbp)
.Ltmp8:
	.loc	2 35 7 is_stmt 0                # src/parsing/parsing_floor.c:35:7
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp9:
	.loc	2 36 34 is_stmt 1               # src/parsing/parsing_floor.c:36:34
	movq	-8(%rbp), %rdi
	.loc	2 36 4 is_stmt 0                # src/parsing/parsing_floor.c:36:4
	movl	$7, %esi
	callq	print_error_then_exit_program
.Ltmp10:
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 37 34 is_stmt 1               # src/parsing/parsing_floor.c:37:34
	movq	-40(%rbp), %rdi
	.loc	2 37 26 is_stmt 0               # src/parsing/parsing_floor.c:37:26
	callq	ft_atoi
	movb	%al, %dl
	.loc	2 37 3                          # src/parsing/parsing_floor.c:37:3
	movq	-8(%rbp), %rax
	.loc	2 37 10                         # src/parsing/parsing_floor.c:37:10
	movq	24(%rax), %rax
	.loc	2 37 3                          # src/parsing/parsing_floor.c:37:3
	movslq	-24(%rbp), %rcx
	.loc	2 37 24                         # src/parsing/parsing_floor.c:37:24
	movb	%dl, 51(%rax,%rcx)
	.loc	2 38 18 is_stmt 1               # src/parsing/parsing_floor.c:38:18
	movq	-40(%rbp), %rdi
	.loc	2 38 8 is_stmt 0                # src/parsing/parsing_floor.c:38:8
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	2 38 23                         # src/parsing/parsing_floor.c:38:23
	addq	$1, %rcx
	.loc	2 38 5                          # src/parsing/parsing_floor.c:38:5
	movslq	-20(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	.loc	2 39 4 is_stmt 1                # src/parsing/parsing_floor.c:39:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	2 40 8                          # src/parsing/parsing_floor.c:40:8
	movq	-40(%rbp), %rdi
	.loc	2 40 3 is_stmt 0                # src/parsing/parsing_floor.c:40:3
	callq	free
.Ltmp11:
	.loc	2 41 7 is_stmt 1                # src/parsing/parsing_floor.c:41:7
	movl	-20(%rbp), %eax
	.loc	2 41 9 is_stmt 0                # src/parsing/parsing_floor.c:41:9
	cmpl	-28(%rbp), %eax
.Ltmp12:
	.loc	2 41 7                          # src/parsing/parsing_floor.c:41:7
	jle	.LBB1_8
# %bb.7:
.Ltmp13:
	.loc	2 42 4 is_stmt 1                # src/parsing/parsing_floor.c:42:4
	jmp	.LBB1_9
.Ltmp14:
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 32 2                          # src/parsing/parsing_floor.c:32:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	2 44 29                         # src/parsing/parsing_floor.c:44:29
	movq	-8(%rbp), %rax
	.loc	2 44 36 is_stmt 0               # src/parsing/parsing_floor.c:44:36
	movq	32(%rax), %rsi
	.loc	2 44 42                         # src/parsing/parsing_floor.c:44:42
	addq	$4, %rsi
	.loc	2 44 2                          # src/parsing/parsing_floor.c:44:2
	movl	$4, %edi
	callq	set_mask_element
	.loc	2 45 1 is_stmt 1                # src/parsing/parsing_floor.c:45:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	extract_floor_data, .Lfunc_end1-extract_floor_data
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
	.byte	1                               # Abbrev [1] 0xb:0x644 DW_TAG_compile_unit
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
	.long	329                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xd0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	336                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xdf:0x6a DW_TAG_subprogram
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
	.long	348                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x102:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	336                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x110:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	758                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string124                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	758                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string125                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	758                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x13a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string126                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	336                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x149:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x150:0x5 DW_TAG_pointer_type
	.long	341                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x155:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x15c:0x5 DW_TAG_pointer_type
	.long	353                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x161:0xb DW_TAG_typedef
	.long	364                             # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x16c:0x8d DW_TAG_structure_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x174:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x180:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x18c:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x198:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	535                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1a4:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	789                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1b0:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	910                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1bc:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1032                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1c8:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1175                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1d4:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1224                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1e0:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1393                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ec:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1495                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1f9:0xb DW_TAG_typedef
	.long	516                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x204:0xb DW_TAG_typedef
	.long	527                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x20f:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x216:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x217:0x5 DW_TAG_pointer_type
	.long	540                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x21c:0xb DW_TAG_typedef
	.long	551                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x227:0x75 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x22f:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	668                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	668                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x247:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x253:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x25f:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26b:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x277:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x283:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x28f:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	784                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x29c:0xb DW_TAG_typedef
	.long	679                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2a7:0xb DW_TAG_typedef
	.long	690                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2b2:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2b9:0x5 DW_TAG_pointer_type
	.long	702                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2be:0xb DW_TAG_typedef
	.long	713                             # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2c9:0x2d DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2d1:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2dd:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2e9:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2f6:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x2fd:0xc DW_TAG_array_type
	.long	505                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x302:0x6 DW_TAG_subrange_type
	.long	777                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x309:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x310:0x5 DW_TAG_pointer_type
	.long	336                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x315:0x5 DW_TAG_pointer_type
	.long	794                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x31a:0xb DW_TAG_typedef
	.long	805                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x325:0x69 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x32d:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x339:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x345:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x351:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x35d:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x369:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x375:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x381:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	784                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x38e:0x5 DW_TAG_pointer_type
	.long	915                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x393:0xb DW_TAG_typedef
	.long	926                             # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x39e:0x15 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3a6:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	947                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3b3:0x5 DW_TAG_pointer_type
	.long	952                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3b8:0xb DW_TAG_typedef
	.long	963                             # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3c3:0x45 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3cb:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3d7:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3e3:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ef:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3fb:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x408:0x5 DW_TAG_pointer_type
	.long	1037                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x40d:0xb DW_TAG_typedef
	.long	1048                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x418:0x69 DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x420:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x42c:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x438:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x444:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x450:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x45c:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x468:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x474:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1160                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x481:0x7 DW_TAG_base_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x488:0x5 DW_TAG_pointer_type
	.long	1165                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x48d:0x5 DW_TAG_pointer_type
	.long	1170                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x492:0x5 DW_TAG_pointer_type
	.long	505                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x497:0x5 DW_TAG_pointer_type
	.long	1180                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x49c:0xb DW_TAG_typedef
	.long	1191                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4a7:0x21 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4af:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4bb:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	758                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4c8:0x5 DW_TAG_pointer_type
	.long	1229                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4cd:0xb DW_TAG_typedef
	.long	1240                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4d8:0x99 DW_TAG_structure_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4e0:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ec:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f8:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x504:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x510:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51c:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x528:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x534:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x540:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54c:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x558:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x564:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x571:0x5 DW_TAG_pointer_type
	.long	1398                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x576:0xb DW_TAG_typedef
	.long	1409                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x581:0x39 DW_TAG_structure_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x589:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1466                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x595:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1466                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5a1:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1466                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ad:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1466                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5ba:0xb DW_TAG_typedef
	.long	1477                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5c5:0xb DW_TAG_typedef
	.long	1488                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5d0:0x7 DW_TAG_base_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x5d7:0x5 DW_TAG_pointer_type
	.long	1500                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5dc:0xb DW_TAG_typedef
	.long	1511                            # DW_AT_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5e7:0x51 DW_TAG_structure_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5ef:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5fb:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x607:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x613:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	1592                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x61f:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1592                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x62b:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1592                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x638:0xb DW_TAG_typedef
	.long	1603                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x643:0xb DW_TAG_typedef
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
	.asciz	"src/parsing/parsing_floor.c"   # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=66
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=105
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=118
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=130
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=142
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=154
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=171
.Linfo_string9:
	.asciz	"err_id"                        # string offset=184
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=191
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=200
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=210
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=222
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=233
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=248
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=269
.Linfo_string17:
	.asciz	"north"                         # string offset=279
.Linfo_string18:
	.asciz	"east"                          # string offset=285
.Linfo_string19:
	.asciz	"west"                          # string offset=290
.Linfo_string20:
	.asciz	"south"                         # string offset=295
.Linfo_string21:
	.asciz	"e_floor"                       # string offset=301
.Linfo_string22:
	.asciz	"ceiling"                       # string offset=309
.Linfo_string23:
	.asciz	"e_element"                     # string offset=317
.Linfo_string24:
	.asciz	"is_valid_floor"                # string offset=327
.Linfo_string25:
	.asciz	"_Bool"                         # string offset=342
.Linfo_string26:
	.asciz	"extract_floor_data"            # string offset=348
.Linfo_string27:
	.asciz	"element"                       # string offset=367
.Linfo_string28:
	.asciz	"char"                          # string offset=375
.Linfo_string29:
	.asciz	"cub3d"                         # string offset=380
.Linfo_string30:
	.asciz	"program_state"                 # string offset=386
.Linfo_string31:
	.asciz	"unsigned char"                 # string offset=400
.Linfo_string32:
	.asciz	"__uint8_t"                     # string offset=414
.Linfo_string33:
	.asciz	"uint8_t"                       # string offset=424
.Linfo_string34:
	.asciz	"win_ptr"                       # string offset=432
.Linfo_string35:
	.asciz	"mlx_ptr"                       # string offset=440
.Linfo_string36:
	.asciz	"map"                           # string offset=448
.Linfo_string37:
	.asciz	"width"                         # string offset=452
.Linfo_string38:
	.asciz	"long unsigned int"             # string offset=458
.Linfo_string39:
	.asciz	"__uint64_t"                    # string offset=476
.Linfo_string40:
	.asciz	"uint64_t"                      # string offset=487
.Linfo_string41:
	.asciz	"height"                        # string offset=496
.Linfo_string42:
	.asciz	"no_texture"                    # string offset=503
.Linfo_string43:
	.asciz	"int"                           # string offset=514
.Linfo_string44:
	.asciz	"ptr"                           # string offset=518
.Linfo_string45:
	.asciz	"s_xpm"                         # string offset=522
.Linfo_string46:
	.asciz	"t_xpm"                         # string offset=528
.Linfo_string47:
	.asciz	"so_texture"                    # string offset=534
.Linfo_string48:
	.asciz	"we_texture"                    # string offset=545
.Linfo_string49:
	.asciz	"ea_texture"                    # string offset=556
.Linfo_string50:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=567
.Linfo_string51:
	.asciz	"floor"                         # string offset=587
.Linfo_string52:
	.asciz	"data"                          # string offset=593
.Linfo_string53:
	.asciz	"s_map"                         # string offset=598
.Linfo_string54:
	.asciz	"t_map"                         # string offset=604
.Linfo_string55:
	.asciz	"file"                          # string offset=610
.Linfo_string56:
	.asciz	"fd"                            # string offset=615
.Linfo_string57:
	.asciz	"mask"                          # string offset=618
.Linfo_string58:
	.asciz	"offset"                        # string offset=623
.Linfo_string59:
	.asciz	"no_filename"                   # string offset=630
.Linfo_string60:
	.asciz	"so_filename"                   # string offset=642
.Linfo_string61:
	.asciz	"we_filename"                   # string offset=654
.Linfo_string62:
	.asciz	"ea_filename"                   # string offset=666
.Linfo_string63:
	.asciz	"s_file"                        # string offset=678
.Linfo_string64:
	.asciz	"t_file"                        # string offset=685
.Linfo_string65:
	.asciz	"scene"                         # string offset=692
.Linfo_string66:
	.asciz	"img"                           # string offset=698
.Linfo_string67:
	.asciz	"addr"                          # string offset=702
.Linfo_string68:
	.asciz	"endian"                        # string offset=707
.Linfo_string69:
	.asciz	"size_line"                     # string offset=714
.Linfo_string70:
	.asciz	"bpp"                           # string offset=724
.Linfo_string71:
	.asciz	"s_img"                         # string offset=728
.Linfo_string72:
	.asciz	"t_img"                         # string offset=734
.Linfo_string73:
	.asciz	"s_scene"                       # string offset=740
.Linfo_string74:
	.asciz	"t_scene"                       # string offset=748
.Linfo_string75:
	.asciz	"player"                        # string offset=756
.Linfo_string76:
	.asciz	"x0"                            # string offset=763
.Linfo_string77:
	.asciz	"y0"                            # string offset=766
.Linfo_string78:
	.asciz	"x1"                            # string offset=769
.Linfo_string79:
	.asciz	"y1"                            # string offset=772
.Linfo_string80:
	.asciz	"angle"                         # string offset=775
.Linfo_string81:
	.asciz	"double"                        # string offset=781
.Linfo_string82:
	.asciz	"pos_x"                         # string offset=788
.Linfo_string83:
	.asciz	"pos_y"                         # string offset=794
.Linfo_string84:
	.asciz	"vertex"                        # string offset=800
.Linfo_string85:
	.asciz	"s_player"                      # string offset=807
.Linfo_string86:
	.asciz	"t_player"                      # string offset=816
.Linfo_string87:
	.asciz	"window"                        # string offset=825
.Linfo_string88:
	.asciz	"s_window"                      # string offset=832
.Linfo_string89:
	.asciz	"t_window"                      # string offset=841
.Linfo_string90:
	.asciz	"raycast"                       # string offset=850
.Linfo_string91:
	.asciz	"posX"                          # string offset=858
.Linfo_string92:
	.asciz	"posY"                          # string offset=863
.Linfo_string93:
	.asciz	"dirX"                          # string offset=868
.Linfo_string94:
	.asciz	"dirY"                          # string offset=873
.Linfo_string95:
	.asciz	"planeX"                        # string offset=878
.Linfo_string96:
	.asciz	"planeY"                        # string offset=885
.Linfo_string97:
	.asciz	"sideX"                         # string offset=892
.Linfo_string98:
	.asciz	"sideY"                         # string offset=898
.Linfo_string99:
	.asciz	"deltaDistX"                    # string offset=904
.Linfo_string100:
	.asciz	"deltaDistY"                    # string offset=915
.Linfo_string101:
	.asciz	"time"                          # string offset=926
.Linfo_string102:
	.asciz	"oldtime"                       # string offset=931
.Linfo_string103:
	.asciz	"s_raycast"                     # string offset=939
.Linfo_string104:
	.asciz	"t_raycast"                     # string offset=949
.Linfo_string105:
	.asciz	"minimap"                       # string offset=959
.Linfo_string106:
	.asciz	"unsigned short"                # string offset=967
.Linfo_string107:
	.asciz	"__uint16_t"                    # string offset=982
.Linfo_string108:
	.asciz	"uint16_t"                      # string offset=993
.Linfo_string109:
	.asciz	"x_pos"                         # string offset=1002
.Linfo_string110:
	.asciz	"y_pos"                         # string offset=1008
.Linfo_string111:
	.asciz	"s_minimap"                     # string offset=1014
.Linfo_string112:
	.asciz	"t_minimap"                     # string offset=1024
.Linfo_string113:
	.asciz	"main_menu"                     # string offset=1034
.Linfo_string114:
	.asciz	"xpm"                           # string offset=1044
.Linfo_string115:
	.asciz	"color"                         # string offset=1048
.Linfo_string116:
	.asciz	"__uint32_t"                    # string offset=1054
.Linfo_string117:
	.asciz	"uint32_t"                      # string offset=1065
.Linfo_string118:
	.asciz	"s_main_menu"                   # string offset=1074
.Linfo_string119:
	.asciz	"t_main_menu"                   # string offset=1086
.Linfo_string120:
	.asciz	"s_cub3d"                       # string offset=1098
.Linfo_string121:
	.asciz	"t_cub3d"                       # string offset=1106
.Linfo_string122:
	.asciz	"line"                          # string offset=1114
.Linfo_string123:
	.asciz	"i"                             # string offset=1119
.Linfo_string124:
	.asciz	"j"                             # string offset=1121
.Linfo_string125:
	.asciz	"len"                           # string offset=1123
.Linfo_string126:
	.asciz	"tmp"                           # string offset=1127
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strlen
	.addrsig_sym get_rgb_value
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym ft_atoi
	.addrsig_sym free
	.addrsig_sym set_mask_element
	.section	.debug_line,"",@progbits
.Lline_table_start0:
