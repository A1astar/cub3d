	.text
	.file	"parsing_element.c"
	.globl	get_element_length              # -- Begin function get_element_length
	.p2align	4, 0x90
	.type	get_element_length,@function
get_element_length:                     # @get_element_length
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_element.c"
	.loc	1 16 0                          # src/parsing/parsing_element.c:16:0
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
	.loc	1 19 4 prologue_end             # src/parsing/parsing_element.c:19:4
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/parsing/parsing_element.c:20:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	.loc	1 20 17 is_stmt 0               # src/parsing/parsing_element.c:20:17
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 20 30                         # src/parsing/parsing_element.c:20:30
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 20 21                         # src/parsing/parsing_element.c:20:21
	movsbl	(%rax,%rcx), %edi
	callq	is_space
	.loc	1 20 20                         # src/parsing/parsing_element.c:20:20
	xorb	$-1, %al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 20                          # src/parsing/parsing_element.c:0:20
	movb	-13(%rbp), %al                  # 1-byte Reload
	.loc	1 20 2                          # src/parsing/parsing_element.c:20:2
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 21 4 is_stmt 1                # src/parsing/parsing_element.c:21:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 20 2                          # src/parsing/parsing_element.c:20:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 22 10                         # src/parsing/parsing_element.c:22:10
	movl	-12(%rbp), %eax
	.loc	1 22 2 is_stmt 0                # src/parsing/parsing_element.c:22:2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	get_element_length, .Lfunc_end0-get_element_length
	.cfi_endproc
                                        # -- End function
	.globl	get_identifier                  # -- Begin function get_identifier
	.p2align	4, 0x90
	.type	get_identifier,@function
get_identifier:                         # @get_identifier
.Lfunc_begin1:
	.loc	1 26 0 is_stmt 1                # src/parsing/parsing_element.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp2:
	.loc	1 31 4 prologue_end             # src/parsing/parsing_element.c:31:4
	movl	$0, -20(%rbp)
	.loc	1 32 27                         # src/parsing/parsing_element.c:32:27
	movq	-16(%rbp), %rdi
	.loc	1 32 8 is_stmt 0                # src/parsing/parsing_element.c:32:8
	callq	get_element_length
	.loc	1 32 6                          # src/parsing/parsing_element.c:32:6
	movl	%eax, -24(%rbp)
.Ltmp3:
	.loc	1 33 10 is_stmt 1               # src/parsing/parsing_element.c:33:10
	cmpl	$0, -24(%rbp)
.Ltmp4:
	.loc	1 33 6 is_stmt 0                # src/parsing/parsing_element.c:33:6
	jne	.LBB1_2
# %bb.1:
.Ltmp5:
	.loc	1 34 3 is_stmt 1                # src/parsing/parsing_element.c:34:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.Ltmp6:
.LBB1_2:
	.loc	1 35 19                         # src/parsing/parsing_element.c:35:19
	movl	-24(%rbp), %eax
	.loc	1 35 23 is_stmt 0               # src/parsing/parsing_element.c:35:23
	addl	$1, %eax
	.loc	1 35 19                         # src/parsing/parsing_element.c:35:19
	movslq	%eax, %rdi
	.loc	1 35 12                         # src/parsing/parsing_element.c:35:12
	callq	malloc
	.loc	1 35 10                         # src/parsing/parsing_element.c:35:10
	movq	%rax, -32(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 36 9 is_stmt 1                # src/parsing/parsing_element.c:36:9
	movl	-20(%rbp), %eax
	.loc	1 36 11 is_stmt 0               # src/parsing/parsing_element.c:36:11
	cmpl	-24(%rbp), %eax
	.loc	1 36 2                          # src/parsing/parsing_element.c:36:2
	jge	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
.Ltmp7:
	.loc	1 38 16 is_stmt 1               # src/parsing/parsing_element.c:38:16
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 38 3 is_stmt 0                # src/parsing/parsing_element.c:38:3
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 38 14                         # src/parsing/parsing_element.c:38:14
	movb	%dl, (%rax,%rcx)
	.loc	1 39 4 is_stmt 1                # src/parsing/parsing_element.c:39:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp8:
	.loc	1 36 2                          # src/parsing/parsing_element.c:36:2
	jmp	.LBB1_3
.LBB1_5:
	.loc	1 41 2                          # src/parsing/parsing_element.c:41:2
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 41 13 is_stmt 0               # src/parsing/parsing_element.c:41:13
	movb	$0, (%rax,%rcx)
	.loc	1 42 10 is_stmt 1               # src/parsing/parsing_element.c:42:10
	movq	-32(%rbp), %rax
	.loc	1 42 2 is_stmt 0                # src/parsing/parsing_element.c:42:2
	movq	%rax, -8(%rbp)
.LBB1_6:
	.loc	1 43 1 is_stmt 1                # src/parsing/parsing_element.c:43:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	get_identifier, .Lfunc_end1-get_identifier
	.cfi_endproc
                                        # -- End function
	.globl	get_rgb_value                   # -- Begin function get_rgb_value
	.p2align	4, 0x90
	.type	get_rgb_value,@function
get_rgb_value:                          # @get_rgb_value
.Lfunc_begin2:
	.loc	1 46 0                          # src/parsing/parsing_element.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp10:
	.loc	1 51 9 prologue_end             # src/parsing/parsing_element.c:51:9
	movl	$0, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 52 9                          # src/parsing/parsing_element.c:52:9
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	1 52 22 is_stmt 0               # src/parsing/parsing_element.c:52:22
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 52 25                         # src/parsing/parsing_element.c:52:25
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 52 38                         # src/parsing/parsing_element.c:52:38
	cmpl	$44, %eax
	setne	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 38                          # src/parsing/parsing_element.c:0:38
	movb	-33(%rbp), %al                  # 1-byte Reload
	.loc	1 52 2                          # src/parsing/parsing_element.c:52:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 53 9 is_stmt 1                # src/parsing/parsing_element.c:53:9
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 52 2                          # src/parsing/parsing_element.c:52:2
	jmp	.LBB2_1
.LBB2_5:
.Ltmp11:
	.loc	1 54 13                         # src/parsing/parsing_element.c:54:13
	cmpl	$0, -24(%rbp)
.Ltmp12:
	.loc	1 54 6 is_stmt 0                # src/parsing/parsing_element.c:54:6
	jne	.LBB2_7
# %bb.6:
.Ltmp13:
	.loc	1 55 3 is_stmt 1                # src/parsing/parsing_element.c:55:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_13
.Ltmp14:
.LBB2_7:
	.loc	1 56 15                         # src/parsing/parsing_element.c:56:15
	movl	-24(%rbp), %eax
	.loc	1 56 22 is_stmt 0               # src/parsing/parsing_element.c:56:22
	addl	$1, %eax
	.loc	1 56 15                         # src/parsing/parsing_element.c:56:15
	movslq	%eax, %rdi
	.loc	1 56 8                          # src/parsing/parsing_element.c:56:8
	callq	malloc
	.loc	1 56 6                          # src/parsing/parsing_element.c:56:6
	movq	%rax, -32(%rbp)
.Ltmp15:
	.loc	1 57 7 is_stmt 1                # src/parsing/parsing_element.c:57:7
	cmpq	$0, -32(%rbp)
.Ltmp16:
	.loc	1 57 6 is_stmt 0                # src/parsing/parsing_element.c:57:6
	jne	.LBB2_9
# %bb.8:
.Ltmp17:
	.loc	1 58 3 is_stmt 1                # src/parsing/parsing_element.c:58:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_13
.Ltmp18:
.LBB2_9:
	.loc	1 59 4                          # src/parsing/parsing_element.c:59:4
	movl	$0, -20(%rbp)
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 60 9                          # src/parsing/parsing_element.c:60:9
	movl	-20(%rbp), %eax
	.loc	1 60 11 is_stmt 0               # src/parsing/parsing_element.c:60:11
	cmpl	-24(%rbp), %eax
	.loc	1 60 2                          # src/parsing/parsing_element.c:60:2
	jge	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
.Ltmp19:
	.loc	1 62 12 is_stmt 1               # src/parsing/parsing_element.c:62:12
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 62 3 is_stmt 0                # src/parsing/parsing_element.c:62:3
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 62 10                         # src/parsing/parsing_element.c:62:10
	movb	%dl, (%rax,%rcx)
	.loc	1 63 4 is_stmt 1                # src/parsing/parsing_element.c:63:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp20:
	.loc	1 60 2                          # src/parsing/parsing_element.c:60:2
	jmp	.LBB2_10
.LBB2_12:
	.loc	1 65 2                          # src/parsing/parsing_element.c:65:2
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 65 9 is_stmt 0                # src/parsing/parsing_element.c:65:9
	movb	$0, (%rax,%rcx)
	.loc	1 66 10 is_stmt 1               # src/parsing/parsing_element.c:66:10
	movq	-32(%rbp), %rax
	.loc	1 66 2 is_stmt 0                # src/parsing/parsing_element.c:66:2
	movq	%rax, -8(%rbp)
.LBB2_13:
	.loc	1 67 1 is_stmt 1                # src/parsing/parsing_element.c:67:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	get_rgb_value, .Lfunc_end2-get_rgb_value
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
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x10d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	260                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x51:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x79:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xb2:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xcb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xf5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x104:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x10b:0x5 DW_TAG_pointer_type
	.long	272                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x110:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_element.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=68
.Linfo_string3:
	.asciz	"get_element_length"            # string offset=107
.Linfo_string4:
	.asciz	"int"                           # string offset=126
.Linfo_string5:
	.asciz	"get_identifier"                # string offset=130
.Linfo_string6:
	.asciz	"char"                          # string offset=145
.Linfo_string7:
	.asciz	"get_rgb_value"                 # string offset=150
.Linfo_string8:
	.asciz	"line"                          # string offset=164
.Linfo_string9:
	.asciz	"i"                             # string offset=169
.Linfo_string10:
	.asciz	"len"                           # string offset=171
.Linfo_string11:
	.asciz	"element"                       # string offset=175
.Linfo_string12:
	.asciz	"length"                        # string offset=183
.Linfo_string13:
	.asciz	"tmp"                           # string offset=190
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_element_length
	.addrsig_sym is_space
	.addrsig_sym malloc
	.section	.debug_line,"",@progbits
.Lline_table_start0:
