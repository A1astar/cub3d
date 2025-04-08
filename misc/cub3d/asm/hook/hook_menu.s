	.text
	.file	"hook_menu.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/hook/../../include/cub3d.h"
	.globl	menu_loop_hook                  # -- Begin function menu_loop_hook
	.p2align	4, 0x90
	.type	menu_loop_hook,@function
menu_loop_hook:                         # @menu_loop_hook
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/hook/hook_menu.c"
	.loc	2 16 0                          # src/hook/hook_menu.c:16:0
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
	.loc	2 18 14 prologue_end            # src/hook/hook_menu.c:18:14
	movq	-8(%rbp), %rdi
	.loc	2 18 2 is_stmt 0                # src/hook/hook_menu.c:18:2
	callq	render_menu
	.loc	2 19 2 is_stmt 1                # src/hook/hook_menu.c:19:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	menu_loop_hook, .Lfunc_end0-menu_loop_hook
	.cfi_endproc
                                        # -- End function
	.globl	menu_mouse_hook                 # -- Begin function menu_mouse_hook
	.p2align	4, 0x90
	.type	menu_mouse_hook,@function
menu_mouse_hook:                        # @menu_mouse_hook
.Lfunc_begin1:
	.loc	2 23 0                          # src/hook/hook_menu.c:23:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp2:
	.loc	2 24 13 prologue_end            # src/hook/hook_menu.c:24:13
	cmpl	$1, -4(%rbp)
.Ltmp3:
	.loc	2 24 6 is_stmt 0                # src/hook/hook_menu.c:24:6
	jne	.LBB1_2
# %bb.1:
.Ltmp4:
	.loc	2 25 3 is_stmt 1                # src/hook/hook_menu.c:25:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
.Ltmp5:
.LBB1_2:
	.loc	2 26 13                         # src/hook/hook_menu.c:26:13
	cmpl	$2, -4(%rbp)
.Ltmp6:
	.loc	2 26 6 is_stmt 0                # src/hook/hook_menu.c:26:6
	jne	.LBB1_4
# %bb.3:
.Ltmp7:
	.loc	2 27 3 is_stmt 1                # src/hook/hook_menu.c:27:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.Ltmp8:
.LBB1_4:
	.loc	2 28 13                         # src/hook/hook_menu.c:28:13
	cmpl	$3, -4(%rbp)
.Ltmp9:
	.loc	2 28 6 is_stmt 0                # src/hook/hook_menu.c:28:6
	jne	.LBB1_6
# %bb.5:
.Ltmp10:
	.loc	2 29 3 is_stmt 1                # src/hook/hook_menu.c:29:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.Ltmp11:
.LBB1_6:
	.loc	2 30 13                         # src/hook/hook_menu.c:30:13
	cmpl	$4, -4(%rbp)
.Ltmp12:
	.loc	2 30 6 is_stmt 0                # src/hook/hook_menu.c:30:6
	jne	.LBB1_8
# %bb.7:
.Ltmp13:
	.loc	2 31 3 is_stmt 1                # src/hook/hook_menu.c:31:3
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
.Ltmp14:
.LBB1_8:
	.loc	2 32 13                         # src/hook/hook_menu.c:32:13
	cmpl	$5, -4(%rbp)
.Ltmp15:
	.loc	2 32 6 is_stmt 0                # src/hook/hook_menu.c:32:6
	jne	.LBB1_10
# %bb.9:
.Ltmp16:
	.loc	2 33 3 is_stmt 1                # src/hook/hook_menu.c:33:3
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
.Ltmp17:
.LBB1_10:
	.loc	2 34 2                          # src/hook/hook_menu.c:34:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.Lfunc_end1:
	.size	menu_mouse_hook, .Lfunc_end1-menu_mouse_hook
	.cfi_endproc
                                        # -- End function
	.globl	menu_key_hook                   # -- Begin function menu_key_hook
	.p2align	4, 0x90
	.type	menu_key_hook,@function
menu_key_hook:                          # @menu_key_hook
.Lfunc_begin2:
	.loc	2 38 0                          # src/hook/hook_menu.c:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp19:
	.loc	2 39 13 prologue_end            # src/hook/hook_menu.c:39:13
	cmpl	$65307, -4(%rbp)                # imm = 0xFF1B
.Ltmp20:
	.loc	2 39 6 is_stmt 0                # src/hook/hook_menu.c:39:6
	jne	.LBB2_2
# %bb.1:
.Ltmp21:
	.loc	2 40 13 is_stmt 1               # src/hook/hook_menu.c:40:13
	movq	-16(%rbp), %rdi
	.loc	2 40 3 is_stmt 0                # src/hook/hook_menu.c:40:3
	callq	exit_hook
.Ltmp22:
.LBB2_2:
	.loc	2 41 13 is_stmt 1               # src/hook/hook_menu.c:41:13
	cmpl	$65293, -4(%rbp)                # imm = 0xFF0D
.Ltmp23:
	.loc	2 41 6 is_stmt 0                # src/hook/hook_menu.c:41:6
	jne	.LBB2_4
# %bb.3:
.Ltmp24:
	.loc	2 43 18 is_stmt 1               # src/hook/hook_menu.c:43:18
	movq	-16(%rbp), %rdi
	.loc	2 43 3 is_stmt 0                # src/hook/hook_menu.c:43:3
	callq	set_level_loop
	.loc	2 44 3 is_stmt 1                # src/hook/hook_menu.c:44:3
	movq	-16(%rbp), %rax
	.loc	2 44 24 is_stmt 0               # src/hook/hook_menu.c:44:24
	movb	$1, (%rax)
	.loc	2 45 20 is_stmt 1               # src/hook/hook_menu.c:45:20
	movq	-16(%rbp), %rax
	.loc	2 45 27 is_stmt 0               # src/hook/hook_menu.c:45:27
	movq	16(%rax), %rdi
	.loc	2 45 36                         # src/hook/hook_menu.c:45:36
	movq	-16(%rbp), %rax
	.loc	2 45 43                         # src/hook/hook_menu.c:45:43
	movq	8(%rax), %rsi
	.loc	2 45 3                          # src/hook/hook_menu.c:45:3
	callq	mlx_clear_window
.Ltmp25:
.LBB2_4:
	.loc	2 47 2 is_stmt 1                # src/hook/hook_menu.c:47:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end2:
	.size	menu_key_hook, .Lfunc_end2-menu_key_hook
	.cfi_endproc
                                        # -- End function
	.globl	set_menu_loop                   # -- Begin function set_menu_loop
	.p2align	4, 0x90
	.type	set_menu_loop,@function
set_menu_loop:                          # @set_menu_loop
.Lfunc_begin3:
	.loc	2 51 0                          # src/hook/hook_menu.c:51:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp27:
	.loc	2 52 11 prologue_end            # src/hook/hook_menu.c:52:11
	movq	-8(%rbp), %rax
	.loc	2 52 18 is_stmt 0               # src/hook/hook_menu.c:52:18
	movq	8(%rax), %rdi
	.loc	2 53 36 is_stmt 1               # src/hook/hook_menu.c:53:36
	movq	-8(%rbp), %r8
	.loc	2 52 2                          # src/hook/hook_menu.c:52:2
	movl	$17, %esi
	movl	$131072, %edx                   # imm = 0x20000
	movabsq	$exit_hook, %rcx
	callq	mlx_hook
	.loc	2 54 16                         # src/hook/hook_menu.c:54:16
	movq	-8(%rbp), %rax
	.loc	2 54 23 is_stmt 0               # src/hook/hook_menu.c:54:23
	movq	16(%rax), %rdi
	.loc	2 54 49                         # src/hook/hook_menu.c:54:49
	movq	-8(%rbp), %rdx
	.loc	2 54 2                          # src/hook/hook_menu.c:54:2
	movabsq	$menu_loop_hook, %rsi
	callq	mlx_loop_hook
	.loc	2 55 11 is_stmt 1               # src/hook/hook_menu.c:55:11
	movq	-8(%rbp), %rax
	.loc	2 55 18 is_stmt 0               # src/hook/hook_menu.c:55:18
	movq	8(%rax), %rdi
	.loc	2 55 67                         # src/hook/hook_menu.c:55:67
	movq	-8(%rbp), %r8
	.loc	2 55 2                          # src/hook/hook_menu.c:55:2
	movl	$2, %esi
	movl	$1, %edx
	movabsq	$menu_key_hook, %rcx
	callq	mlx_hook
	.loc	2 56 17 is_stmt 1               # src/hook/hook_menu.c:56:17
	movq	-8(%rbp), %rax
	.loc	2 56 24 is_stmt 0               # src/hook/hook_menu.c:56:24
	movq	8(%rax), %rdi
	.loc	2 56 51                         # src/hook/hook_menu.c:56:51
	movq	-8(%rbp), %rdx
	.loc	2 56 2                          # src/hook/hook_menu.c:56:2
	movabsq	$menu_mouse_hook, %rsi
	callq	mlx_mouse_hook
	.loc	2 57 1 is_stmt 1                # src/hook/hook_menu.c:57:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.Lfunc_end3:
	.size	set_menu_loop, .Lfunc_end3-set_menu_loop
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BUTTON 1\n"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"BUTTON 2\n"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"BUTTON 3\n"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"BUTTON 4\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"BUTTON 5\n"
	.size	.L.str.4, 10

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/hook/../../include/cub3d_player.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x5ee DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x49:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x50:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	250                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x78:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	250                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x91:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string106                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	250                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa0:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	250                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string106                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	250                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xc7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd6:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xeb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	257                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xfa:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x101:0x5 DW_TAG_pointer_type
	.long	262                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x106:0xb DW_TAG_typedef
	.long	273                             # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x111:0x8d DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x119:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x125:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	443                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x131:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	443                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13d:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	444                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x149:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x155:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	824                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x161:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	946                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x16d:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x179:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x185:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1307                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x191:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x19e:0xb DW_TAG_typedef
	.long	425                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1a9:0xb DW_TAG_typedef
	.long	436                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1b4:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x1bb:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x1bc:0x5 DW_TAG_pointer_type
	.long	449                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c1:0xb DW_TAG_typedef
	.long	460                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1cc:0x75 DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1d4:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1e0:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1ec:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f8:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x204:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x210:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x21c:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	667                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x228:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	667                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x234:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	686                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x241:0xb DW_TAG_typedef
	.long	588                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x24c:0xb DW_TAG_typedef
	.long	599                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x257:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x263:0xb DW_TAG_typedef
	.long	622                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x26e:0x2d DW_TAG_structure_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x276:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x282:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x28e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	443                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x29b:0xc DW_TAG_array_type
	.long	414                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2a0:0x6 DW_TAG_subrange_type
	.long	679                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2a7:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x2ae:0x5 DW_TAG_pointer_type
	.long	691                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b3:0x5 DW_TAG_pointer_type
	.long	696                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2b8:0x7 DW_TAG_base_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2bf:0x5 DW_TAG_pointer_type
	.long	708                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2c4:0xb DW_TAG_typedef
	.long	719                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2cf:0x69 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2d7:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e3:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2ef:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2fb:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x307:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x313:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x31f:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x32b:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	686                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x338:0x5 DW_TAG_pointer_type
	.long	829                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x33d:0xb DW_TAG_typedef
	.long	840                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x348:0x15 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x350:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	861                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x35d:0x5 DW_TAG_pointer_type
	.long	866                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x362:0xb DW_TAG_typedef
	.long	877                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x36d:0x45 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x375:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	443                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x381:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x38d:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x399:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3a5:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3b2:0x5 DW_TAG_pointer_type
	.long	951                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3b7:0xb DW_TAG_typedef
	.long	962                             # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3c2:0x69 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3ca:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d6:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e2:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ee:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3fa:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x406:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x412:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x41e:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1074                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x42b:0x7 DW_TAG_base_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x432:0x5 DW_TAG_pointer_type
	.long	1079                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x437:0x5 DW_TAG_pointer_type
	.long	1084                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x43c:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x441:0x5 DW_TAG_pointer_type
	.long	1094                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x446:0xb DW_TAG_typedef
	.long	1105                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x451:0x21 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x459:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x465:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	250                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x472:0x5 DW_TAG_pointer_type
	.long	1143                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x477:0xb DW_TAG_typedef
	.long	1154                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x482:0x99 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x48a:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x496:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a2:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ae:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ba:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c6:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d2:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4de:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x502:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1067                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x51b:0x5 DW_TAG_pointer_type
	.long	1312                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x520:0xb DW_TAG_typedef
	.long	1323                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x52b:0x39 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x533:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	1380                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x53f:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1380                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x54b:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1380                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x557:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1380                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x564:0xb DW_TAG_typedef
	.long	1391                            # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x56f:0xb DW_TAG_typedef
	.long	1402                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x57a:0x7 DW_TAG_base_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x581:0x5 DW_TAG_pointer_type
	.long	1414                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x586:0xb DW_TAG_typedef
	.long	1425                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x591:0x51 DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x599:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5a5:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5b1:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	414                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5bd:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1506                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5c9:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1506                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5d5:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1506                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5e2:0xb DW_TAG_typedef
	.long	1517                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5ed:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/hook/hook_menu.c"          # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=59
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=98
.Linfo_string4:
	.asciz	"main_menu"                     # string offset=111
.Linfo_string5:
	.asciz	"level"                         # string offset=121
.Linfo_string6:
	.asciz	"stop"                          # string offset=127
.Linfo_string7:
	.asciz	"e_state_menu"                  # string offset=132
.Linfo_string8:
	.asciz	"menu_loop_hook"                # string offset=145
.Linfo_string9:
	.asciz	"int"                           # string offset=160
.Linfo_string10:
	.asciz	"menu_mouse_hook"               # string offset=164
.Linfo_string11:
	.asciz	"menu_key_hook"                 # string offset=180
.Linfo_string12:
	.asciz	"set_menu_loop"                 # string offset=194
.Linfo_string13:
	.asciz	"cub3d"                         # string offset=208
.Linfo_string14:
	.asciz	"program_state"                 # string offset=214
.Linfo_string15:
	.asciz	"unsigned char"                 # string offset=228
.Linfo_string16:
	.asciz	"__uint8_t"                     # string offset=242
.Linfo_string17:
	.asciz	"uint8_t"                       # string offset=252
.Linfo_string18:
	.asciz	"win_ptr"                       # string offset=260
.Linfo_string19:
	.asciz	"mlx_ptr"                       # string offset=268
.Linfo_string20:
	.asciz	"map"                           # string offset=276
.Linfo_string21:
	.asciz	"width"                         # string offset=280
.Linfo_string22:
	.asciz	"long unsigned int"             # string offset=286
.Linfo_string23:
	.asciz	"__uint64_t"                    # string offset=304
.Linfo_string24:
	.asciz	"uint64_t"                      # string offset=315
.Linfo_string25:
	.asciz	"height"                        # string offset=324
.Linfo_string26:
	.asciz	"no_texture"                    # string offset=331
.Linfo_string27:
	.asciz	"ptr"                           # string offset=342
.Linfo_string28:
	.asciz	"s_xpm"                         # string offset=346
.Linfo_string29:
	.asciz	"t_xpm"                         # string offset=352
.Linfo_string30:
	.asciz	"so_texture"                    # string offset=358
.Linfo_string31:
	.asciz	"we_texture"                    # string offset=369
.Linfo_string32:
	.asciz	"ea_texture"                    # string offset=380
.Linfo_string33:
	.asciz	"ceiling"                       # string offset=391
.Linfo_string34:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=399
.Linfo_string35:
	.asciz	"floor"                         # string offset=419
.Linfo_string36:
	.asciz	"data"                          # string offset=425
.Linfo_string37:
	.asciz	"char"                          # string offset=430
.Linfo_string38:
	.asciz	"s_map"                         # string offset=435
.Linfo_string39:
	.asciz	"t_map"                         # string offset=441
.Linfo_string40:
	.asciz	"file"                          # string offset=447
.Linfo_string41:
	.asciz	"fd"                            # string offset=452
.Linfo_string42:
	.asciz	"mask"                          # string offset=455
.Linfo_string43:
	.asciz	"offset"                        # string offset=460
.Linfo_string44:
	.asciz	"no_filename"                   # string offset=467
.Linfo_string45:
	.asciz	"so_filename"                   # string offset=479
.Linfo_string46:
	.asciz	"we_filename"                   # string offset=491
.Linfo_string47:
	.asciz	"ea_filename"                   # string offset=503
.Linfo_string48:
	.asciz	"s_file"                        # string offset=515
.Linfo_string49:
	.asciz	"t_file"                        # string offset=522
.Linfo_string50:
	.asciz	"scene"                         # string offset=529
.Linfo_string51:
	.asciz	"img"                           # string offset=535
.Linfo_string52:
	.asciz	"addr"                          # string offset=539
.Linfo_string53:
	.asciz	"endian"                        # string offset=544
.Linfo_string54:
	.asciz	"size_line"                     # string offset=551
.Linfo_string55:
	.asciz	"bpp"                           # string offset=561
.Linfo_string56:
	.asciz	"s_img"                         # string offset=565
.Linfo_string57:
	.asciz	"t_img"                         # string offset=571
.Linfo_string58:
	.asciz	"s_scene"                       # string offset=577
.Linfo_string59:
	.asciz	"t_scene"                       # string offset=585
.Linfo_string60:
	.asciz	"player"                        # string offset=593
.Linfo_string61:
	.asciz	"x0"                            # string offset=600
.Linfo_string62:
	.asciz	"y0"                            # string offset=603
.Linfo_string63:
	.asciz	"x1"                            # string offset=606
.Linfo_string64:
	.asciz	"y1"                            # string offset=609
.Linfo_string65:
	.asciz	"angle"                         # string offset=612
.Linfo_string66:
	.asciz	"double"                        # string offset=618
.Linfo_string67:
	.asciz	"pos_x"                         # string offset=625
.Linfo_string68:
	.asciz	"pos_y"                         # string offset=631
.Linfo_string69:
	.asciz	"vertex"                        # string offset=637
.Linfo_string70:
	.asciz	"s_player"                      # string offset=644
.Linfo_string71:
	.asciz	"t_player"                      # string offset=653
.Linfo_string72:
	.asciz	"window"                        # string offset=662
.Linfo_string73:
	.asciz	"s_window"                      # string offset=669
.Linfo_string74:
	.asciz	"t_window"                      # string offset=678
.Linfo_string75:
	.asciz	"raycast"                       # string offset=687
.Linfo_string76:
	.asciz	"posX"                          # string offset=695
.Linfo_string77:
	.asciz	"posY"                          # string offset=700
.Linfo_string78:
	.asciz	"dirX"                          # string offset=705
.Linfo_string79:
	.asciz	"dirY"                          # string offset=710
.Linfo_string80:
	.asciz	"planeX"                        # string offset=715
.Linfo_string81:
	.asciz	"planeY"                        # string offset=722
.Linfo_string82:
	.asciz	"sideX"                         # string offset=729
.Linfo_string83:
	.asciz	"sideY"                         # string offset=735
.Linfo_string84:
	.asciz	"deltaDistX"                    # string offset=741
.Linfo_string85:
	.asciz	"deltaDistY"                    # string offset=752
.Linfo_string86:
	.asciz	"time"                          # string offset=763
.Linfo_string87:
	.asciz	"oldtime"                       # string offset=768
.Linfo_string88:
	.asciz	"s_raycast"                     # string offset=776
.Linfo_string89:
	.asciz	"t_raycast"                     # string offset=786
.Linfo_string90:
	.asciz	"minimap"                       # string offset=796
.Linfo_string91:
	.asciz	"unsigned short"                # string offset=804
.Linfo_string92:
	.asciz	"__uint16_t"                    # string offset=819
.Linfo_string93:
	.asciz	"uint16_t"                      # string offset=830
.Linfo_string94:
	.asciz	"x_pos"                         # string offset=839
.Linfo_string95:
	.asciz	"y_pos"                         # string offset=845
.Linfo_string96:
	.asciz	"s_minimap"                     # string offset=851
.Linfo_string97:
	.asciz	"t_minimap"                     # string offset=861
.Linfo_string98:
	.asciz	"xpm"                           # string offset=871
.Linfo_string99:
	.asciz	"color"                         # string offset=875
.Linfo_string100:
	.asciz	"__uint32_t"                    # string offset=881
.Linfo_string101:
	.asciz	"uint32_t"                      # string offset=892
.Linfo_string102:
	.asciz	"s_main_menu"                   # string offset=901
.Linfo_string103:
	.asciz	"t_main_menu"                   # string offset=913
.Linfo_string104:
	.asciz	"s_cub3d"                       # string offset=925
.Linfo_string105:
	.asciz	"t_cub3d"                       # string offset=933
.Linfo_string106:
	.asciz	"keynum"                        # string offset=941
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym menu_loop_hook
	.addrsig_sym render_menu
	.addrsig_sym menu_mouse_hook
	.addrsig_sym printf
	.addrsig_sym menu_key_hook
	.addrsig_sym exit_hook
	.addrsig_sym set_level_loop
	.addrsig_sym mlx_clear_window
	.addrsig_sym mlx_hook
	.addrsig_sym mlx_loop_hook
	.addrsig_sym mlx_mouse_hook
	.section	.debug_line,"",@progbits
.Lline_table_start0:
