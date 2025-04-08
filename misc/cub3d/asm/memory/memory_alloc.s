	.text
	.file	"memory_alloc.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/memory/../../include/cub3d.h"
	.globl	alloc_struct_attr               # -- Begin function alloc_struct_attr
	.p2align	4, 0x90
	.type	alloc_struct_attr,@function
alloc_struct_attr:                      # @alloc_struct_attr
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/memory/memory_alloc.c"
	.loc	2 16 0                          # src/memory/memory_alloc.c:16:0
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
	.loc	2 17 15 prologue_end            # src/memory/memory_alloc.c:17:15
	movl	$64, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 17 2 is_stmt 0                # src/memory/memory_alloc.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 13                         # src/memory/memory_alloc.c:17:13
	movq	%rcx, 24(%rax)
	.loc	2 18 16 is_stmt 1               # src/memory/memory_alloc.c:18:16
	movl	$56, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 18 2 is_stmt 0                # src/memory/memory_alloc.c:18:2
	movq	-8(%rbp), %rax
	.loc	2 18 14                         # src/memory/memory_alloc.c:18:14
	movq	%rcx, 32(%rax)
	.loc	2 19 17 is_stmt 1               # src/memory/memory_alloc.c:19:17
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 19 2 is_stmt 0                # src/memory/memory_alloc.c:19:2
	movq	-8(%rbp), %rax
	.loc	2 19 15                         # src/memory/memory_alloc.c:19:15
	movq	%rcx, 40(%rax)
	.loc	2 20 18 is_stmt 1               # src/memory/memory_alloc.c:20:18
	movl	$48, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 20 2 is_stmt 0                # src/memory/memory_alloc.c:20:2
	movq	-8(%rbp), %rax
	.loc	2 20 16                         # src/memory/memory_alloc.c:20:16
	movq	%rcx, 48(%rax)
	.loc	2 21 18 is_stmt 1               # src/memory/memory_alloc.c:21:18
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 21 2 is_stmt 0                # src/memory/memory_alloc.c:21:2
	movq	-8(%rbp), %rax
	.loc	2 21 16                         # src/memory/memory_alloc.c:21:16
	movq	%rcx, 56(%rax)
	.loc	2 22 19 is_stmt 1               # src/memory/memory_alloc.c:22:19
	movl	$96, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 22 2 is_stmt 0                # src/memory/memory_alloc.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 17                         # src/memory/memory_alloc.c:22:17
	movq	%rcx, 64(%rax)
	.loc	2 23 21 is_stmt 1               # src/memory/memory_alloc.c:23:21
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 23 2 is_stmt 0                # src/memory/memory_alloc.c:23:2
	movq	-8(%rbp), %rax
	.loc	2 23 19                         # src/memory/memory_alloc.c:23:19
	movq	%rcx, 80(%rax)
.Ltmp1:
	.loc	2 24 7 is_stmt 1                # src/memory/memory_alloc.c:24:7
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	.loc	2 24 18 is_stmt 0               # src/memory/memory_alloc.c:24:18
	je	.LBB0_6
# %bb.1:
	.loc	2 24 22                         # src/memory/memory_alloc.c:24:22
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	.loc	2 24 34                         # src/memory/memory_alloc.c:24:34
	je	.LBB0_6
# %bb.2:
	.loc	2 24 38                         # src/memory/memory_alloc.c:24:38
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	.loc	2 25 3 is_stmt 1                # src/memory/memory_alloc.c:25:3
	je	.LBB0_6
# %bb.3:
	.loc	2 25 7 is_stmt 0                # src/memory/memory_alloc.c:25:7
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	.loc	2 25 21                         # src/memory/memory_alloc.c:25:21
	je	.LBB0_6
# %bb.4:
	.loc	2 25 25                         # src/memory/memory_alloc.c:25:25
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	.loc	2 25 40                         # src/memory/memory_alloc.c:25:40
	je	.LBB0_6
# %bb.5:
	.loc	2 25 44                         # src/memory/memory_alloc.c:25:44
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
.Ltmp2:
	.loc	2 24 6 is_stmt 1                # src/memory/memory_alloc.c:24:6
	jne	.LBB0_7
.LBB0_6:
.Ltmp3:
	.loc	2 26 33                         # src/memory/memory_alloc.c:26:33
	movq	-8(%rbp), %rdi
	.loc	2 26 3 is_stmt 0                # src/memory/memory_alloc.c:26:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_7:
	.loc	2 27 1 is_stmt 1                # src/memory/memory_alloc.c:27:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	alloc_struct_attr, .Lfunc_end0-alloc_struct_attr
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/memory/../../include/cub3d_player.h"
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
	.byte	1                               # Abbrev [1] 0xb:0x59e DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	120
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaa:0x5 DW_TAG_pointer_type
	.long	175                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xaf:0xb DW_TAG_typedef
	.long	186                             # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xba:0x8d DW_TAG_structure_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc2:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xce:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xda:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe6:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	357                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf2:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	623                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xfe:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	744                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x10a:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	866                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x116:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1009                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x122:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1058                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12e:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1227                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x13a:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1329                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x147:0xb DW_TAG_typedef
	.long	338                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x152:0xb DW_TAG_typedef
	.long	349                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x15d:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x164:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x165:0x5 DW_TAG_pointer_type
	.long	362                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x16a:0xb DW_TAG_typedef
	.long	373                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x175:0x75 DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x17d:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x189:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x195:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1a1:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ad:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b9:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c5:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1d1:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1dd:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1ea:0xb DW_TAG_typedef
	.long	501                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1f5:0xb DW_TAG_typedef
	.long	512                             # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x200:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x207:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20c:0xb DW_TAG_typedef
	.long	535                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x217:0x2d DW_TAG_structure_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x21f:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x237:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x244:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x24b:0xc DW_TAG_array_type
	.long	327                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x250:0x6 DW_TAG_subrange_type
	.long	599                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x257:0x7 DW_TAG_base_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x263:0x5 DW_TAG_pointer_type
	.long	616                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x268:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x26f:0x5 DW_TAG_pointer_type
	.long	628                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x274:0xb DW_TAG_typedef
	.long	639                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x27f:0x69 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x287:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x293:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x29f:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2cf:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2db:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2e8:0x5 DW_TAG_pointer_type
	.long	749                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2ed:0xb DW_TAG_typedef
	.long	760                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2f8:0x15 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x300:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	781                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x30d:0x5 DW_TAG_pointer_type
	.long	786                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x312:0xb DW_TAG_typedef
	.long	797                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x31d:0x45 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x325:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x331:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x33d:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x349:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x355:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x362:0x5 DW_TAG_pointer_type
	.long	871                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x367:0xb DW_TAG_typedef
	.long	882                             # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x372:0x69 DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x37a:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x386:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x392:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x39e:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3aa:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b6:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c2:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ce:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	994                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x3db:0x7 DW_TAG_base_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x3e2:0x5 DW_TAG_pointer_type
	.long	999                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3e7:0x5 DW_TAG_pointer_type
	.long	1004                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3ec:0x5 DW_TAG_pointer_type
	.long	327                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3f1:0x5 DW_TAG_pointer_type
	.long	1014                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f6:0xb DW_TAG_typedef
	.long	1025                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x401:0x21 DW_TAG_structure_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x409:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x415:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x422:0x5 DW_TAG_pointer_type
	.long	1063                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x427:0xb DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x432:0x99 DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x43a:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x446:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x452:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x46a:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x476:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x482:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48e:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49a:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a6:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4b2:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4be:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4cb:0x5 DW_TAG_pointer_type
	.long	1232                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4d0:0xb DW_TAG_typedef
	.long	1243                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4db:0x39 DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4e3:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	1300                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4ef:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	1300                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4fb:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1300                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x507:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1300                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x514:0xb DW_TAG_typedef
	.long	1311                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x51f:0xb DW_TAG_typedef
	.long	1322                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x52a:0x7 DW_TAG_base_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x531:0x5 DW_TAG_pointer_type
	.long	1334                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x536:0xb DW_TAG_typedef
	.long	1345                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x541:0x51 DW_TAG_structure_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x549:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x555:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x561:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x56d:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1426                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x579:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1426                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x585:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1426                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x592:0xb DW_TAG_typedef
	.long	1437                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x59d:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/memory/memory_alloc.c"     # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=64
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=103
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=116
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=128
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=140
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=152
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=169
.Linfo_string9:
	.asciz	"err_id"                        # string offset=182
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=189
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=198
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=208
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=220
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=231
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=246
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=267
.Linfo_string17:
	.asciz	"alloc_struct_attr"             # string offset=277
.Linfo_string18:
	.asciz	"cub3d"                         # string offset=295
.Linfo_string19:
	.asciz	"program_state"                 # string offset=301
.Linfo_string20:
	.asciz	"unsigned char"                 # string offset=315
.Linfo_string21:
	.asciz	"__uint8_t"                     # string offset=329
.Linfo_string22:
	.asciz	"uint8_t"                       # string offset=339
.Linfo_string23:
	.asciz	"win_ptr"                       # string offset=347
.Linfo_string24:
	.asciz	"mlx_ptr"                       # string offset=355
.Linfo_string25:
	.asciz	"map"                           # string offset=363
.Linfo_string26:
	.asciz	"width"                         # string offset=367
.Linfo_string27:
	.asciz	"long unsigned int"             # string offset=373
.Linfo_string28:
	.asciz	"__uint64_t"                    # string offset=391
.Linfo_string29:
	.asciz	"uint64_t"                      # string offset=402
.Linfo_string30:
	.asciz	"height"                        # string offset=411
.Linfo_string31:
	.asciz	"no_texture"                    # string offset=418
.Linfo_string32:
	.asciz	"int"                           # string offset=429
.Linfo_string33:
	.asciz	"ptr"                           # string offset=433
.Linfo_string34:
	.asciz	"s_xpm"                         # string offset=437
.Linfo_string35:
	.asciz	"t_xpm"                         # string offset=443
.Linfo_string36:
	.asciz	"so_texture"                    # string offset=449
.Linfo_string37:
	.asciz	"we_texture"                    # string offset=460
.Linfo_string38:
	.asciz	"ea_texture"                    # string offset=471
.Linfo_string39:
	.asciz	"ceiling"                       # string offset=482
.Linfo_string40:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=490
.Linfo_string41:
	.asciz	"floor"                         # string offset=510
.Linfo_string42:
	.asciz	"data"                          # string offset=516
.Linfo_string43:
	.asciz	"char"                          # string offset=521
.Linfo_string44:
	.asciz	"s_map"                         # string offset=526
.Linfo_string45:
	.asciz	"t_map"                         # string offset=532
.Linfo_string46:
	.asciz	"file"                          # string offset=538
.Linfo_string47:
	.asciz	"fd"                            # string offset=543
.Linfo_string48:
	.asciz	"mask"                          # string offset=546
.Linfo_string49:
	.asciz	"offset"                        # string offset=551
.Linfo_string50:
	.asciz	"no_filename"                   # string offset=558
.Linfo_string51:
	.asciz	"so_filename"                   # string offset=570
.Linfo_string52:
	.asciz	"we_filename"                   # string offset=582
.Linfo_string53:
	.asciz	"ea_filename"                   # string offset=594
.Linfo_string54:
	.asciz	"s_file"                        # string offset=606
.Linfo_string55:
	.asciz	"t_file"                        # string offset=613
.Linfo_string56:
	.asciz	"scene"                         # string offset=620
.Linfo_string57:
	.asciz	"img"                           # string offset=626
.Linfo_string58:
	.asciz	"addr"                          # string offset=630
.Linfo_string59:
	.asciz	"endian"                        # string offset=635
.Linfo_string60:
	.asciz	"size_line"                     # string offset=642
.Linfo_string61:
	.asciz	"bpp"                           # string offset=652
.Linfo_string62:
	.asciz	"s_img"                         # string offset=656
.Linfo_string63:
	.asciz	"t_img"                         # string offset=662
.Linfo_string64:
	.asciz	"s_scene"                       # string offset=668
.Linfo_string65:
	.asciz	"t_scene"                       # string offset=676
.Linfo_string66:
	.asciz	"player"                        # string offset=684
.Linfo_string67:
	.asciz	"x0"                            # string offset=691
.Linfo_string68:
	.asciz	"y0"                            # string offset=694
.Linfo_string69:
	.asciz	"x1"                            # string offset=697
.Linfo_string70:
	.asciz	"y1"                            # string offset=700
.Linfo_string71:
	.asciz	"angle"                         # string offset=703
.Linfo_string72:
	.asciz	"double"                        # string offset=709
.Linfo_string73:
	.asciz	"pos_x"                         # string offset=716
.Linfo_string74:
	.asciz	"pos_y"                         # string offset=722
.Linfo_string75:
	.asciz	"vertex"                        # string offset=728
.Linfo_string76:
	.asciz	"s_player"                      # string offset=735
.Linfo_string77:
	.asciz	"t_player"                      # string offset=744
.Linfo_string78:
	.asciz	"window"                        # string offset=753
.Linfo_string79:
	.asciz	"s_window"                      # string offset=760
.Linfo_string80:
	.asciz	"t_window"                      # string offset=769
.Linfo_string81:
	.asciz	"raycast"                       # string offset=778
.Linfo_string82:
	.asciz	"posX"                          # string offset=786
.Linfo_string83:
	.asciz	"posY"                          # string offset=791
.Linfo_string84:
	.asciz	"dirX"                          # string offset=796
.Linfo_string85:
	.asciz	"dirY"                          # string offset=801
.Linfo_string86:
	.asciz	"planeX"                        # string offset=806
.Linfo_string87:
	.asciz	"planeY"                        # string offset=813
.Linfo_string88:
	.asciz	"sideX"                         # string offset=820
.Linfo_string89:
	.asciz	"sideY"                         # string offset=826
.Linfo_string90:
	.asciz	"deltaDistX"                    # string offset=832
.Linfo_string91:
	.asciz	"deltaDistY"                    # string offset=843
.Linfo_string92:
	.asciz	"time"                          # string offset=854
.Linfo_string93:
	.asciz	"oldtime"                       # string offset=859
.Linfo_string94:
	.asciz	"s_raycast"                     # string offset=867
.Linfo_string95:
	.asciz	"t_raycast"                     # string offset=877
.Linfo_string96:
	.asciz	"minimap"                       # string offset=887
.Linfo_string97:
	.asciz	"unsigned short"                # string offset=895
.Linfo_string98:
	.asciz	"__uint16_t"                    # string offset=910
.Linfo_string99:
	.asciz	"uint16_t"                      # string offset=921
.Linfo_string100:
	.asciz	"x_pos"                         # string offset=930
.Linfo_string101:
	.asciz	"y_pos"                         # string offset=936
.Linfo_string102:
	.asciz	"s_minimap"                     # string offset=942
.Linfo_string103:
	.asciz	"t_minimap"                     # string offset=952
.Linfo_string104:
	.asciz	"main_menu"                     # string offset=962
.Linfo_string105:
	.asciz	"xpm"                           # string offset=972
.Linfo_string106:
	.asciz	"color"                         # string offset=976
.Linfo_string107:
	.asciz	"__uint32_t"                    # string offset=982
.Linfo_string108:
	.asciz	"uint32_t"                      # string offset=993
.Linfo_string109:
	.asciz	"s_main_menu"                   # string offset=1002
.Linfo_string110:
	.asciz	"t_main_menu"                   # string offset=1014
.Linfo_string111:
	.asciz	"s_cub3d"                       # string offset=1026
.Linfo_string112:
	.asciz	"t_cub3d"                       # string offset=1034
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym print_error_then_exit_program
	.section	.debug_line,"",@progbits
.Lline_table_start0:
