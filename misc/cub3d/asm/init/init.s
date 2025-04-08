	.text
	.file	"init.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/../../include/cub3d.h"
	.globl	init_mlx                        # -- Begin function init_mlx
	.p2align	4, 0x90
	.type	init_mlx,@function
init_mlx:                               # @init_mlx
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/init.c"
	.loc	2 16 0                          # src/init/init.c:16:0
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
	.loc	2 17 2 prologue_end             # src/init/init.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 9 is_stmt 0                # src/init/init.c:17:9
	movq	56(%rax), %rax
	.loc	2 17 24                         # src/init/init.c:17:24
	movl	$720, (%rax)                    # imm = 0x2D0
	.loc	2 18 2 is_stmt 1                # src/init/init.c:18:2
	movq	-8(%rbp), %rax
	.loc	2 18 9 is_stmt 0                # src/init/init.c:18:9
	movq	56(%rax), %rax
	.loc	2 18 23                         # src/init/init.c:18:23
	movl	$1280, 4(%rax)                  # imm = 0x500
	.loc	2 19 19 is_stmt 1               # src/init/init.c:19:19
	movb	$0, %al
	callq	mlx_init
	movq	%rax, %rcx
	.loc	2 19 2 is_stmt 0                # src/init/init.c:19:2
	movq	-8(%rbp), %rax
	.loc	2 19 17                         # src/init/init.c:19:17
	movq	%rcx, 16(%rax)
.Ltmp1:
	.loc	2 20 7 is_stmt 1                # src/init/init.c:20:7
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
.Ltmp2:
	.loc	2 20 6 is_stmt 0                # src/init/init.c:20:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 21 33 is_stmt 1               # src/init/init.c:21:33
	movq	-8(%rbp), %rdi
	.loc	2 21 3 is_stmt 0                # src/init/init.c:21:3
	xorl	%esi, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_2:
	.loc	2 22 34 is_stmt 1               # src/init/init.c:22:34
	movq	-8(%rbp), %rax
	.loc	2 22 41 is_stmt 0               # src/init/init.c:22:41
	movq	16(%rax), %rdi
	.loc	2 23 3 is_stmt 1                # src/init/init.c:23:3
	movq	-8(%rbp), %rax
	.loc	2 23 10 is_stmt 0               # src/init/init.c:23:10
	movq	56(%rax), %rax
	.loc	2 23 18                         # src/init/init.c:23:18
	movl	4(%rax), %esi
	.loc	2 23 25                         # src/init/init.c:23:25
	movq	-8(%rbp), %rax
	.loc	2 23 32                         # src/init/init.c:23:32
	movq	56(%rax), %rax
	.loc	2 23 40                         # src/init/init.c:23:40
	movl	(%rax), %edx
	.loc	2 22 19 is_stmt 1               # src/init/init.c:22:19
	movabsq	$.L.str, %rcx
	callq	mlx_new_window
	movq	%rax, %rcx
	.loc	2 22 2 is_stmt 0                # src/init/init.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 17                         # src/init/init.c:22:17
	movq	%rcx, 8(%rax)
.Ltmp5:
	.loc	2 24 7 is_stmt 1                # src/init/init.c:24:7
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
.Ltmp6:
	.loc	2 24 6 is_stmt 0                # src/init/init.c:24:6
	jne	.LBB0_4
# %bb.3:
.Ltmp7:
	.loc	2 25 33 is_stmt 1               # src/init/init.c:25:33
	movq	-8(%rbp), %rdi
	.loc	2 25 3 is_stmt 0                # src/init/init.c:25:3
	movl	$1, %esi
	callq	print_error_then_exit_program
.Ltmp8:
.LBB0_4:
	.loc	2 26 1 is_stmt 1                # src/init/init.c:26:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	init_mlx, .Lfunc_end0-init_mlx
	.cfi_endproc
                                        # -- End function
	.globl	set_null_pointers               # -- Begin function set_null_pointers
	.p2align	4, 0x90
	.type	set_null_pointers,@function
set_null_pointers:                      # @set_null_pointers
.Lfunc_begin1:
	.loc	2 29 0                          # src/init/init.c:29:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	2 30 2 prologue_end             # src/init/init.c:30:2
	movq	-8(%rbp), %rax
	.loc	2 30 17 is_stmt 0               # src/init/init.c:30:17
	movq	$0, 8(%rax)
	.loc	2 31 2 is_stmt 1                # src/init/init.c:31:2
	movq	-8(%rbp), %rax
	.loc	2 31 17 is_stmt 0               # src/init/init.c:31:17
	movq	$0, 16(%rax)
	.loc	2 32 2 is_stmt 1                # src/init/init.c:32:2
	movq	-8(%rbp), %rax
	.loc	2 32 13 is_stmt 0               # src/init/init.c:32:13
	movq	$0, 24(%rax)
	.loc	2 33 2 is_stmt 1                # src/init/init.c:33:2
	movq	-8(%rbp), %rax
	.loc	2 33 14 is_stmt 0               # src/init/init.c:33:14
	movq	$0, 32(%rax)
	.loc	2 34 2 is_stmt 1                # src/init/init.c:34:2
	movq	-8(%rbp), %rax
	.loc	2 34 15 is_stmt 0               # src/init/init.c:34:15
	movq	$0, 40(%rax)
	.loc	2 35 2 is_stmt 1                # src/init/init.c:35:2
	movq	-8(%rbp), %rax
	.loc	2 35 16 is_stmt 0               # src/init/init.c:35:16
	movq	$0, 48(%rax)
	.loc	2 36 2 is_stmt 1                # src/init/init.c:36:2
	movq	-8(%rbp), %rax
	.loc	2 36 16 is_stmt 0               # src/init/init.c:36:16
	movq	$0, 56(%rax)
	.loc	2 37 2 is_stmt 1                # src/init/init.c:37:2
	movq	-8(%rbp), %rax
	.loc	2 37 17 is_stmt 0               # src/init/init.c:37:17
	movq	$0, 64(%rax)
	.loc	2 38 2 is_stmt 1                # src/init/init.c:38:2
	movq	-8(%rbp), %rax
	.loc	2 38 17 is_stmt 0               # src/init/init.c:38:17
	movq	$0, 72(%rax)
	.loc	2 39 2 is_stmt 1                # src/init/init.c:39:2
	movq	-8(%rbp), %rax
	.loc	2 39 19 is_stmt 0               # src/init/init.c:39:19
	movq	$0, 80(%rax)
	.loc	2 40 1 is_stmt 1                # src/init/init.c:40:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	set_null_pointers, .Lfunc_end1-set_null_pointers
	.cfi_endproc
                                        # -- End function
	.globl	init_cub3d                      # -- Begin function init_cub3d
	.p2align	4, 0x90
	.type	init_cub3d,@function
init_cub3d:                             # @init_cub3d
.Lfunc_begin2:
	.loc	2 43 0                          # src/init/init.c:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp12:
	.loc	2 44 20 prologue_end            # src/init/init.c:44:20
	movq	-8(%rbp), %rdi
	.loc	2 44 2 is_stmt 0                # src/init/init.c:44:2
	callq	set_null_pointers
	.loc	2 45 19 is_stmt 1               # src/init/init.c:45:19
	movq	-8(%rbp), %rdi
	.loc	2 45 2 is_stmt 0                # src/init/init.c:45:2
	callq	init_struct_attr
	.loc	2 46 21 is_stmt 1               # src/init/init.c:46:21
	movq	-8(%rbp), %rdi
	.loc	2 46 28 is_stmt 0               # src/init/init.c:46:28
	movq	-16(%rbp), %rsi
	.loc	2 46 2                          # src/init/init.c:46:2
	callq	extract_input_file
	.loc	2 47 23 is_stmt 1               # src/init/init.c:47:23
	movq	-8(%rbp), %rdi
	.loc	2 47 2 is_stmt 0                # src/init/init.c:47:2
	callq	parse_extracted_data
	.loc	2 48 11 is_stmt 1               # src/init/init.c:48:11
	movq	-8(%rbp), %rdi
	.loc	2 48 2 is_stmt 0                # src/init/init.c:48:2
	callq	init_mlx
	.loc	2 49 21 is_stmt 1               # src/init/init.c:49:21
	movq	-8(%rbp), %rdi
	.loc	2 49 2 is_stmt 0                # src/init/init.c:49:2
	callq	init_struct_attr_2
	.loc	2 50 13 is_stmt 1               # src/init/init.c:50:13
	movq	-8(%rbp), %rdi
	.loc	2 50 2 is_stmt 0                # src/init/init.c:50:2
	callq	load_asset
	.loc	2 51 16 is_stmt 1               # src/init/init.c:51:16
	movq	-8(%rbp), %rdi
	.loc	2 51 2 is_stmt 0                # src/init/init.c:51:2
	callq	set_menu_loop
	.loc	2 52 1 is_stmt 1                # src/init/init.c:52:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	init_cub3d, .Lfunc_end2-init_cub3d
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CUB3D"
	.size	.L.str, 6

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/../../include/cub3d_player.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x5f4 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x86:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x87:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x9c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xab:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xc0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xcf:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xe4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xf2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string115                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	697                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x101:0x5 DW_TAG_pointer_type
	.long	262                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x106:0xb DW_TAG_typedef
	.long	273                             # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x111:0x8d DW_TAG_structure_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x119:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x125:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x131:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13d:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	443                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x149:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x155:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	830                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x161:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	952                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x16d:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1095                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x179:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1144                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x185:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1313                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x191:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1415                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x19e:0xb DW_TAG_typedef
	.long	425                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1a9:0xb DW_TAG_typedef
	.long	436                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1b4:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1bb:0x5 DW_TAG_pointer_type
	.long	448                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c0:0xb DW_TAG_typedef
	.long	459                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1cb:0x75 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1d3:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1df:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1eb:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x203:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x227:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x233:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	692                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x240:0xb DW_TAG_typedef
	.long	587                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x24b:0xb DW_TAG_typedef
	.long	598                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x256:0x7 DW_TAG_base_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x25d:0x5 DW_TAG_pointer_type
	.long	610                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x262:0xb DW_TAG_typedef
	.long	621                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x26d:0x2d DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x275:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x281:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x28d:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x29a:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x2a1:0xc DW_TAG_array_type
	.long	414                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2a6:0x6 DW_TAG_subrange_type
	.long	685                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x2ad:0x7 DW_TAG_base_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x2b4:0x5 DW_TAG_pointer_type
	.long	697                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b9:0x5 DW_TAG_pointer_type
	.long	702                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2be:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2c5:0x5 DW_TAG_pointer_type
	.long	714                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2ca:0xb DW_TAG_typedef
	.long	725                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d5:0x69 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2dd:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e9:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2f5:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x301:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x30d:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x319:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x325:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x331:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	692                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x33e:0x5 DW_TAG_pointer_type
	.long	835                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x343:0xb DW_TAG_typedef
	.long	846                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x34e:0x15 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x356:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	867                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x363:0x5 DW_TAG_pointer_type
	.long	872                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x368:0xb DW_TAG_typedef
	.long	883                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x373:0x45 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x37b:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x387:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x393:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x39f:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ab:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3b8:0x5 DW_TAG_pointer_type
	.long	957                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3bd:0xb DW_TAG_typedef
	.long	968                             # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3c8:0x69 DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x400:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x40c:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x418:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x424:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1080                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x431:0x7 DW_TAG_base_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x438:0x5 DW_TAG_pointer_type
	.long	1085                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x43d:0x5 DW_TAG_pointer_type
	.long	1090                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x442:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x447:0x5 DW_TAG_pointer_type
	.long	1100                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x44c:0xb DW_TAG_typedef
	.long	1111                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x457:0x21 DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x45f:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x46b:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	666                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x478:0x5 DW_TAG_pointer_type
	.long	1149                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x47d:0xb DW_TAG_typedef
	.long	1160                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x488:0x99 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x490:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x49c:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a8:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b4:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c0:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4cc:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d8:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4e4:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f0:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4fc:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x508:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x514:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x521:0x5 DW_TAG_pointer_type
	.long	1318                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x526:0xb DW_TAG_typedef
	.long	1329                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x531:0x39 DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x539:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	1386                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x545:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1386                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x551:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1386                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x55d:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	1386                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x56a:0xb DW_TAG_typedef
	.long	1397                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x575:0xb DW_TAG_typedef
	.long	1408                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x580:0x7 DW_TAG_base_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x587:0x5 DW_TAG_pointer_type
	.long	1420                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x58c:0xb DW_TAG_typedef
	.long	1431                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x597:0x51 DW_TAG_structure_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5b7:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5c3:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1512                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5cf:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1512                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5db:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1512                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5e8:0xb DW_TAG_typedef
	.long	1523                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5f3:0xb DW_TAG_typedef
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
	.asciz	"src/init/init.c"               # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=54
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=93
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=106
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=118
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=130
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=142
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=159
.Linfo_string9:
	.asciz	"err_id"                        # string offset=172
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=179
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=188
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=198
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=210
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=221
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=236
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=257
.Linfo_string17:
	.asciz	"init_mlx"                      # string offset=267
.Linfo_string18:
	.asciz	"set_null_pointers"             # string offset=276
.Linfo_string19:
	.asciz	"init_cub3d"                    # string offset=294
.Linfo_string20:
	.asciz	"cub3d"                         # string offset=305
.Linfo_string21:
	.asciz	"program_state"                 # string offset=311
.Linfo_string22:
	.asciz	"unsigned char"                 # string offset=325
.Linfo_string23:
	.asciz	"__uint8_t"                     # string offset=339
.Linfo_string24:
	.asciz	"uint8_t"                       # string offset=349
.Linfo_string25:
	.asciz	"win_ptr"                       # string offset=357
.Linfo_string26:
	.asciz	"mlx_ptr"                       # string offset=365
.Linfo_string27:
	.asciz	"map"                           # string offset=373
.Linfo_string28:
	.asciz	"width"                         # string offset=377
.Linfo_string29:
	.asciz	"long unsigned int"             # string offset=383
.Linfo_string30:
	.asciz	"__uint64_t"                    # string offset=401
.Linfo_string31:
	.asciz	"uint64_t"                      # string offset=412
.Linfo_string32:
	.asciz	"height"                        # string offset=421
.Linfo_string33:
	.asciz	"no_texture"                    # string offset=428
.Linfo_string34:
	.asciz	"int"                           # string offset=439
.Linfo_string35:
	.asciz	"ptr"                           # string offset=443
.Linfo_string36:
	.asciz	"s_xpm"                         # string offset=447
.Linfo_string37:
	.asciz	"t_xpm"                         # string offset=453
.Linfo_string38:
	.asciz	"so_texture"                    # string offset=459
.Linfo_string39:
	.asciz	"we_texture"                    # string offset=470
.Linfo_string40:
	.asciz	"ea_texture"                    # string offset=481
.Linfo_string41:
	.asciz	"ceiling"                       # string offset=492
.Linfo_string42:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=500
.Linfo_string43:
	.asciz	"floor"                         # string offset=520
.Linfo_string44:
	.asciz	"data"                          # string offset=526
.Linfo_string45:
	.asciz	"char"                          # string offset=531
.Linfo_string46:
	.asciz	"s_map"                         # string offset=536
.Linfo_string47:
	.asciz	"t_map"                         # string offset=542
.Linfo_string48:
	.asciz	"file"                          # string offset=548
.Linfo_string49:
	.asciz	"fd"                            # string offset=553
.Linfo_string50:
	.asciz	"mask"                          # string offset=556
.Linfo_string51:
	.asciz	"offset"                        # string offset=561
.Linfo_string52:
	.asciz	"no_filename"                   # string offset=568
.Linfo_string53:
	.asciz	"so_filename"                   # string offset=580
.Linfo_string54:
	.asciz	"we_filename"                   # string offset=592
.Linfo_string55:
	.asciz	"ea_filename"                   # string offset=604
.Linfo_string56:
	.asciz	"s_file"                        # string offset=616
.Linfo_string57:
	.asciz	"t_file"                        # string offset=623
.Linfo_string58:
	.asciz	"scene"                         # string offset=630
.Linfo_string59:
	.asciz	"img"                           # string offset=636
.Linfo_string60:
	.asciz	"addr"                          # string offset=640
.Linfo_string61:
	.asciz	"endian"                        # string offset=645
.Linfo_string62:
	.asciz	"size_line"                     # string offset=652
.Linfo_string63:
	.asciz	"bpp"                           # string offset=662
.Linfo_string64:
	.asciz	"s_img"                         # string offset=666
.Linfo_string65:
	.asciz	"t_img"                         # string offset=672
.Linfo_string66:
	.asciz	"s_scene"                       # string offset=678
.Linfo_string67:
	.asciz	"t_scene"                       # string offset=686
.Linfo_string68:
	.asciz	"player"                        # string offset=694
.Linfo_string69:
	.asciz	"x0"                            # string offset=701
.Linfo_string70:
	.asciz	"y0"                            # string offset=704
.Linfo_string71:
	.asciz	"x1"                            # string offset=707
.Linfo_string72:
	.asciz	"y1"                            # string offset=710
.Linfo_string73:
	.asciz	"angle"                         # string offset=713
.Linfo_string74:
	.asciz	"double"                        # string offset=719
.Linfo_string75:
	.asciz	"pos_x"                         # string offset=726
.Linfo_string76:
	.asciz	"pos_y"                         # string offset=732
.Linfo_string77:
	.asciz	"vertex"                        # string offset=738
.Linfo_string78:
	.asciz	"s_player"                      # string offset=745
.Linfo_string79:
	.asciz	"t_player"                      # string offset=754
.Linfo_string80:
	.asciz	"window"                        # string offset=763
.Linfo_string81:
	.asciz	"s_window"                      # string offset=770
.Linfo_string82:
	.asciz	"t_window"                      # string offset=779
.Linfo_string83:
	.asciz	"raycast"                       # string offset=788
.Linfo_string84:
	.asciz	"posX"                          # string offset=796
.Linfo_string85:
	.asciz	"posY"                          # string offset=801
.Linfo_string86:
	.asciz	"dirX"                          # string offset=806
.Linfo_string87:
	.asciz	"dirY"                          # string offset=811
.Linfo_string88:
	.asciz	"planeX"                        # string offset=816
.Linfo_string89:
	.asciz	"planeY"                        # string offset=823
.Linfo_string90:
	.asciz	"sideX"                         # string offset=830
.Linfo_string91:
	.asciz	"sideY"                         # string offset=836
.Linfo_string92:
	.asciz	"deltaDistX"                    # string offset=842
.Linfo_string93:
	.asciz	"deltaDistY"                    # string offset=853
.Linfo_string94:
	.asciz	"time"                          # string offset=864
.Linfo_string95:
	.asciz	"oldtime"                       # string offset=869
.Linfo_string96:
	.asciz	"s_raycast"                     # string offset=877
.Linfo_string97:
	.asciz	"t_raycast"                     # string offset=887
.Linfo_string98:
	.asciz	"minimap"                       # string offset=897
.Linfo_string99:
	.asciz	"unsigned short"                # string offset=905
.Linfo_string100:
	.asciz	"__uint16_t"                    # string offset=920
.Linfo_string101:
	.asciz	"uint16_t"                      # string offset=931
.Linfo_string102:
	.asciz	"x_pos"                         # string offset=940
.Linfo_string103:
	.asciz	"y_pos"                         # string offset=946
.Linfo_string104:
	.asciz	"s_minimap"                     # string offset=952
.Linfo_string105:
	.asciz	"t_minimap"                     # string offset=962
.Linfo_string106:
	.asciz	"main_menu"                     # string offset=972
.Linfo_string107:
	.asciz	"xpm"                           # string offset=982
.Linfo_string108:
	.asciz	"color"                         # string offset=986
.Linfo_string109:
	.asciz	"__uint32_t"                    # string offset=992
.Linfo_string110:
	.asciz	"uint32_t"                      # string offset=1003
.Linfo_string111:
	.asciz	"s_main_menu"                   # string offset=1012
.Linfo_string112:
	.asciz	"t_main_menu"                   # string offset=1024
.Linfo_string113:
	.asciz	"s_cub3d"                       # string offset=1036
.Linfo_string114:
	.asciz	"t_cub3d"                       # string offset=1044
.Linfo_string115:
	.asciz	"argv"                          # string offset=1052
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_mlx
	.addrsig_sym mlx_init
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym mlx_new_window
	.addrsig_sym set_null_pointers
	.addrsig_sym init_struct_attr
	.addrsig_sym extract_input_file
	.addrsig_sym parse_extracted_data
	.addrsig_sym init_struct_attr_2
	.addrsig_sym load_asset
	.addrsig_sym set_menu_loop
	.section	.debug_line,"",@progbits
.Lline_table_start0:
