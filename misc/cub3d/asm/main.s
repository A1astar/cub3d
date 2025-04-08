	.text
	.file	"main.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/../include/cub3d.h"
	.globl	destroy_images                  # -- Begin function destroy_images
	.p2align	4, 0x90
	.type	destroy_images,@function
destroy_images:                         # @destroy_images
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/main.c"
	.loc	2 16 0                          # src/main.c:16:0
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
	.loc	2 17 6 prologue_end             # src/main.c:17:6
	movq	-8(%rbp), %rax
	.loc	2 17 13 is_stmt 0               # src/main.c:17:13
	movq	40(%rax), %rax
	.loc	2 17 20                         # src/main.c:17:20
	movq	(%rax), %rax
	.loc	2 17 6                          # src/main.c:17:6
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	2 17 6                          # src/main.c:17:6
	je	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 18 21 is_stmt 1               # src/main.c:18:21
	movq	-8(%rbp), %rax
	.loc	2 18 28 is_stmt 0               # src/main.c:18:28
	movq	16(%rax), %rdi
	.loc	2 18 37                         # src/main.c:18:37
	movq	-8(%rbp), %rax
	.loc	2 18 44                         # src/main.c:18:44
	movq	40(%rax), %rax
	.loc	2 18 51                         # src/main.c:18:51
	movq	(%rax), %rax
	.loc	2 18 56                         # src/main.c:18:56
	movq	(%rax), %rsi
	.loc	2 18 3                          # src/main.c:18:3
	callq	mlx_destroy_image
.Ltmp3:
.LBB0_2:
	.loc	2 19 6 is_stmt 1                # src/main.c:19:6
	movq	-8(%rbp), %rax
	.loc	2 19 13 is_stmt 0               # src/main.c:19:13
	movq	80(%rax), %rax
	.loc	2 19 24                         # src/main.c:19:24
	movq	(%rax), %rax
	.loc	2 19 6                          # src/main.c:19:6
	cmpq	$0, 8(%rax)
.Ltmp4:
	.loc	2 19 6                          # src/main.c:19:6
	je	.LBB0_4
# %bb.3:
.Ltmp5:
	.loc	2 20 21 is_stmt 1               # src/main.c:20:21
	movq	-8(%rbp), %rax
	.loc	2 20 28 is_stmt 0               # src/main.c:20:28
	movq	16(%rax), %rdi
	.loc	2 20 37                         # src/main.c:20:37
	movq	-8(%rbp), %rax
	.loc	2 20 44                         # src/main.c:20:44
	movq	80(%rax), %rax
	.loc	2 20 55                         # src/main.c:20:55
	movq	(%rax), %rax
	.loc	2 20 60                         # src/main.c:20:60
	movq	8(%rax), %rsi
	.loc	2 20 3                          # src/main.c:20:3
	callq	mlx_destroy_image
.Ltmp6:
.LBB0_4:
	.loc	2 21 2 is_stmt 1                # src/main.c:21:2
	movq	-8(%rbp), %rax
	.loc	2 21 9 is_stmt 0                # src/main.c:21:9
	movq	40(%rax), %rax
	.loc	2 21 16                         # src/main.c:21:16
	movq	(%rax), %rax
	.loc	2 21 25                         # src/main.c:21:25
	movq	$0, (%rax)
	.loc	2 22 2 is_stmt 1                # src/main.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 9 is_stmt 0                # src/main.c:22:9
	movq	80(%rax), %rax
	.loc	2 22 20                         # src/main.c:22:20
	movq	(%rax), %rax
	.loc	2 22 29                         # src/main.c:22:29
	movq	$0, 8(%rax)
	.loc	2 23 1 is_stmt 1                # src/main.c:23:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	destroy_images, .Lfunc_end0-destroy_images
	.cfi_endproc
                                        # -- End function
	.globl	exit_hook                       # -- Begin function exit_hook
	.p2align	4, 0x90
	.type	exit_hook,@function
exit_hook:                              # @exit_hook
.Lfunc_begin1:
	.loc	2 26 0                          # src/main.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	2 27 17 prologue_end            # src/main.c:27:17
	movq	-8(%rbp), %rdi
	.loc	2 27 2 is_stmt 0                # src/main.c:27:2
	callq	destroy_images
	.loc	2 28 21 is_stmt 1               # src/main.c:28:21
	movq	-8(%rbp), %rax
	.loc	2 28 28 is_stmt 0               # src/main.c:28:28
	movq	16(%rax), %rdi
	.loc	2 28 37                         # src/main.c:28:37
	movq	-8(%rbp), %rax
	.loc	2 28 44                         # src/main.c:28:44
	movq	8(%rax), %rsi
	.loc	2 28 2                          # src/main.c:28:2
	callq	mlx_destroy_window
	.loc	2 29 22 is_stmt 1               # src/main.c:29:22
	movq	-8(%rbp), %rax
	.loc	2 29 29 is_stmt 0               # src/main.c:29:29
	movq	16(%rax), %rdi
	.loc	2 29 2                          # src/main.c:29:2
	callq	mlx_destroy_display
	.loc	2 30 7 is_stmt 1                # src/main.c:30:7
	movq	-8(%rbp), %rax
	.loc	2 30 14 is_stmt 0               # src/main.c:30:14
	movq	16(%rax), %rdi
	.loc	2 30 2                          # src/main.c:30:2
	callq	free
	.loc	2 31 2 is_stmt 1                # src/main.c:31:2
	movq	-8(%rbp), %rax
	.loc	2 31 17 is_stmt 0               # src/main.c:31:17
	movq	$0, 16(%rax)
	.loc	2 32 16 is_stmt 1               # src/main.c:32:16
	movq	-8(%rbp), %rdi
	.loc	2 32 2 is_stmt 0                # src/main.c:32:2
	callq	clean_program
	.loc	2 33 2 is_stmt 1                # src/main.c:33:2
	xorl	%edi, %edi
	callq	exit
.Ltmp9:
.Lfunc_end1:
	.size	exit_hook, .Lfunc_end1-exit_hook
	.cfi_endproc
                                        # -- End function
	.globl	start_game_loop                 # -- Begin function start_game_loop
	.p2align	4, 0x90
	.type	start_game_loop,@function
start_game_loop:                        # @start_game_loop
.Lfunc_begin2:
	.loc	2 37 0                          # src/main.c:37:0
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
	.loc	2 38 11 prologue_end            # src/main.c:38:11
	movq	-8(%rbp), %rax
	.loc	2 38 18 is_stmt 0               # src/main.c:38:18
	movq	16(%rax), %rdi
	.loc	2 38 2                          # src/main.c:38:2
	callq	mlx_loop
	.loc	2 39 1 is_stmt 1                # src/main.c:39:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	start_game_loop, .Lfunc_end2-start_game_loop
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin3:
	.loc	2 42 0                          # src/main.c:42:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp12:
	.loc	2 45 11 prologue_end            # src/main.c:45:11
	cmpl	$2, -8(%rbp)
.Ltmp13:
	.loc	2 45 6 is_stmt 0                # src/main.c:45:6
	jne	.LBB3_2
# %bb.1:
.Ltmp14:
	.loc	2 47 22 is_stmt 1               # src/main.c:47:22
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	.loc	2 47 3 is_stmt 0                # src/main.c:47:3
	leaq	-104(%rbp), %rdi
	callq	init_cub3d
	.loc	2 48 24 is_stmt 1               # src/main.c:48:24
	movq	-80(%rbp), %rax
	.loc	2 48 29 is_stmt 0               # src/main.c:48:29
	movq	56(%rax), %rdi
	.loc	2 48 3                          # src/main.c:48:3
	callq	print_map_data
	.loc	2 49 3 is_stmt 1                # src/main.c:49:3
	leaq	-104(%rbp), %rdi
	callq	start_game_loop
	.loc	2 50 3                          # src/main.c:50:3
	movl	$0, -4(%rbp)
	jmp	.LBB3_3
.Ltmp15:
.LBB3_2:
	.loc	2 52 2                          # src/main.c:52:2
	leaq	-104(%rbp), %rdi
	movl	$2, %esi
	callq	print_error_then_exit_program
	.loc	2 53 2                          # src/main.c:53:2
	movl	$1, -4(%rbp)
.LBB3_3:
	.loc	2 54 1                          # src/main.c:54:1
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp16:
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/../include/cub3d_player.h"
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x62f DW_TAG_compile_unit
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
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xab:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	316                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd3:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xe8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xf7:0x45 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	316                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x110:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string116                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	316                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x11e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string117                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	751                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x12c:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x13c:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x143:0x5 DW_TAG_pointer_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x148:0xb DW_TAG_typedef
	.long	339                             # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x153:0x8d DW_TAG_structure_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x15b:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x167:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x173:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x17f:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x18b:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	768                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x197:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	889                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a3:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1011                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1af:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1154                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1bb:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1203                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c7:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1372                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d3:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1474                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1e0:0xb DW_TAG_typedef
	.long	491                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1eb:0xb DW_TAG_typedef
	.long	502                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1f6:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1fd:0x5 DW_TAG_pointer_type
	.long	514                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x202:0xb DW_TAG_typedef
	.long	525                             # DW_AT_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x20d:0x75 DW_TAG_structure_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x215:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	642                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x221:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	642                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x22d:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x239:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x245:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x251:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x25d:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	732                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x269:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	732                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x275:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x282:0xb DW_TAG_typedef
	.long	653                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x28d:0xb DW_TAG_typedef
	.long	664                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x298:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x29f:0x5 DW_TAG_pointer_type
	.long	676                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a4:0xb DW_TAG_typedef
	.long	687                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2af:0x2d DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2cf:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x2dc:0xc DW_TAG_array_type
	.long	480                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2e1:0x6 DW_TAG_subrange_type
	.long	744                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x2e8:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x2ef:0x5 DW_TAG_pointer_type
	.long	756                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f4:0x5 DW_TAG_pointer_type
	.long	761                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2f9:0x7 DW_TAG_base_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x300:0x5 DW_TAG_pointer_type
	.long	773                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x305:0xb DW_TAG_typedef
	.long	784                             # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x310:0x69 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x318:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x324:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x330:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x33c:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x348:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x354:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x360:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x36c:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x379:0x5 DW_TAG_pointer_type
	.long	894                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x37e:0xb DW_TAG_typedef
	.long	905                             # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x389:0x15 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x391:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	926                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x39e:0x5 DW_TAG_pointer_type
	.long	931                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3a3:0xb DW_TAG_typedef
	.long	942                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3ae:0x45 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3b6:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3c2:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ce:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3da:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e6:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3f3:0x5 DW_TAG_pointer_type
	.long	1016                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3f8:0xb DW_TAG_typedef
	.long	1027                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x403:0x69 DW_TAG_structure_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x40b:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x417:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x423:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x42f:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x43b:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x447:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x453:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x45f:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1139                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x46c:0x7 DW_TAG_base_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x473:0x5 DW_TAG_pointer_type
	.long	1144                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x478:0x5 DW_TAG_pointer_type
	.long	1149                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x47d:0x5 DW_TAG_pointer_type
	.long	480                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x482:0x5 DW_TAG_pointer_type
	.long	1159                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x487:0xb DW_TAG_typedef
	.long	1170                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x492:0x21 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x49a:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a6:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4b3:0x5 DW_TAG_pointer_type
	.long	1208                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4b8:0xb DW_TAG_typedef
	.long	1219                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4c3:0x99 DW_TAG_structure_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4cb:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4d7:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e3:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ef:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4fb:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x507:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x513:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x51f:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x52b:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x537:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x543:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x54f:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x55c:0x5 DW_TAG_pointer_type
	.long	1377                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x561:0xb DW_TAG_typedef
	.long	1388                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x56c:0x39 DW_TAG_structure_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x574:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1445                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x580:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	1445                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x58c:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	1445                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x598:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1445                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x5a5:0xb DW_TAG_typedef
	.long	1456                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5b0:0xb DW_TAG_typedef
	.long	1467                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5bb:0x7 DW_TAG_base_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x5c2:0x5 DW_TAG_pointer_type
	.long	1479                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5c7:0xb DW_TAG_typedef
	.long	1490                            # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5d2:0x51 DW_TAG_structure_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5da:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5e6:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5f2:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5fe:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1571                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x60a:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1571                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x616:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1571                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x623:0xb DW_TAG_typedef
	.long	1582                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x62e:0xb DW_TAG_typedef
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
	.asciz	"src/main.c"                    # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=49
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=88
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=101
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=113
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=125
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=137
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=154
.Linfo_string9:
	.asciz	"err_id"                        # string offset=167
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=174
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=183
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=193
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=205
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=216
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=231
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=252
.Linfo_string17:
	.asciz	"destroy_images"                # string offset=262
.Linfo_string18:
	.asciz	"exit_hook"                     # string offset=277
.Linfo_string19:
	.asciz	"int"                           # string offset=287
.Linfo_string20:
	.asciz	"start_game_loop"               # string offset=291
.Linfo_string21:
	.asciz	"main"                          # string offset=307
.Linfo_string22:
	.asciz	"cub3d"                         # string offset=312
.Linfo_string23:
	.asciz	"program_state"                 # string offset=318
.Linfo_string24:
	.asciz	"unsigned char"                 # string offset=332
.Linfo_string25:
	.asciz	"__uint8_t"                     # string offset=346
.Linfo_string26:
	.asciz	"uint8_t"                       # string offset=356
.Linfo_string27:
	.asciz	"win_ptr"                       # string offset=364
.Linfo_string28:
	.asciz	"mlx_ptr"                       # string offset=372
.Linfo_string29:
	.asciz	"map"                           # string offset=380
.Linfo_string30:
	.asciz	"width"                         # string offset=384
.Linfo_string31:
	.asciz	"long unsigned int"             # string offset=390
.Linfo_string32:
	.asciz	"__uint64_t"                    # string offset=408
.Linfo_string33:
	.asciz	"uint64_t"                      # string offset=419
.Linfo_string34:
	.asciz	"height"                        # string offset=428
.Linfo_string35:
	.asciz	"no_texture"                    # string offset=435
.Linfo_string36:
	.asciz	"ptr"                           # string offset=446
.Linfo_string37:
	.asciz	"s_xpm"                         # string offset=450
.Linfo_string38:
	.asciz	"t_xpm"                         # string offset=456
.Linfo_string39:
	.asciz	"so_texture"                    # string offset=462
.Linfo_string40:
	.asciz	"we_texture"                    # string offset=473
.Linfo_string41:
	.asciz	"ea_texture"                    # string offset=484
.Linfo_string42:
	.asciz	"ceiling"                       # string offset=495
.Linfo_string43:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=503
.Linfo_string44:
	.asciz	"floor"                         # string offset=523
.Linfo_string45:
	.asciz	"data"                          # string offset=529
.Linfo_string46:
	.asciz	"char"                          # string offset=534
.Linfo_string47:
	.asciz	"s_map"                         # string offset=539
.Linfo_string48:
	.asciz	"t_map"                         # string offset=545
.Linfo_string49:
	.asciz	"file"                          # string offset=551
.Linfo_string50:
	.asciz	"fd"                            # string offset=556
.Linfo_string51:
	.asciz	"mask"                          # string offset=559
.Linfo_string52:
	.asciz	"offset"                        # string offset=564
.Linfo_string53:
	.asciz	"no_filename"                   # string offset=571
.Linfo_string54:
	.asciz	"so_filename"                   # string offset=583
.Linfo_string55:
	.asciz	"we_filename"                   # string offset=595
.Linfo_string56:
	.asciz	"ea_filename"                   # string offset=607
.Linfo_string57:
	.asciz	"s_file"                        # string offset=619
.Linfo_string58:
	.asciz	"t_file"                        # string offset=626
.Linfo_string59:
	.asciz	"scene"                         # string offset=633
.Linfo_string60:
	.asciz	"img"                           # string offset=639
.Linfo_string61:
	.asciz	"addr"                          # string offset=643
.Linfo_string62:
	.asciz	"endian"                        # string offset=648
.Linfo_string63:
	.asciz	"size_line"                     # string offset=655
.Linfo_string64:
	.asciz	"bpp"                           # string offset=665
.Linfo_string65:
	.asciz	"s_img"                         # string offset=669
.Linfo_string66:
	.asciz	"t_img"                         # string offset=675
.Linfo_string67:
	.asciz	"s_scene"                       # string offset=681
.Linfo_string68:
	.asciz	"t_scene"                       # string offset=689
.Linfo_string69:
	.asciz	"player"                        # string offset=697
.Linfo_string70:
	.asciz	"x0"                            # string offset=704
.Linfo_string71:
	.asciz	"y0"                            # string offset=707
.Linfo_string72:
	.asciz	"x1"                            # string offset=710
.Linfo_string73:
	.asciz	"y1"                            # string offset=713
.Linfo_string74:
	.asciz	"angle"                         # string offset=716
.Linfo_string75:
	.asciz	"double"                        # string offset=722
.Linfo_string76:
	.asciz	"pos_x"                         # string offset=729
.Linfo_string77:
	.asciz	"pos_y"                         # string offset=735
.Linfo_string78:
	.asciz	"vertex"                        # string offset=741
.Linfo_string79:
	.asciz	"s_player"                      # string offset=748
.Linfo_string80:
	.asciz	"t_player"                      # string offset=757
.Linfo_string81:
	.asciz	"window"                        # string offset=766
.Linfo_string82:
	.asciz	"s_window"                      # string offset=773
.Linfo_string83:
	.asciz	"t_window"                      # string offset=782
.Linfo_string84:
	.asciz	"raycast"                       # string offset=791
.Linfo_string85:
	.asciz	"posX"                          # string offset=799
.Linfo_string86:
	.asciz	"posY"                          # string offset=804
.Linfo_string87:
	.asciz	"dirX"                          # string offset=809
.Linfo_string88:
	.asciz	"dirY"                          # string offset=814
.Linfo_string89:
	.asciz	"planeX"                        # string offset=819
.Linfo_string90:
	.asciz	"planeY"                        # string offset=826
.Linfo_string91:
	.asciz	"sideX"                         # string offset=833
.Linfo_string92:
	.asciz	"sideY"                         # string offset=839
.Linfo_string93:
	.asciz	"deltaDistX"                    # string offset=845
.Linfo_string94:
	.asciz	"deltaDistY"                    # string offset=856
.Linfo_string95:
	.asciz	"time"                          # string offset=867
.Linfo_string96:
	.asciz	"oldtime"                       # string offset=872
.Linfo_string97:
	.asciz	"s_raycast"                     # string offset=880
.Linfo_string98:
	.asciz	"t_raycast"                     # string offset=890
.Linfo_string99:
	.asciz	"minimap"                       # string offset=900
.Linfo_string100:
	.asciz	"unsigned short"                # string offset=908
.Linfo_string101:
	.asciz	"__uint16_t"                    # string offset=923
.Linfo_string102:
	.asciz	"uint16_t"                      # string offset=934
.Linfo_string103:
	.asciz	"x_pos"                         # string offset=943
.Linfo_string104:
	.asciz	"y_pos"                         # string offset=949
.Linfo_string105:
	.asciz	"s_minimap"                     # string offset=955
.Linfo_string106:
	.asciz	"t_minimap"                     # string offset=965
.Linfo_string107:
	.asciz	"main_menu"                     # string offset=975
.Linfo_string108:
	.asciz	"xpm"                           # string offset=985
.Linfo_string109:
	.asciz	"color"                         # string offset=989
.Linfo_string110:
	.asciz	"__uint32_t"                    # string offset=995
.Linfo_string111:
	.asciz	"uint32_t"                      # string offset=1006
.Linfo_string112:
	.asciz	"s_main_menu"                   # string offset=1015
.Linfo_string113:
	.asciz	"t_main_menu"                   # string offset=1027
.Linfo_string114:
	.asciz	"s_cub3d"                       # string offset=1039
.Linfo_string115:
	.asciz	"t_cub3d"                       # string offset=1047
.Linfo_string116:
	.asciz	"argc"                          # string offset=1055
.Linfo_string117:
	.asciz	"argv"                          # string offset=1060
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym destroy_images
	.addrsig_sym mlx_destroy_image
	.addrsig_sym mlx_destroy_window
	.addrsig_sym mlx_destroy_display
	.addrsig_sym free
	.addrsig_sym clean_program
	.addrsig_sym exit
	.addrsig_sym start_game_loop
	.addrsig_sym mlx_loop
	.addrsig_sym init_cub3d
	.addrsig_sym print_map_data
	.addrsig_sym print_error_then_exit_program
	.section	.debug_line,"",@progbits
.Lline_table_start0:
