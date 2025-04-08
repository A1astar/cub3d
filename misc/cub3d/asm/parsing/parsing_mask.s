	.text
	.file	"parsing_mask.c"
	.globl	is_element_already_set          # -- Begin function is_element_already_set
	.p2align	4, 0x90
	.type	is_element_already_set,@function
is_element_already_set:                 # @is_element_already_set
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_mask.c"
	.loc	1 16 0                          # src/parsing/parsing_mask.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -2(%rbp)
	movb	%al, -3(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/parsing/parsing_mask.c:17:6
	movzbl	-3(%rbp), %eax
	.loc	1 17 18 is_stmt 0               # src/parsing/parsing_mask.c:17:18
	movzbl	-2(%rbp), %ecx
	.loc	1 17 15                         # src/parsing/parsing_mask.c:17:15
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	.loc	1 17 11                         # src/parsing/parsing_mask.c:17:11
	andl	%ecx, %eax
	cmpl	$0, %eax
.Ltmp1:
	.loc	1 17 6                          # src/parsing/parsing_mask.c:17:6
	je	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	1 18 3 is_stmt 1                # src/parsing/parsing_mask.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.Ltmp3:
.LBB0_2:
	.loc	1 19 2                          # src/parsing/parsing_mask.c:19:2
	movb	$0, -1(%rbp)
.LBB0_3:
	.loc	1 20 1                          # src/parsing/parsing_mask.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_element_already_set, .Lfunc_end0-is_element_already_set
	.cfi_endproc
                                        # -- End function
	.globl	set_mask_element                # -- Begin function set_mask_element
	.p2align	4, 0x90
	.type	set_mask_element,@function
set_mask_element:                       # @set_mask_element
.Lfunc_begin1:
	.loc	1 23 0                          # src/parsing/parsing_mask.c:23:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp5:
	.loc	1 24 16 prologue_end            # src/parsing/parsing_mask.c:24:16
	movzbl	-1(%rbp), %ecx
	.loc	1 24 13 is_stmt 0               # src/parsing/parsing_mask.c:24:13
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	.loc	1 24 3                          # src/parsing/parsing_mask.c:24:3
	movq	-16(%rbp), %rax
	.loc	1 24 8                          # src/parsing/parsing_mask.c:24:8
	movzbl	(%rax), %ecx
	orl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	.loc	1 25 1 is_stmt 1                # src/parsing/parsing_mask.c:25:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end1:
	.size	set_mask_element, .Lfunc_end1-set_mask_element
	.cfi_endproc
                                        # -- End function
	.globl	print_mask                      # -- Begin function print_mask
	.p2align	4, 0x90
	.type	print_mask,@function
print_mask:                             # @print_mask
.Lfunc_begin2:
	.loc	1 28 0                          # src/parsing/parsing_mask.c:28:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
.Ltmp7:
	.loc	1 32 4 prologue_end             # src/parsing/parsing_mask.c:32:4
	movl	$8, -8(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 33 11                         # src/parsing/parsing_mask.c:33:11
	cmpl	$0, -8(%rbp)
	.loc	1 33 2 is_stmt 0                # src/parsing/parsing_mask.c:33:2
	jle	.LBB2_6
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp8:
	.loc	1 35 7 is_stmt 1                # src/parsing/parsing_mask.c:35:7
	movzbl	-1(%rbp), %eax
	.loc	1 35 12 is_stmt 0               # src/parsing/parsing_mask.c:35:12
	andl	$1, %eax
	cmpl	$0, %eax
.Ltmp9:
	.loc	1 35 7                          # src/parsing/parsing_mask.c:35:7
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp10:
	.loc	1 36 11 is_stmt 1               # src/parsing/parsing_mask.c:36:11
	movl	-8(%rbp), %eax
	.loc	1 36 13 is_stmt 0               # src/parsing/parsing_mask.c:36:13
	subl	$1, %eax
	.loc	1 36 4                          # src/parsing/parsing_mask.c:36:4
	cltq
	.loc	1 36 18                         # src/parsing/parsing_mask.c:36:18
	movb	$49, -17(%rbp,%rax)
	.loc	1 36 4                          # src/parsing/parsing_mask.c:36:4
	jmp	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 38 11 is_stmt 1               # src/parsing/parsing_mask.c:38:11
	movl	-8(%rbp), %eax
	.loc	1 38 13 is_stmt 0               # src/parsing/parsing_mask.c:38:13
	subl	$1, %eax
	.loc	1 38 4                          # src/parsing/parsing_mask.c:38:4
	cltq
	.loc	1 38 18                         # src/parsing/parsing_mask.c:38:18
	movb	$48, -17(%rbp,%rax)
.Ltmp11:
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 39 8 is_stmt 1                # src/parsing/parsing_mask.c:39:8
	movzbl	-1(%rbp), %eax
	sarl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
	.loc	1 40 4                          # src/parsing/parsing_mask.c:40:4
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
.Ltmp12:
	.loc	1 33 2                          # src/parsing/parsing_mask.c:33:2
	jmp	.LBB2_1
.LBB2_6:
	.loc	1 42 20                         # src/parsing/parsing_mask.c:42:20
	movb	$0, -9(%rbp)
	.loc	1 43 23                         # src/parsing/parsing_mask.c:43:23
	leaq	-17(%rbp), %rsi
	.loc	1 43 2 is_stmt 0                # src/parsing/parsing_mask.c:43:2
	movl	$1, %edi
	movl	$8, %edx
	callq	write
	.loc	1 44 2 is_stmt 1                # src/parsing/parsing_mask.c:44:2
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 45 1                          # src/parsing/parsing_mask.c:45:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	print_mask, .Lfunc_end2-print_mask
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
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
	.byte	5                               # Abbreviation Code
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x112 DW_TAG_compile_unit
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
	.long	210                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	126
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	125
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x60:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x75:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	127
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x83:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x92:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xa7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	127
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd2:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xd9:0xb DW_TAG_typedef
	.long	228                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xe4:0xb DW_TAG_typedef
	.long	239                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xef:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xf6:0x5 DW_TAG_pointer_type
	.long	217                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xfb:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x102:0xc DW_TAG_array_type
	.long	270                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x107:0x6 DW_TAG_subrange_type
	.long	277                             # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x10e:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x115:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_mask.c"    # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=65
.Linfo_string3:
	.asciz	"is_element_already_set"        # string offset=104
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=127
.Linfo_string5:
	.asciz	"set_mask_element"              # string offset=133
.Linfo_string6:
	.asciz	"print_mask"                    # string offset=150
.Linfo_string7:
	.asciz	"element"                       # string offset=161
.Linfo_string8:
	.asciz	"unsigned char"                 # string offset=169
.Linfo_string9:
	.asciz	"__uint8_t"                     # string offset=183
.Linfo_string10:
	.asciz	"uint8_t"                       # string offset=193
.Linfo_string11:
	.asciz	"mask"                          # string offset=201
.Linfo_string12:
	.asciz	"i"                             # string offset=206
.Linfo_string13:
	.asciz	"int"                           # string offset=208
.Linfo_string14:
	.asciz	"bitset"                        # string offset=212
.Linfo_string15:
	.asciz	"char"                          # string offset=219
.Linfo_string16:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=224
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.section	.debug_line,"",@progbits
.Lline_table_start0:
