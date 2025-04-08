	.text
	.file	"asset_init.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/asset/../../include/cub3d.h"
	.globl	create_new_img                  # -- Begin function create_new_img
	.p2align	4, 0x90
	.type	create_new_img,@function
create_new_img:                         # @create_new_img
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/asset/asset_init.c"
	.loc	2 21 0                          # src/asset/asset_init.c:21:0
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
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	2 24 8 prologue_end             # src/asset/asset_init.c:24:8
	movl	$32, %edi
	callq	malloc
	.loc	2 24 6 is_stmt 0                # src/asset/asset_init.c:24:6
	movq	%rax, -32(%rbp)
.Ltmp1:
	.loc	2 25 7 is_stmt 1                # src/asset/asset_init.c:25:7
	cmpq	$0, -32(%rbp)
.Ltmp2:
	.loc	2 25 6 is_stmt 0                # src/asset/asset_init.c:25:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 26 33 is_stmt 1               # src/asset/asset_init.c:26:33
	movq	-8(%rbp), %rdi
	.loc	2 26 3 is_stmt 0                # src/asset/asset_init.c:26:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_2:
	.loc	2 27 27 is_stmt 1               # src/asset/asset_init.c:27:27
	movq	-24(%rbp), %rdi
	.loc	2 27 36 is_stmt 0               # src/asset/asset_init.c:27:36
	movq	-16(%rbp), %rax
	.loc	2 27 44                         # src/asset/asset_init.c:27:44
	movl	4(%rax), %esi
	.loc	2 27 51                         # src/asset/asset_init.c:27:51
	movq	-16(%rbp), %rax
	.loc	2 27 59                         # src/asset/asset_init.c:27:59
	movl	(%rax), %edx
	.loc	2 27 13                         # src/asset/asset_init.c:27:13
	callq	mlx_new_image
	movq	%rax, %rcx
	.loc	2 27 2                          # src/asset/asset_init.c:27:2
	movq	-32(%rbp), %rax
	.loc	2 27 11                         # src/asset/asset_init.c:27:11
	movq	%rcx, (%rax)
	.loc	2 28 32 is_stmt 1               # src/asset/asset_init.c:28:32
	movq	-32(%rbp), %rax
	.loc	2 28 37 is_stmt 0               # src/asset/asset_init.c:28:37
	movq	(%rax), %rdi
	.loc	2 28 43                         # src/asset/asset_init.c:28:43
	movq	-32(%rbp), %rsi
	.loc	2 28 48                         # src/asset/asset_init.c:28:48
	addq	$24, %rsi
	.loc	2 28 54                         # src/asset/asset_init.c:28:54
	movq	-32(%rbp), %rdx
	.loc	2 28 59                         # src/asset/asset_init.c:28:59
	addq	$20, %rdx
	.loc	2 28 71                         # src/asset/asset_init.c:28:71
	movq	-32(%rbp), %rcx
	.loc	2 28 76                         # src/asset/asset_init.c:28:76
	addq	$16, %rcx
	.loc	2 28 14                         # src/asset/asset_init.c:28:14
	callq	mlx_get_data_addr
	movq	%rax, %rcx
	.loc	2 28 2                          # src/asset/asset_init.c:28:2
	movq	-32(%rbp), %rax
	.loc	2 28 12                         # src/asset/asset_init.c:28:12
	movq	%rcx, 8(%rax)
	.loc	2 29 10 is_stmt 1               # src/asset/asset_init.c:29:10
	movq	-32(%rbp), %rax
	.loc	2 29 2 is_stmt 0                # src/asset/asset_init.c:29:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	create_new_img, .Lfunc_end0-create_new_img
	.cfi_endproc
                                        # -- End function
	.globl	init_scene_asset                # -- Begin function init_scene_asset
	.p2align	4, 0x90
	.type	init_scene_asset,@function
init_scene_asset:                       # @init_scene_asset
.Lfunc_begin1:
	.loc	2 33 0 is_stmt 1                # src/asset/asset_init.c:33:0
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
.Ltmp6:
	.loc	2 34 30 prologue_end            # src/asset/asset_init.c:34:30
	movq	-8(%rbp), %rdi
	.loc	2 34 37 is_stmt 0               # src/asset/asset_init.c:34:37
	movq	-8(%rbp), %rax
	.loc	2 34 44                         # src/asset/asset_init.c:34:44
	movq	56(%rax), %rsi
	.loc	2 34 52                         # src/asset/asset_init.c:34:52
	movq	-8(%rbp), %rax
	.loc	2 34 59                         # src/asset/asset_init.c:34:59
	movq	16(%rax), %rdx
	.loc	2 34 15                         # src/asset/asset_init.c:34:15
	callq	create_new_img
	movq	%rax, %rcx
	.loc	2 34 2                          # src/asset/asset_init.c:34:2
	movq	-16(%rbp), %rax
	.loc	2 34 13                         # src/asset/asset_init.c:34:13
	movq	%rcx, (%rax)
	.loc	2 35 1 is_stmt 1                # src/asset/asset_init.c:35:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	init_scene_asset, .Lfunc_end1-init_scene_asset
	.cfi_endproc
                                        # -- End function
	.globl	init_main_menu_asset            # -- Begin function init_main_menu_asset
	.p2align	4, 0x90
	.type	init_main_menu_asset,@function
init_main_menu_asset:                   # @init_main_menu_asset
.Lfunc_begin2:
	.loc	2 38 0                          # src/asset/asset_init.c:38:0
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
	movq	%rdx, -24(%rbp)
.Ltmp8:
	.loc	2 39 19 prologue_end            # src/asset/asset_init.c:39:19
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 39 2 is_stmt 0                # src/asset/asset_init.c:39:2
	movq	-16(%rbp), %rax
	.loc	2 39 17                         # src/asset/asset_init.c:39:17
	movq	%rcx, (%rax)
	.loc	2 40 46 is_stmt 1               # src/asset/asset_init.c:40:46
	movq	-24(%rbp), %rdi
	.loc	2 41 4                          # src/asset/asset_init.c:41:4
	movq	-16(%rbp), %rax
	.loc	2 41 15 is_stmt 0               # src/asset/asset_init.c:41:15
	movq	(%rax), %rdx
	.loc	2 41 28                         # src/asset/asset_init.c:41:28
	movq	-16(%rbp), %rax
	.loc	2 41 39                         # src/asset/asset_init.c:41:39
	movq	(%rax), %rcx
	.loc	2 41 44                         # src/asset/asset_init.c:41:44
	addq	$4, %rcx
	.loc	2 40 24 is_stmt 1               # src/asset/asset_init.c:40:24
	movabsq	$.L.str, %rsi
	callq	mlx_xpm_file_to_image
	movq	%rax, %rcx
	.loc	2 40 2 is_stmt 0                # src/asset/asset_init.c:40:2
	movq	-16(%rbp), %rax
	.loc	2 40 13                         # src/asset/asset_init.c:40:13
	movq	(%rax), %rax
	.loc	2 40 22                         # src/asset/asset_init.c:40:22
	movq	%rcx, 8(%rax)
	.loc	2 42 21 is_stmt 1               # src/asset/asset_init.c:42:21
	movq	-8(%rbp), %rax
	.loc	2 42 28 is_stmt 0               # src/asset/asset_init.c:42:28
	movq	56(%rax), %rax
	.loc	2 42 36                         # src/asset/asset_init.c:42:36
	movl	4(%rax), %eax
	.loc	2 42 42                         # src/asset/asset_init.c:42:42
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	.loc	2 42 2                          # src/asset/asset_init.c:42:2
	movq	-16(%rbp), %rax
	.loc	2 42 19                         # src/asset/asset_init.c:42:19
	movl	%ecx, 16(%rax)
	.loc	2 43 21 is_stmt 1               # src/asset/asset_init.c:43:21
	movq	-8(%rbp), %rax
	.loc	2 43 28 is_stmt 0               # src/asset/asset_init.c:43:28
	movq	56(%rax), %rax
	.loc	2 43 36                         # src/asset/asset_init.c:43:36
	movl	(%rax), %eax
	.loc	2 43 43                         # src/asset/asset_init.c:43:43
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	.loc	2 43 2                          # src/asset/asset_init.c:43:2
	movq	-16(%rbp), %rax
	.loc	2 43 19                         # src/asset/asset_init.c:43:19
	movl	%ecx, 20(%rax)
	.loc	2 44 1 is_stmt 1                # src/asset/asset_init.c:44:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	init_main_menu_asset, .Lfunc_end2-init_main_menu_asset
	.cfi_endproc
                                        # -- End function
	.globl	load_asset                      # -- Begin function load_asset
	.p2align	4, 0x90
	.type	load_asset,@function
load_asset:                             # @load_asset
.Lfunc_begin3:
	.loc	2 47 0                          # src/asset/asset_init.c:47:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	2 48 19 prologue_end            # src/asset/asset_init.c:48:19
	movq	-8(%rbp), %rdi
	.loc	2 48 26 is_stmt 0               # src/asset/asset_init.c:48:26
	movq	-8(%rbp), %rax
	.loc	2 48 33                         # src/asset/asset_init.c:48:33
	movq	40(%rax), %rsi
	.loc	2 48 2                          # src/asset/asset_init.c:48:2
	callq	init_scene_asset
	.loc	2 49 23 is_stmt 1               # src/asset/asset_init.c:49:23
	movq	-8(%rbp), %rdi
	.loc	2 49 30 is_stmt 0               # src/asset/asset_init.c:49:30
	movq	-8(%rbp), %rax
	.loc	2 49 37                         # src/asset/asset_init.c:49:37
	movq	80(%rax), %rsi
	.loc	2 49 48                         # src/asset/asset_init.c:49:48
	movq	-8(%rbp), %rax
	.loc	2 49 55                         # src/asset/asset_init.c:49:55
	movq	16(%rax), %rdx
	.loc	2 49 2                          # src/asset/asset_init.c:49:2
	callq	init_main_menu_asset
	.loc	2 50 1 is_stmt 1                # src/asset/asset_init.c:50:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end3:
	.size	load_asset, .Lfunc_end3-load_asset
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"asset/Untitled.xpm"
	.size	.L.str, 19

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/asset/../../include/cub3d_player.h"
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
	.byte	8                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x662 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x86:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	366                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x9f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	471                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xad:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string81                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	1205                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0xbb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	451                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xc9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string66                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	366                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd8:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xed:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	471                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xfb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string65                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1025                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x10a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x11f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	471                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x12d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string107                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	1525                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x13b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	451                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x14a:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x15f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	471                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x16e:0x5 DW_TAG_pointer_type
	.long	371                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x173:0xb DW_TAG_typedef
	.long	382                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x17e:0x45 DW_TAG_structure_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x186:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	451                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x192:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	452                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x19e:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1aa:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1b6:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1c3:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x1c4:0x5 DW_TAG_pointer_type
	.long	457                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c9:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x1d0:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1d7:0x5 DW_TAG_pointer_type
	.long	476                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1dc:0xb DW_TAG_typedef
	.long	487                             # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1e7:0x8d DW_TAG_structure_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1ef:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1fb:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	451                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x207:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	451                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x213:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	657                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x21f:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	904                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x237:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1062                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x243:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1205                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x24f:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1254                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x25b:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1423                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x267:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1525                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x274:0xb DW_TAG_typedef
	.long	639                             # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x27f:0xb DW_TAG_typedef
	.long	650                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x28a:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x291:0x5 DW_TAG_pointer_type
	.long	662                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x296:0xb DW_TAG_typedef
	.long	673                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a1:0x75 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2a9:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	790                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b5:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	790                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2c1:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2cd:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2d9:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2e5:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2f1:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	880                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2fd:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	880                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x309:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	899                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x316:0xb DW_TAG_typedef
	.long	801                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x321:0xb DW_TAG_typedef
	.long	812                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x32c:0x7 DW_TAG_base_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x333:0x5 DW_TAG_pointer_type
	.long	824                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x338:0xb DW_TAG_typedef
	.long	835                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x343:0x2d DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x34b:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x357:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x363:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	451                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x370:0xc DW_TAG_array_type
	.long	628                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x375:0x6 DW_TAG_subrange_type
	.long	892                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x37c:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x383:0x5 DW_TAG_pointer_type
	.long	452                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x388:0x5 DW_TAG_pointer_type
	.long	909                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x38d:0xb DW_TAG_typedef
	.long	920                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x398:0x69 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3c4:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	452                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	452                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	452                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	452                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	899                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x401:0x5 DW_TAG_pointer_type
	.long	1030                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x406:0xb DW_TAG_typedef
	.long	1041                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x411:0x15 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x419:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	366                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x426:0x5 DW_TAG_pointer_type
	.long	1067                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x42b:0xb DW_TAG_typedef
	.long	1078                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x436:0x69 DW_TAG_structure_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x43e:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x44a:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x456:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x462:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x46e:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x47a:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x486:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x492:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1190                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x49f:0x7 DW_TAG_base_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x4a6:0x5 DW_TAG_pointer_type
	.long	1195                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4ab:0x5 DW_TAG_pointer_type
	.long	1200                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4b0:0x5 DW_TAG_pointer_type
	.long	628                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4b5:0x5 DW_TAG_pointer_type
	.long	1210                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4ba:0xb DW_TAG_typedef
	.long	1221                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4c5:0x21 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4cd:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d9:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4e6:0x5 DW_TAG_pointer_type
	.long	1259                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4eb:0xb DW_TAG_typedef
	.long	1270                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4f6:0x99 DW_TAG_structure_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4fe:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50a:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x516:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x522:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x52e:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53a:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x546:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x552:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x55e:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x56a:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x576:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x582:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x58f:0x5 DW_TAG_pointer_type
	.long	1428                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x594:0xb DW_TAG_typedef
	.long	1439                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x59f:0x39 DW_TAG_structure_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5a7:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1496                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5b3:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1496                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5bf:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	1496                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5cb:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1496                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5d8:0xb DW_TAG_typedef
	.long	1507                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5e3:0xb DW_TAG_typedef
	.long	1518                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5ee:0x7 DW_TAG_base_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x5f5:0x5 DW_TAG_pointer_type
	.long	1530                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5fa:0xb DW_TAG_typedef
	.long	1541                            # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x605:0x51 DW_TAG_structure_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x60d:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x619:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x625:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x631:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1622                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x63d:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1622                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x649:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1622                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x656:0xb DW_TAG_typedef
	.long	1633                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x661:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/asset/asset_init.c"        # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=61
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=100
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=113
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=125
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=137
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=149
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=166
.Linfo_string9:
	.asciz	"err_id"                        # string offset=179
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=186
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=195
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=205
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=217
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=228
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=243
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=264
.Linfo_string17:
	.asciz	"create_new_img"                # string offset=274
.Linfo_string18:
	.asciz	"ptr"                           # string offset=289
.Linfo_string19:
	.asciz	"addr"                          # string offset=293
.Linfo_string20:
	.asciz	"char"                          # string offset=298
.Linfo_string21:
	.asciz	"endian"                        # string offset=303
.Linfo_string22:
	.asciz	"int"                           # string offset=310
.Linfo_string23:
	.asciz	"size_line"                     # string offset=314
.Linfo_string24:
	.asciz	"bpp"                           # string offset=324
.Linfo_string25:
	.asciz	"s_img"                         # string offset=328
.Linfo_string26:
	.asciz	"t_img"                         # string offset=334
.Linfo_string27:
	.asciz	"init_scene_asset"              # string offset=340
.Linfo_string28:
	.asciz	"init_main_menu_asset"          # string offset=357
.Linfo_string29:
	.asciz	"load_asset"                    # string offset=378
.Linfo_string30:
	.asciz	"cub3d"                         # string offset=389
.Linfo_string31:
	.asciz	"program_state"                 # string offset=395
.Linfo_string32:
	.asciz	"unsigned char"                 # string offset=409
.Linfo_string33:
	.asciz	"__uint8_t"                     # string offset=423
.Linfo_string34:
	.asciz	"uint8_t"                       # string offset=433
.Linfo_string35:
	.asciz	"win_ptr"                       # string offset=441
.Linfo_string36:
	.asciz	"mlx_ptr"                       # string offset=449
.Linfo_string37:
	.asciz	"map"                           # string offset=457
.Linfo_string38:
	.asciz	"width"                         # string offset=461
.Linfo_string39:
	.asciz	"long unsigned int"             # string offset=467
.Linfo_string40:
	.asciz	"__uint64_t"                    # string offset=485
.Linfo_string41:
	.asciz	"uint64_t"                      # string offset=496
.Linfo_string42:
	.asciz	"height"                        # string offset=505
.Linfo_string43:
	.asciz	"no_texture"                    # string offset=512
.Linfo_string44:
	.asciz	"s_xpm"                         # string offset=523
.Linfo_string45:
	.asciz	"t_xpm"                         # string offset=529
.Linfo_string46:
	.asciz	"so_texture"                    # string offset=535
.Linfo_string47:
	.asciz	"we_texture"                    # string offset=546
.Linfo_string48:
	.asciz	"ea_texture"                    # string offset=557
.Linfo_string49:
	.asciz	"ceiling"                       # string offset=568
.Linfo_string50:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=576
.Linfo_string51:
	.asciz	"floor"                         # string offset=596
.Linfo_string52:
	.asciz	"data"                          # string offset=602
.Linfo_string53:
	.asciz	"s_map"                         # string offset=607
.Linfo_string54:
	.asciz	"t_map"                         # string offset=613
.Linfo_string55:
	.asciz	"file"                          # string offset=619
.Linfo_string56:
	.asciz	"fd"                            # string offset=624
.Linfo_string57:
	.asciz	"mask"                          # string offset=627
.Linfo_string58:
	.asciz	"offset"                        # string offset=632
.Linfo_string59:
	.asciz	"no_filename"                   # string offset=639
.Linfo_string60:
	.asciz	"so_filename"                   # string offset=651
.Linfo_string61:
	.asciz	"we_filename"                   # string offset=663
.Linfo_string62:
	.asciz	"ea_filename"                   # string offset=675
.Linfo_string63:
	.asciz	"s_file"                        # string offset=687
.Linfo_string64:
	.asciz	"t_file"                        # string offset=694
.Linfo_string65:
	.asciz	"scene"                         # string offset=701
.Linfo_string66:
	.asciz	"img"                           # string offset=707
.Linfo_string67:
	.asciz	"s_scene"                       # string offset=711
.Linfo_string68:
	.asciz	"t_scene"                       # string offset=719
.Linfo_string69:
	.asciz	"player"                        # string offset=727
.Linfo_string70:
	.asciz	"x0"                            # string offset=734
.Linfo_string71:
	.asciz	"y0"                            # string offset=737
.Linfo_string72:
	.asciz	"x1"                            # string offset=740
.Linfo_string73:
	.asciz	"y1"                            # string offset=743
.Linfo_string74:
	.asciz	"angle"                         # string offset=746
.Linfo_string75:
	.asciz	"double"                        # string offset=752
.Linfo_string76:
	.asciz	"pos_x"                         # string offset=759
.Linfo_string77:
	.asciz	"pos_y"                         # string offset=765
.Linfo_string78:
	.asciz	"vertex"                        # string offset=771
.Linfo_string79:
	.asciz	"s_player"                      # string offset=778
.Linfo_string80:
	.asciz	"t_player"                      # string offset=787
.Linfo_string81:
	.asciz	"window"                        # string offset=796
.Linfo_string82:
	.asciz	"s_window"                      # string offset=803
.Linfo_string83:
	.asciz	"t_window"                      # string offset=812
.Linfo_string84:
	.asciz	"raycast"                       # string offset=821
.Linfo_string85:
	.asciz	"posX"                          # string offset=829
.Linfo_string86:
	.asciz	"posY"                          # string offset=834
.Linfo_string87:
	.asciz	"dirX"                          # string offset=839
.Linfo_string88:
	.asciz	"dirY"                          # string offset=844
.Linfo_string89:
	.asciz	"planeX"                        # string offset=849
.Linfo_string90:
	.asciz	"planeY"                        # string offset=856
.Linfo_string91:
	.asciz	"sideX"                         # string offset=863
.Linfo_string92:
	.asciz	"sideY"                         # string offset=869
.Linfo_string93:
	.asciz	"deltaDistX"                    # string offset=875
.Linfo_string94:
	.asciz	"deltaDistY"                    # string offset=886
.Linfo_string95:
	.asciz	"time"                          # string offset=897
.Linfo_string96:
	.asciz	"oldtime"                       # string offset=902
.Linfo_string97:
	.asciz	"s_raycast"                     # string offset=910
.Linfo_string98:
	.asciz	"t_raycast"                     # string offset=920
.Linfo_string99:
	.asciz	"minimap"                       # string offset=930
.Linfo_string100:
	.asciz	"unsigned short"                # string offset=938
.Linfo_string101:
	.asciz	"__uint16_t"                    # string offset=953
.Linfo_string102:
	.asciz	"uint16_t"                      # string offset=964
.Linfo_string103:
	.asciz	"x_pos"                         # string offset=973
.Linfo_string104:
	.asciz	"y_pos"                         # string offset=979
.Linfo_string105:
	.asciz	"s_minimap"                     # string offset=985
.Linfo_string106:
	.asciz	"t_minimap"                     # string offset=995
.Linfo_string107:
	.asciz	"main_menu"                     # string offset=1005
.Linfo_string108:
	.asciz	"xpm"                           # string offset=1015
.Linfo_string109:
	.asciz	"color"                         # string offset=1019
.Linfo_string110:
	.asciz	"__uint32_t"                    # string offset=1025
.Linfo_string111:
	.asciz	"uint32_t"                      # string offset=1036
.Linfo_string112:
	.asciz	"s_main_menu"                   # string offset=1045
.Linfo_string113:
	.asciz	"t_main_menu"                   # string offset=1057
.Linfo_string114:
	.asciz	"s_cub3d"                       # string offset=1069
.Linfo_string115:
	.asciz	"t_cub3d"                       # string offset=1077
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym create_new_img
	.addrsig_sym malloc
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym mlx_new_image
	.addrsig_sym mlx_get_data_addr
	.addrsig_sym init_scene_asset
	.addrsig_sym init_main_menu_asset
	.addrsig_sym mlx_xpm_file_to_image
	.section	.debug_line,"",@progbits
.Lline_table_start0:
