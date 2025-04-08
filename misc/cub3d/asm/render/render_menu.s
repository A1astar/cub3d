	.text
	.file	"render_menu.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d.h"
	.globl	render_grid                     # -- Begin function render_grid
	.p2align	4, 0x90
	.type	render_grid,@function
render_grid:                            # @render_grid
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/render_menu.c"
	.loc	2 36 0                          # src/render/render_menu.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	2 42 4 prologue_end             # src/render/render_menu.c:42:4
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	.loc	2 43 9                          # src/render/render_menu.c:43:9
	movl	-16(%rbp), %eax
	.loc	2 43 13 is_stmt 0               # src/render/render_menu.c:43:13
	movq	-8(%rbp), %rcx
	.loc	2 43 20                         # src/render/render_menu.c:43:20
	movq	56(%rcx), %rcx
	.loc	2 43 11                         # src/render/render_menu.c:43:11
	cmpl	(%rcx), %eax
	.loc	2 43 2                          # src/render/render_menu.c:43:2
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	2 45 5 is_stmt 1                # src/render/render_menu.c:45:5
	movl	$0, -12(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	.loc	2 46 10                         # src/render/render_menu.c:46:10
	movl	-12(%rbp), %eax
	.loc	2 46 14 is_stmt 0               # src/render/render_menu.c:46:14
	movq	-8(%rbp), %rcx
	.loc	2 46 21                         # src/render/render_menu.c:46:21
	movq	56(%rcx), %rcx
	.loc	2 46 12                         # src/render/render_menu.c:46:12
	cmpl	4(%rcx), %eax
	.loc	2 46 3                          # src/render/render_menu.c:46:3
	jge	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
.Ltmp2:
	.loc	2 48 13 is_stmt 1               # src/render/render_menu.c:48:13
	movl	-16(%rbp), %eax
	.loc	2 48 15 is_stmt 0               # src/render/render_menu.c:48:15
	addl	$20, %eax
	.loc	2 48 11                         # src/render/render_menu.c:48:11
	movl	%eax, -20(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	2 49 11 is_stmt 1               # src/render/render_menu.c:49:11
	movl	-16(%rbp), %eax
	.loc	2 49 13 is_stmt 0               # src/render/render_menu.c:49:13
	cmpl	-20(%rbp), %eax
	.loc	2 49 4                          # src/render/render_menu.c:49:4
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
.Ltmp3:
	.loc	2 51 16 is_stmt 1               # src/render/render_menu.c:51:16
	movq	-8(%rbp), %rax
	.loc	2 51 23 is_stmt 0               # src/render/render_menu.c:51:23
	movq	40(%rax), %rax
	.loc	2 51 30                         # src/render/render_menu.c:51:30
	movq	(%rax), %rdi
	.loc	2 51 35                         # src/render/render_menu.c:51:35
	movl	-12(%rbp), %esi
	.loc	2 51 38                         # src/render/render_menu.c:51:38
	movl	-16(%rbp), %edx
	.loc	2 51 5                          # src/render/render_menu.c:51:5
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	2 52 6 is_stmt 1                # src/render/render_menu.c:52:6
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.Ltmp4:
	.loc	2 49 4                          # src/render/render_menu.c:49:4
	jmp	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	.loc	2 54 6                          # src/render/render_menu.c:54:6
	movl	-16(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -16(%rbp)
	.loc	2 55 13                         # src/render/render_menu.c:55:13
	movl	-12(%rbp), %eax
	.loc	2 55 15 is_stmt 0               # src/render/render_menu.c:55:15
	addl	$20, %eax
	.loc	2 55 11                         # src/render/render_menu.c:55:11
	movl	%eax, -24(%rbp)
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	2 56 11 is_stmt 1               # src/render/render_menu.c:56:11
	movl	-12(%rbp), %eax
	.loc	2 56 13 is_stmt 0               # src/render/render_menu.c:56:13
	cmpl	-24(%rbp), %eax
	.loc	2 56 4                          # src/render/render_menu.c:56:4
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
.Ltmp5:
	.loc	2 58 16 is_stmt 1               # src/render/render_menu.c:58:16
	movq	-8(%rbp), %rax
	.loc	2 58 23 is_stmt 0               # src/render/render_menu.c:58:23
	movq	40(%rax), %rax
	.loc	2 58 30                         # src/render/render_menu.c:58:30
	movq	(%rax), %rdi
	.loc	2 58 35                         # src/render/render_menu.c:58:35
	movl	-12(%rbp), %esi
	.loc	2 58 38                         # src/render/render_menu.c:58:38
	movl	-16(%rbp), %edx
	.loc	2 58 5                          # src/render/render_menu.c:58:5
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	2 59 6 is_stmt 1                # src/render/render_menu.c:59:6
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp6:
	.loc	2 56 4                          # src/render/render_menu.c:56:4
	jmp	.LBB0_8
.Ltmp7:
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	.loc	2 46 3                          # src/render/render_menu.c:46:3
	jmp	.LBB0_3
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	.loc	2 62 5                          # src/render/render_menu.c:62:5
	movl	-16(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -16(%rbp)
.Ltmp8:
	.loc	2 43 2                          # src/render/render_menu.c:43:2
	jmp	.LBB0_1
.LBB0_12:
	.loc	2 64 26                         # src/render/render_menu.c:64:26
	movq	-8(%rbp), %rax
	.loc	2 64 33 is_stmt 0               # src/render/render_menu.c:64:33
	movq	16(%rax), %rdi
	.loc	2 64 42                         # src/render/render_menu.c:64:42
	movq	-8(%rbp), %rax
	.loc	2 64 49                         # src/render/render_menu.c:64:49
	movq	8(%rax), %rsi
	.loc	2 64 58                         # src/render/render_menu.c:64:58
	movq	-8(%rbp), %rax
	.loc	2 64 65                         # src/render/render_menu.c:64:65
	movq	40(%rax), %rax
	.loc	2 64 72                         # src/render/render_menu.c:64:72
	movq	(%rax), %rax
	.loc	2 64 77                         # src/render/render_menu.c:64:77
	movq	(%rax), %rdx
	.loc	2 64 2                          # src/render/render_menu.c:64:2
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	mlx_put_image_to_window
	.loc	2 65 1 is_stmt 1                # src/render/render_menu.c:65:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	render_grid, .Lfunc_end0-render_grid
	.cfi_endproc
                                        # -- End function
	.globl	render_menu                     # -- Begin function render_menu
	.p2align	4, 0x90
	.type	render_menu,@function
render_menu:                            # @render_menu
.Lfunc_begin1:
	.loc	2 68 0                          # src/render/render_menu.c:68:0
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
	.loc	2 69 18 prologue_end            # src/render/render_menu.c:69:18
	movq	-8(%rbp), %rax
	.loc	2 69 25 is_stmt 0               # src/render/render_menu.c:69:25
	movq	56(%rax), %rdi
	.loc	2 69 33                         # src/render/render_menu.c:69:33
	movq	-8(%rbp), %rax
	.loc	2 69 40                         # src/render/render_menu.c:69:40
	movq	40(%rax), %rsi
	.loc	2 69 2                          # src/render/render_menu.c:69:2
	callq	clean_scene_img
	.loc	2 70 14 is_stmt 1               # src/render/render_menu.c:70:14
	movq	-8(%rbp), %rdi
	.loc	2 70 2 is_stmt 0                # src/render/render_menu.c:70:2
	callq	render_grid
.Ltmp11:
	.loc	2 71 6 is_stmt 1                # src/render/render_menu.c:71:6
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc	2 71 27 is_stmt 0               # src/render/render_menu.c:71:27
	cmpl	$0, %eax
.Ltmp12:
	.loc	2 71 6                          # src/render/render_menu.c:71:6
	jne	.LBB1_2
# %bb.1:
.Ltmp13:
	.loc	2 72 27 is_stmt 1               # src/render/render_menu.c:72:27
	movq	-8(%rbp), %rax
	.loc	2 72 34 is_stmt 0               # src/render/render_menu.c:72:34
	movq	16(%rax), %rdi
	.loc	2 72 43                         # src/render/render_menu.c:72:43
	movq	-8(%rbp), %rax
	.loc	2 72 50                         # src/render/render_menu.c:72:50
	movq	8(%rax), %rsi
	.loc	2 72 59                         # src/render/render_menu.c:72:59
	movq	-8(%rbp), %rax
	.loc	2 72 66                         # src/render/render_menu.c:72:66
	movq	80(%rax), %rax
	.loc	2 72 77                         # src/render/render_menu.c:72:77
	movq	(%rax), %rax
	.loc	2 72 82                         # src/render/render_menu.c:72:82
	movq	8(%rax), %rdx
	.loc	2 73 4 is_stmt 1                # src/render/render_menu.c:73:4
	movq	-8(%rbp), %rax
	.loc	2 73 11 is_stmt 0               # src/render/render_menu.c:73:11
	movq	80(%rax), %rax
	.loc	2 73 22                         # src/render/render_menu.c:73:22
	movl	16(%rax), %ecx
	.loc	2 73 29                         # src/render/render_menu.c:73:29
	movq	-8(%rbp), %rax
	.loc	2 73 36                         # src/render/render_menu.c:73:36
	movq	80(%rax), %rax
	.loc	2 73 47                         # src/render/render_menu.c:73:47
	movl	20(%rax), %r8d
	.loc	2 72 3 is_stmt 1                # src/render/render_menu.c:72:3
	callq	mlx_put_image_to_window
.Ltmp14:
.LBB1_2:
	.loc	2 74 1                          # src/render/render_menu.c:74:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	render_menu, .Lfunc_end1-render_menu
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d_player.h"
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
	.byte	1                               # Abbrev [1] 0xb:0x5c4 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x50:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x65:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	208                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x73:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string104                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	618                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x81:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string105                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	618                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string106                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	618                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string107                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	618                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xac:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	208                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd0:0x5 DW_TAG_pointer_type
	.long	213                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xd5:0xb DW_TAG_typedef
	.long	224                             # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xe0:0x8d DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xe8:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xf4:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x100:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x10c:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	395                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x118:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x124:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x130:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	904                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13c:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1047                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x148:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1096                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x154:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1265                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x160:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	1367                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x16d:0xb DW_TAG_typedef
	.long	376                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x178:0xb DW_TAG_typedef
	.long	387                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x183:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x18a:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x18b:0x5 DW_TAG_pointer_type
	.long	400                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x190:0xb DW_TAG_typedef
	.long	411                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x19b:0x75 DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1a3:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1af:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1bb:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1c7:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1d3:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1df:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1eb:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	625                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	625                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x203:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	644                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x210:0xb DW_TAG_typedef
	.long	539                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x21b:0xb DW_TAG_typedef
	.long	550                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x226:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x22d:0x5 DW_TAG_pointer_type
	.long	562                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x232:0xb DW_TAG_typedef
	.long	573                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x23d:0x2d DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x245:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x251:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x25d:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x26a:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x271:0xc DW_TAG_array_type
	.long	365                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x276:0x6 DW_TAG_subrange_type
	.long	637                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x27d:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x284:0x5 DW_TAG_pointer_type
	.long	649                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x289:0x5 DW_TAG_pointer_type
	.long	654                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x28e:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x295:0x5 DW_TAG_pointer_type
	.long	666                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x29a:0xb DW_TAG_typedef
	.long	677                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2a5:0x69 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2ad:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b9:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2c5:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2d1:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	649                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2dd:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	649                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e9:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	649                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2f5:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	649                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x301:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	644                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x30e:0x5 DW_TAG_pointer_type
	.long	787                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x313:0xb DW_TAG_typedef
	.long	798                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x31e:0x15 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x326:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	819                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x333:0x5 DW_TAG_pointer_type
	.long	824                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x338:0xb DW_TAG_typedef
	.long	835                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x343:0x45 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x34b:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x357:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	649                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x363:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x36f:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x37b:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x388:0x5 DW_TAG_pointer_type
	.long	909                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x38d:0xb DW_TAG_typedef
	.long	920                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x398:0x69 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c4:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1032                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x401:0x7 DW_TAG_base_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x408:0x5 DW_TAG_pointer_type
	.long	1037                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x40d:0x5 DW_TAG_pointer_type
	.long	1042                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x412:0x5 DW_TAG_pointer_type
	.long	365                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x417:0x5 DW_TAG_pointer_type
	.long	1052                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x41c:0xb DW_TAG_typedef
	.long	1063                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x427:0x21 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x42f:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x43b:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x448:0x5 DW_TAG_pointer_type
	.long	1101                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x44d:0xb DW_TAG_typedef
	.long	1112                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x458:0x99 DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x460:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x46c:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x478:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x484:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x490:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x49c:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a8:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b4:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c0:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4cc:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d8:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4e4:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4f1:0x5 DW_TAG_pointer_type
	.long	1270                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4f6:0xb DW_TAG_typedef
	.long	1281                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x501:0x39 DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x509:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1338                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x515:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	1338                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x521:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1338                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x52d:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1338                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x53a:0xb DW_TAG_typedef
	.long	1349                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x545:0xb DW_TAG_typedef
	.long	1360                            # DW_AT_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x550:0x7 DW_TAG_base_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x557:0x5 DW_TAG_pointer_type
	.long	1372                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x55c:0xb DW_TAG_typedef
	.long	1383                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x567:0x51 DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x56f:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x57b:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x587:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x593:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5b8:0xb DW_TAG_typedef
	.long	1475                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5c3:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/render/render_menu.c"      # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=63
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=102
.Linfo_string4:
	.asciz	"main_menu"                     # string offset=115
.Linfo_string5:
	.asciz	"level"                         # string offset=125
.Linfo_string6:
	.asciz	"stop"                          # string offset=131
.Linfo_string7:
	.asciz	"e_state_menu"                  # string offset=136
.Linfo_string8:
	.asciz	"render_grid"                   # string offset=149
.Linfo_string9:
	.asciz	"render_menu"                   # string offset=161
.Linfo_string10:
	.asciz	"cub3d"                         # string offset=173
.Linfo_string11:
	.asciz	"program_state"                 # string offset=179
.Linfo_string12:
	.asciz	"unsigned char"                 # string offset=193
.Linfo_string13:
	.asciz	"__uint8_t"                     # string offset=207
.Linfo_string14:
	.asciz	"uint8_t"                       # string offset=217
.Linfo_string15:
	.asciz	"win_ptr"                       # string offset=225
.Linfo_string16:
	.asciz	"mlx_ptr"                       # string offset=233
.Linfo_string17:
	.asciz	"map"                           # string offset=241
.Linfo_string18:
	.asciz	"width"                         # string offset=245
.Linfo_string19:
	.asciz	"long unsigned int"             # string offset=251
.Linfo_string20:
	.asciz	"__uint64_t"                    # string offset=269
.Linfo_string21:
	.asciz	"uint64_t"                      # string offset=280
.Linfo_string22:
	.asciz	"height"                        # string offset=289
.Linfo_string23:
	.asciz	"no_texture"                    # string offset=296
.Linfo_string24:
	.asciz	"int"                           # string offset=307
.Linfo_string25:
	.asciz	"ptr"                           # string offset=311
.Linfo_string26:
	.asciz	"s_xpm"                         # string offset=315
.Linfo_string27:
	.asciz	"t_xpm"                         # string offset=321
.Linfo_string28:
	.asciz	"so_texture"                    # string offset=327
.Linfo_string29:
	.asciz	"we_texture"                    # string offset=338
.Linfo_string30:
	.asciz	"ea_texture"                    # string offset=349
.Linfo_string31:
	.asciz	"ceiling"                       # string offset=360
.Linfo_string32:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=368
.Linfo_string33:
	.asciz	"floor"                         # string offset=388
.Linfo_string34:
	.asciz	"data"                          # string offset=394
.Linfo_string35:
	.asciz	"char"                          # string offset=399
.Linfo_string36:
	.asciz	"s_map"                         # string offset=404
.Linfo_string37:
	.asciz	"t_map"                         # string offset=410
.Linfo_string38:
	.asciz	"file"                          # string offset=416
.Linfo_string39:
	.asciz	"fd"                            # string offset=421
.Linfo_string40:
	.asciz	"mask"                          # string offset=424
.Linfo_string41:
	.asciz	"offset"                        # string offset=429
.Linfo_string42:
	.asciz	"no_filename"                   # string offset=436
.Linfo_string43:
	.asciz	"so_filename"                   # string offset=448
.Linfo_string44:
	.asciz	"we_filename"                   # string offset=460
.Linfo_string45:
	.asciz	"ea_filename"                   # string offset=472
.Linfo_string46:
	.asciz	"s_file"                        # string offset=484
.Linfo_string47:
	.asciz	"t_file"                        # string offset=491
.Linfo_string48:
	.asciz	"scene"                         # string offset=498
.Linfo_string49:
	.asciz	"img"                           # string offset=504
.Linfo_string50:
	.asciz	"addr"                          # string offset=508
.Linfo_string51:
	.asciz	"endian"                        # string offset=513
.Linfo_string52:
	.asciz	"size_line"                     # string offset=520
.Linfo_string53:
	.asciz	"bpp"                           # string offset=530
.Linfo_string54:
	.asciz	"s_img"                         # string offset=534
.Linfo_string55:
	.asciz	"t_img"                         # string offset=540
.Linfo_string56:
	.asciz	"s_scene"                       # string offset=546
.Linfo_string57:
	.asciz	"t_scene"                       # string offset=554
.Linfo_string58:
	.asciz	"player"                        # string offset=562
.Linfo_string59:
	.asciz	"x0"                            # string offset=569
.Linfo_string60:
	.asciz	"y0"                            # string offset=572
.Linfo_string61:
	.asciz	"x1"                            # string offset=575
.Linfo_string62:
	.asciz	"y1"                            # string offset=578
.Linfo_string63:
	.asciz	"angle"                         # string offset=581
.Linfo_string64:
	.asciz	"double"                        # string offset=587
.Linfo_string65:
	.asciz	"pos_x"                         # string offset=594
.Linfo_string66:
	.asciz	"pos_y"                         # string offset=600
.Linfo_string67:
	.asciz	"vertex"                        # string offset=606
.Linfo_string68:
	.asciz	"s_player"                      # string offset=613
.Linfo_string69:
	.asciz	"t_player"                      # string offset=622
.Linfo_string70:
	.asciz	"window"                        # string offset=631
.Linfo_string71:
	.asciz	"s_window"                      # string offset=638
.Linfo_string72:
	.asciz	"t_window"                      # string offset=647
.Linfo_string73:
	.asciz	"raycast"                       # string offset=656
.Linfo_string74:
	.asciz	"posX"                          # string offset=664
.Linfo_string75:
	.asciz	"posY"                          # string offset=669
.Linfo_string76:
	.asciz	"dirX"                          # string offset=674
.Linfo_string77:
	.asciz	"dirY"                          # string offset=679
.Linfo_string78:
	.asciz	"planeX"                        # string offset=684
.Linfo_string79:
	.asciz	"planeY"                        # string offset=691
.Linfo_string80:
	.asciz	"sideX"                         # string offset=698
.Linfo_string81:
	.asciz	"sideY"                         # string offset=704
.Linfo_string82:
	.asciz	"deltaDistX"                    # string offset=710
.Linfo_string83:
	.asciz	"deltaDistY"                    # string offset=721
.Linfo_string84:
	.asciz	"time"                          # string offset=732
.Linfo_string85:
	.asciz	"oldtime"                       # string offset=737
.Linfo_string86:
	.asciz	"s_raycast"                     # string offset=745
.Linfo_string87:
	.asciz	"t_raycast"                     # string offset=755
.Linfo_string88:
	.asciz	"minimap"                       # string offset=765
.Linfo_string89:
	.asciz	"unsigned short"                # string offset=773
.Linfo_string90:
	.asciz	"__uint16_t"                    # string offset=788
.Linfo_string91:
	.asciz	"uint16_t"                      # string offset=799
.Linfo_string92:
	.asciz	"x_pos"                         # string offset=808
.Linfo_string93:
	.asciz	"y_pos"                         # string offset=814
.Linfo_string94:
	.asciz	"s_minimap"                     # string offset=820
.Linfo_string95:
	.asciz	"t_minimap"                     # string offset=830
.Linfo_string96:
	.asciz	"xpm"                           # string offset=840
.Linfo_string97:
	.asciz	"color"                         # string offset=844
.Linfo_string98:
	.asciz	"__uint32_t"                    # string offset=850
.Linfo_string99:
	.asciz	"uint32_t"                      # string offset=861
.Linfo_string100:
	.asciz	"s_main_menu"                   # string offset=870
.Linfo_string101:
	.asciz	"t_main_menu"                   # string offset=882
.Linfo_string102:
	.asciz	"s_cub3d"                       # string offset=894
.Linfo_string103:
	.asciz	"t_cub3d"                       # string offset=902
.Linfo_string104:
	.asciz	"x"                             # string offset=910
.Linfo_string105:
	.asciz	"y"                             # string offset=912
.Linfo_string106:
	.asciz	"y_size"                        # string offset=914
.Linfo_string107:
	.asciz	"x_size"                        # string offset=921
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym render_grid
	.addrsig_sym draw_pixel
	.addrsig_sym mlx_put_image_to_window
	.addrsig_sym clean_scene_img
	.section	.debug_line,"",@progbits
.Lline_table_start0:
