	.text
	.file	"memory_utils.c"
	.globl	free_2d_char                    # -- Begin function free_2d_char
	.p2align	4, 0x90
	.type	free_2d_char,@function
free_2d_char:                           # @free_2d_char
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/memory/memory_utils.c"
	.loc	1 16 0                          # src/memory/memory_utils.c:16:0
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
	.loc	1 19 4 prologue_end             # src/memory/memory_utils.c:19:4
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/memory/memory_utils.c:20:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 20 2 is_stmt 0                # src/memory/memory_utils.c:20:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 22 8 is_stmt 1                # src/memory/memory_utils.c:22:8
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 22 3 is_stmt 0                # src/memory/memory_utils.c:22:3
	callq	free
	.loc	1 23 3 is_stmt 1                # src/memory/memory_utils.c:23:3
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 23 11 is_stmt 0               # src/memory/memory_utils.c:23:11
	movq	$0, (%rax,%rcx,8)
	.loc	1 24 4 is_stmt 1                # src/memory/memory_utils.c:24:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp2:
	.loc	1 20 2                          # src/memory/memory_utils.c:20:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 26 7                          # src/memory/memory_utils.c:26:7
	movq	-8(%rbp), %rdi
	.loc	1 26 2 is_stmt 0                # src/memory/memory_utils.c:26:2
	callq	free
	.loc	1 27 7 is_stmt 1                # src/memory/memory_utils.c:27:7
	movq	$0, -8(%rbp)
	.loc	1 28 1                          # src/memory/memory_utils.c:28:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	free_2d_char, .Lfunc_end0-free_2d_char
	.cfi_endproc
                                        # -- End function
	.globl	free_img                        # -- Begin function free_img
	.p2align	4, 0x90
	.type	free_img,@function
free_img:                               # @free_img
.Lfunc_begin1:
	.loc	1 31 0                          # src/memory/memory_utils.c:31:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp4:
	.loc	1 32 6 prologue_end             # src/memory/memory_utils.c:32:6
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
.Ltmp5:
	.loc	1 32 6 is_stmt 0                # src/memory/memory_utils.c:32:6
	je	.LBB1_2
# %bb.1:
.Ltmp6:
	.loc	1 33 8 is_stmt 1                # src/memory/memory_utils.c:33:8
	movq	-8(%rbp), %rax
	.loc	1 33 13 is_stmt 0               # src/memory/memory_utils.c:33:13
	movq	(%rax), %rdi
	.loc	1 33 3                          # src/memory/memory_utils.c:33:3
	callq	free
.Ltmp7:
.LBB1_2:
	.loc	1 36 2 is_stmt 1                # src/memory/memory_utils.c:36:2
	movq	-8(%rbp), %rax
	.loc	1 36 11 is_stmt 0               # src/memory/memory_utils.c:36:11
	movq	$0, (%rax)
	.loc	1 37 2 is_stmt 1                # src/memory/memory_utils.c:37:2
	movq	-8(%rbp), %rax
	.loc	1 37 12 is_stmt 0               # src/memory/memory_utils.c:37:12
	movq	$0, 8(%rax)
	.loc	1 38 7 is_stmt 1                # src/memory/memory_utils.c:38:7
	movq	-8(%rbp), %rdi
	.loc	1 38 2 is_stmt 0                # src/memory/memory_utils.c:38:2
	callq	free
	.loc	1 39 1 is_stmt 1                # src/memory/memory_utils.c:39:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.Lfunc_end1:
	.size	free_img, .Lfunc_end1-free_img
	.cfi_endproc
                                        # -- End function
	.globl	free_xpm_file                   # -- Begin function free_xpm_file
	.p2align	4, 0x90
	.type	free_xpm_file,@function
free_xpm_file:                          # @free_xpm_file
.Lfunc_begin2:
	.loc	1 42 0                          # src/memory/memory_utils.c:42:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp9:
	.loc	1 43 6 prologue_end             # src/memory/memory_utils.c:43:6
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
.Ltmp10:
	.loc	1 43 6 is_stmt 0                # src/memory/memory_utils.c:43:6
	je	.LBB2_2
# %bb.1:
.Ltmp11:
	.loc	1 44 8 is_stmt 1                # src/memory/memory_utils.c:44:8
	movq	-8(%rbp), %rax
	.loc	1 44 13 is_stmt 0               # src/memory/memory_utils.c:44:13
	movq	8(%rax), %rdi
	.loc	1 44 3                          # src/memory/memory_utils.c:44:3
	callq	free
.Ltmp12:
.LBB2_2:
	.loc	1 45 2 is_stmt 1                # src/memory/memory_utils.c:45:2
	movq	-8(%rbp), %rax
	.loc	1 45 11 is_stmt 0               # src/memory/memory_utils.c:45:11
	movq	$0, 8(%rax)
	.loc	1 46 7 is_stmt 1                # src/memory/memory_utils.c:46:7
	movq	-8(%rbp), %rdi
	.loc	1 46 2 is_stmt 0                # src/memory/memory_utils.c:46:2
	callq	free
	.loc	1 47 6 is_stmt 1                # src/memory/memory_utils.c:47:6
	movq	$0, -8(%rbp)
	.loc	1 48 1                          # src/memory/memory_utils.c:48:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	free_xpm_file, .Lfunc_end2-free_xpm_file
	.cfi_endproc
                                        # -- End function
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/memory/../../include/cub3d.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x145 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	165                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	182                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x5d:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x72:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x81:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x96:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xa5:0x5 DW_TAG_pointer_type
	.long	170                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xaa:0x5 DW_TAG_pointer_type
	.long	175                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xaf:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xb6:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xbd:0x5 DW_TAG_pointer_type
	.long	194                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc2:0xb DW_TAG_typedef
	.long	205                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xcd:0x45 DW_TAG_structure_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xd5:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe1:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xed:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	182                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf9:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	182                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x105:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	182                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x112:0x5 DW_TAG_pointer_type
	.long	279                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x117:0xb DW_TAG_typedef
	.long	290                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x122:0x2d DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x12a:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	182                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x136:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	182                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x142:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/memory/memory_utils.c"     # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=64
.Linfo_string3:
	.asciz	"free_2d_char"                  # string offset=103
.Linfo_string4:
	.asciz	"free_img"                      # string offset=116
.Linfo_string5:
	.asciz	"free_xpm_file"                 # string offset=125
.Linfo_string6:
	.asciz	"data"                          # string offset=139
.Linfo_string7:
	.asciz	"char"                          # string offset=144
.Linfo_string8:
	.asciz	"i"                             # string offset=149
.Linfo_string9:
	.asciz	"int"                           # string offset=151
.Linfo_string10:
	.asciz	"img"                           # string offset=155
.Linfo_string11:
	.asciz	"ptr"                           # string offset=159
.Linfo_string12:
	.asciz	"addr"                          # string offset=163
.Linfo_string13:
	.asciz	"endian"                        # string offset=168
.Linfo_string14:
	.asciz	"size_line"                     # string offset=175
.Linfo_string15:
	.asciz	"bpp"                           # string offset=185
.Linfo_string16:
	.asciz	"s_img"                         # string offset=189
.Linfo_string17:
	.asciz	"t_img"                         # string offset=195
.Linfo_string18:
	.asciz	"xpm"                           # string offset=201
.Linfo_string19:
	.asciz	"width"                         # string offset=205
.Linfo_string20:
	.asciz	"height"                        # string offset=211
.Linfo_string21:
	.asciz	"s_xpm"                         # string offset=218
.Linfo_string22:
	.asciz	"t_xpm"                         # string offset=224
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.section	.debug_line,"",@progbits
.Lline_table_start0:
