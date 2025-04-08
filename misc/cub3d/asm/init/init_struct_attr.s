	.text
	.file	"init_struct_attr.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/../../include/cub3d.h"
	.globl	init_map                        # -- Begin function init_map
	.p2align	4, 0x90
	.type	init_map,@function
init_map:                               # @init_map
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/init_struct_attr.c"
	.loc	2 16 0                          # src/init/init_struct_attr.c:16:0
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
	.loc	2 17 15 prologue_end            # src/init/init_struct_attr.c:17:15
	movl	$64, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 17 2 is_stmt 0                # src/init/init_struct_attr.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 13                         # src/init/init_struct_attr.c:17:13
	movq	%rcx, 24(%rax)
.Ltmp1:
	.loc	2 18 7 is_stmt 1                # src/init/init_struct_attr.c:18:7
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
.Ltmp2:
	.loc	2 18 6 is_stmt 0                # src/init/init_struct_attr.c:18:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 19 33 is_stmt 1               # src/init/init_struct_attr.c:19:33
	movq	-8(%rbp), %rdi
	.loc	2 19 3 is_stmt 0                # src/init/init_struct_attr.c:19:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_2:
	.loc	2 20 2 is_stmt 1                # src/init/init_struct_attr.c:20:2
	movq	-8(%rbp), %rax
	.loc	2 20 9 is_stmt 0                # src/init/init_struct_attr.c:20:9
	movq	24(%rax), %rax
	.loc	2 20 25                         # src/init/init_struct_attr.c:20:25
	movq	$0, 16(%rax)
	.loc	2 21 2 is_stmt 1                # src/init/init_struct_attr.c:21:2
	movq	-8(%rbp), %rax
	.loc	2 21 9 is_stmt 0                # src/init/init_struct_attr.c:21:9
	movq	24(%rax), %rax
	.loc	2 21 25                         # src/init/init_struct_attr.c:21:25
	movq	$0, 24(%rax)
	.loc	2 22 2 is_stmt 1                # src/init/init_struct_attr.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 9 is_stmt 0                # src/init/init_struct_attr.c:22:9
	movq	24(%rax), %rax
	.loc	2 22 25                         # src/init/init_struct_attr.c:22:25
	movq	$0, 32(%rax)
	.loc	2 23 2 is_stmt 1                # src/init/init_struct_attr.c:23:2
	movq	-8(%rbp), %rax
	.loc	2 23 9 is_stmt 0                # src/init/init_struct_attr.c:23:9
	movq	24(%rax), %rax
	.loc	2 23 25                         # src/init/init_struct_attr.c:23:25
	movq	$0, 40(%rax)
	.loc	2 24 2 is_stmt 1                # src/init/init_struct_attr.c:24:2
	movq	-8(%rbp), %rax
	.loc	2 24 9 is_stmt 0                # src/init/init_struct_attr.c:24:9
	movq	24(%rax), %rax
	.loc	2 24 19                         # src/init/init_struct_attr.c:24:19
	movq	$0, 56(%rax)
	.loc	2 25 1 is_stmt 1                # src/init/init_struct_attr.c:25:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	init_map, .Lfunc_end0-init_map
	.cfi_endproc
                                        # -- End function
	.globl	init_file                       # -- Begin function init_file
	.p2align	4, 0x90
	.type	init_file,@function
init_file:                              # @init_file
.Lfunc_begin1:
	.loc	2 28 0                          # src/init/init_struct_attr.c:28:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp6:
	.loc	2 29 16 prologue_end            # src/init/init_struct_attr.c:29:16
	movl	$56, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 29 2 is_stmt 0                # src/init/init_struct_attr.c:29:2
	movq	-8(%rbp), %rax
	.loc	2 29 14                         # src/init/init_struct_attr.c:29:14
	movq	%rcx, 32(%rax)
.Ltmp7:
	.loc	2 30 7 is_stmt 1                # src/init/init_struct_attr.c:30:7
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
.Ltmp8:
	.loc	2 30 6 is_stmt 0                # src/init/init_struct_attr.c:30:6
	jne	.LBB1_2
# %bb.1:
.Ltmp9:
	.loc	2 31 33 is_stmt 1               # src/init/init_struct_attr.c:31:33
	movq	-8(%rbp), %rdi
	.loc	2 31 3 is_stmt 0                # src/init/init_struct_attr.c:31:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp10:
.LBB1_2:
	.loc	2 32 2 is_stmt 1                # src/init/init_struct_attr.c:32:2
	movq	-8(%rbp), %rax
	.loc	2 32 9 is_stmt 0                # src/init/init_struct_attr.c:32:9
	movq	32(%rax), %rax
	.loc	2 32 27                         # src/init/init_struct_attr.c:32:27
	movq	$0, 16(%rax)
	.loc	2 33 2 is_stmt 1                # src/init/init_struct_attr.c:33:2
	movq	-8(%rbp), %rax
	.loc	2 33 9 is_stmt 0                # src/init/init_struct_attr.c:33:9
	movq	32(%rax), %rax
	.loc	2 33 27                         # src/init/init_struct_attr.c:33:27
	movq	$0, 24(%rax)
	.loc	2 34 2 is_stmt 1                # src/init/init_struct_attr.c:34:2
	movq	-8(%rbp), %rax
	.loc	2 34 9 is_stmt 0                # src/init/init_struct_attr.c:34:9
	movq	32(%rax), %rax
	.loc	2 34 27                         # src/init/init_struct_attr.c:34:27
	movq	$0, 32(%rax)
	.loc	2 35 2 is_stmt 1                # src/init/init_struct_attr.c:35:2
	movq	-8(%rbp), %rax
	.loc	2 35 9 is_stmt 0                # src/init/init_struct_attr.c:35:9
	movq	32(%rax), %rax
	.loc	2 35 27                         # src/init/init_struct_attr.c:35:27
	movq	$0, 40(%rax)
	.loc	2 36 2 is_stmt 1                # src/init/init_struct_attr.c:36:2
	movq	-8(%rbp), %rax
	.loc	2 36 9 is_stmt 0                # src/init/init_struct_attr.c:36:9
	movq	32(%rax), %rax
	.loc	2 36 20                         # src/init/init_struct_attr.c:36:20
	movq	$0, 48(%rax)
	.loc	2 37 1 is_stmt 1                # src/init/init_struct_attr.c:37:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	init_file, .Lfunc_end1-init_file
	.cfi_endproc
                                        # -- End function
	.globl	init_player                     # -- Begin function init_player
	.p2align	4, 0x90
	.type	init_player,@function
init_player:                            # @init_player
.Lfunc_begin2:
	.loc	2 40 0                          # src/init/init_struct_attr.c:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp12:
	.loc	2 41 18 prologue_end            # src/init/init_struct_attr.c:41:18
	movl	$48, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 41 2 is_stmt 0                # src/init/init_struct_attr.c:41:2
	movq	-8(%rbp), %rax
	.loc	2 41 16                         # src/init/init_struct_attr.c:41:16
	movq	%rcx, 48(%rax)
.Ltmp13:
	.loc	2 42 7 is_stmt 1                # src/init/init_struct_attr.c:42:7
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
.Ltmp14:
	.loc	2 42 6 is_stmt 0                # src/init/init_struct_attr.c:42:6
	jne	.LBB2_2
# %bb.1:
.Ltmp15:
	.loc	2 43 33 is_stmt 1               # src/init/init_struct_attr.c:43:33
	movq	-8(%rbp), %rdi
	.loc	2 43 3 is_stmt 0                # src/init/init_struct_attr.c:43:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp16:
.LBB2_2:
	.loc	2 44 26 is_stmt 1               # src/init/init_struct_attr.c:44:26
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 44 2 is_stmt 0                # src/init/init_struct_attr.c:44:2
	movq	-8(%rbp), %rax
	.loc	2 44 9                          # src/init/init_struct_attr.c:44:9
	movq	48(%rax), %rax
	.loc	2 44 24                         # src/init/init_struct_attr.c:44:24
	movq	%rcx, 40(%rax)
	.loc	2 46 1 is_stmt 1                # src/init/init_struct_attr.c:46:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	init_player, .Lfunc_end2-init_player
	.cfi_endproc
                                        # -- End function
	.globl	init_window                     # -- Begin function init_window
	.p2align	4, 0x90
	.type	init_window,@function
init_window:                            # @init_window
.Lfunc_begin3:
	.loc	2 49 0                          # src/init/init_struct_attr.c:49:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp18:
	.loc	2 50 18 prologue_end            # src/init/init_struct_attr.c:50:18
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 50 2 is_stmt 0                # src/init/init_struct_attr.c:50:2
	movq	-8(%rbp), %rax
	.loc	2 50 16                         # src/init/init_struct_attr.c:50:16
	movq	%rcx, 56(%rax)
.Ltmp19:
	.loc	2 51 7 is_stmt 1                # src/init/init_struct_attr.c:51:7
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
.Ltmp20:
	.loc	2 51 6 is_stmt 0                # src/init/init_struct_attr.c:51:6
	jne	.LBB3_2
# %bb.1:
.Ltmp21:
	.loc	2 52 33 is_stmt 1               # src/init/init_struct_attr.c:52:33
	movq	-8(%rbp), %rdi
	.loc	2 52 3 is_stmt 0                # src/init/init_struct_attr.c:52:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp22:
.LBB3_2:
	.loc	2 53 1 is_stmt 1                # src/init/init_struct_attr.c:53:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end3:
	.size	init_window, .Lfunc_end3-init_window
	.cfi_endproc
                                        # -- End function
	.globl	init_struct_attr                # -- Begin function init_struct_attr
	.p2align	4, 0x90
	.type	init_struct_attr,@function
init_struct_attr:                       # @init_struct_attr
.Lfunc_begin4:
	.loc	2 56 0                          # src/init/init_struct_attr.c:56:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp24:
	.loc	2 57 2 prologue_end             # src/init/init_struct_attr.c:57:2
	movq	-8(%rbp), %rax
	.loc	2 57 23 is_stmt 0               # src/init/init_struct_attr.c:57:23
	movb	$0, (%rax)
	.loc	2 58 11 is_stmt 1               # src/init/init_struct_attr.c:58:11
	movq	-8(%rbp), %rdi
	.loc	2 58 2 is_stmt 0                # src/init/init_struct_attr.c:58:2
	callq	init_map
	.loc	2 59 12 is_stmt 1               # src/init/init_struct_attr.c:59:12
	movq	-8(%rbp), %rdi
	.loc	2 59 2 is_stmt 0                # src/init/init_struct_attr.c:59:2
	callq	init_file
	.loc	2 60 14 is_stmt 1               # src/init/init_struct_attr.c:60:14
	movq	-8(%rbp), %rdi
	.loc	2 60 2 is_stmt 0                # src/init/init_struct_attr.c:60:2
	callq	init_player
	.loc	2 61 14 is_stmt 1               # src/init/init_struct_attr.c:61:14
	movq	-8(%rbp), %rdi
	.loc	2 61 2 is_stmt 0                # src/init/init_struct_attr.c:61:2
	callq	init_window
	.loc	2 62 1 is_stmt 1                # src/init/init_struct_attr.c:62:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end4:
	.size	init_struct_attr, .Lfunc_end4-init_struct_attr
	.cfi_endproc
                                        # -- End function
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
	.byte	1                               # Abbrev [1] 0xb:0x64d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # Abbrev [2] 0x86:0x1f DW_TAG_enumeration_type
	.long	127                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa5:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xc9:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xde:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xed:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x102:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x111:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x126:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x135:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x14a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x159:0x5 DW_TAG_pointer_type
	.long	350                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x15e:0xb DW_TAG_typedef
	.long	361                             # DW_AT_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x169:0x8d DW_TAG_structure_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x171:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	502                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x17d:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	531                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x189:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	531                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x195:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	532                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1a1:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ad:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	919                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b9:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1041                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c5:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1184                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1d1:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1233                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1dd:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1402                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1e9:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1f6:0xb DW_TAG_typedef
	.long	513                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x201:0xb DW_TAG_typedef
	.long	524                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x20c:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x213:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x214:0x5 DW_TAG_pointer_type
	.long	537                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x219:0xb DW_TAG_typedef
	.long	548                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x224:0x75 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x22c:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	665                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x238:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	665                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x244:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x250:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x25c:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x268:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x274:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x280:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x28c:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	781                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x299:0xb DW_TAG_typedef
	.long	676                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2a4:0xb DW_TAG_typedef
	.long	687                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2af:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2b6:0x5 DW_TAG_pointer_type
	.long	699                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2bb:0xb DW_TAG_typedef
	.long	710                             # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2c6:0x2d DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2ce:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2da:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e6:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	531                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2f3:0x7 DW_TAG_base_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x2fa:0xc DW_TAG_array_type
	.long	502                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ff:0x6 DW_TAG_subrange_type
	.long	774                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x306:0x7 DW_TAG_base_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x30d:0x5 DW_TAG_pointer_type
	.long	786                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x312:0x5 DW_TAG_pointer_type
	.long	791                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x317:0x7 DW_TAG_base_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x31e:0x5 DW_TAG_pointer_type
	.long	803                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x323:0xb DW_TAG_typedef
	.long	814                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x32e:0x69 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x336:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x342:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	502                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x366:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x372:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37e:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x38a:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	781                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x397:0x5 DW_TAG_pointer_type
	.long	924                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x39c:0xb DW_TAG_typedef
	.long	935                             # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3a7:0x15 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	956                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3bc:0x5 DW_TAG_pointer_type
	.long	961                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3c1:0xb DW_TAG_typedef
	.long	972                             # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3cc:0x45 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	531                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f8:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x404:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x411:0x5 DW_TAG_pointer_type
	.long	1046                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x416:0xb DW_TAG_typedef
	.long	1057                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x421:0x69 DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x429:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x435:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x441:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x44d:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x459:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x465:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x471:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x47d:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1169                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x48a:0x7 DW_TAG_base_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x491:0x5 DW_TAG_pointer_type
	.long	1174                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x496:0x5 DW_TAG_pointer_type
	.long	1179                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x49b:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4a0:0x5 DW_TAG_pointer_type
	.long	1189                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4a5:0xb DW_TAG_typedef
	.long	1200                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4b0:0x21 DW_TAG_structure_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4b8:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4c4:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4d1:0x5 DW_TAG_pointer_type
	.long	1238                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4d6:0xb DW_TAG_typedef
	.long	1249                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4e1:0x99 DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x501:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x50d:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x519:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x525:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x531:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x53d:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x549:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x555:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x561:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x56d:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1162                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x57a:0x5 DW_TAG_pointer_type
	.long	1407                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x57f:0xb DW_TAG_typedef
	.long	1418                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x58a:0x39 DW_TAG_structure_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x592:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5aa:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5b6:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c3:0xb DW_TAG_typedef
	.long	1486                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5ce:0xb DW_TAG_typedef
	.long	1497                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5d9:0x7 DW_TAG_base_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x5e0:0x5 DW_TAG_pointer_type
	.long	1509                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5e5:0xb DW_TAG_typedef
	.long	1520                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5f0:0x51 DW_TAG_structure_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5f8:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x604:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	502                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x610:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	502                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x61c:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x628:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x634:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x641:0xb DW_TAG_typedef
	.long	1612                            # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x64c:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/init/init_struct_attr.c"   # string offset=38
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
	.asciz	"main_menu"                     # string offset=279
.Linfo_string18:
	.asciz	"level"                         # string offset=289
.Linfo_string19:
	.asciz	"stop"                          # string offset=295
.Linfo_string20:
	.asciz	"e_state_menu"                  # string offset=300
.Linfo_string21:
	.asciz	"init_map"                      # string offset=313
.Linfo_string22:
	.asciz	"init_file"                     # string offset=322
.Linfo_string23:
	.asciz	"init_player"                   # string offset=332
.Linfo_string24:
	.asciz	"init_window"                   # string offset=344
.Linfo_string25:
	.asciz	"init_struct_attr"              # string offset=356
.Linfo_string26:
	.asciz	"cub3d"                         # string offset=373
.Linfo_string27:
	.asciz	"program_state"                 # string offset=379
.Linfo_string28:
	.asciz	"unsigned char"                 # string offset=393
.Linfo_string29:
	.asciz	"__uint8_t"                     # string offset=407
.Linfo_string30:
	.asciz	"uint8_t"                       # string offset=417
.Linfo_string31:
	.asciz	"win_ptr"                       # string offset=425
.Linfo_string32:
	.asciz	"mlx_ptr"                       # string offset=433
.Linfo_string33:
	.asciz	"map"                           # string offset=441
.Linfo_string34:
	.asciz	"width"                         # string offset=445
.Linfo_string35:
	.asciz	"long unsigned int"             # string offset=451
.Linfo_string36:
	.asciz	"__uint64_t"                    # string offset=469
.Linfo_string37:
	.asciz	"uint64_t"                      # string offset=480
.Linfo_string38:
	.asciz	"height"                        # string offset=489
.Linfo_string39:
	.asciz	"no_texture"                    # string offset=496
.Linfo_string40:
	.asciz	"int"                           # string offset=507
.Linfo_string41:
	.asciz	"ptr"                           # string offset=511
.Linfo_string42:
	.asciz	"s_xpm"                         # string offset=515
.Linfo_string43:
	.asciz	"t_xpm"                         # string offset=521
.Linfo_string44:
	.asciz	"so_texture"                    # string offset=527
.Linfo_string45:
	.asciz	"we_texture"                    # string offset=538
.Linfo_string46:
	.asciz	"ea_texture"                    # string offset=549
.Linfo_string47:
	.asciz	"ceiling"                       # string offset=560
.Linfo_string48:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=568
.Linfo_string49:
	.asciz	"floor"                         # string offset=588
.Linfo_string50:
	.asciz	"data"                          # string offset=594
.Linfo_string51:
	.asciz	"char"                          # string offset=599
.Linfo_string52:
	.asciz	"s_map"                         # string offset=604
.Linfo_string53:
	.asciz	"t_map"                         # string offset=610
.Linfo_string54:
	.asciz	"file"                          # string offset=616
.Linfo_string55:
	.asciz	"fd"                            # string offset=621
.Linfo_string56:
	.asciz	"mask"                          # string offset=624
.Linfo_string57:
	.asciz	"offset"                        # string offset=629
.Linfo_string58:
	.asciz	"no_filename"                   # string offset=636
.Linfo_string59:
	.asciz	"so_filename"                   # string offset=648
.Linfo_string60:
	.asciz	"we_filename"                   # string offset=660
.Linfo_string61:
	.asciz	"ea_filename"                   # string offset=672
.Linfo_string62:
	.asciz	"s_file"                        # string offset=684
.Linfo_string63:
	.asciz	"t_file"                        # string offset=691
.Linfo_string64:
	.asciz	"scene"                         # string offset=698
.Linfo_string65:
	.asciz	"img"                           # string offset=704
.Linfo_string66:
	.asciz	"addr"                          # string offset=708
.Linfo_string67:
	.asciz	"endian"                        # string offset=713
.Linfo_string68:
	.asciz	"size_line"                     # string offset=720
.Linfo_string69:
	.asciz	"bpp"                           # string offset=730
.Linfo_string70:
	.asciz	"s_img"                         # string offset=734
.Linfo_string71:
	.asciz	"t_img"                         # string offset=740
.Linfo_string72:
	.asciz	"s_scene"                       # string offset=746
.Linfo_string73:
	.asciz	"t_scene"                       # string offset=754
.Linfo_string74:
	.asciz	"player"                        # string offset=762
.Linfo_string75:
	.asciz	"x0"                            # string offset=769
.Linfo_string76:
	.asciz	"y0"                            # string offset=772
.Linfo_string77:
	.asciz	"x1"                            # string offset=775
.Linfo_string78:
	.asciz	"y1"                            # string offset=778
.Linfo_string79:
	.asciz	"angle"                         # string offset=781
.Linfo_string80:
	.asciz	"double"                        # string offset=787
.Linfo_string81:
	.asciz	"pos_x"                         # string offset=794
.Linfo_string82:
	.asciz	"pos_y"                         # string offset=800
.Linfo_string83:
	.asciz	"vertex"                        # string offset=806
.Linfo_string84:
	.asciz	"s_player"                      # string offset=813
.Linfo_string85:
	.asciz	"t_player"                      # string offset=822
.Linfo_string86:
	.asciz	"window"                        # string offset=831
.Linfo_string87:
	.asciz	"s_window"                      # string offset=838
.Linfo_string88:
	.asciz	"t_window"                      # string offset=847
.Linfo_string89:
	.asciz	"raycast"                       # string offset=856
.Linfo_string90:
	.asciz	"posX"                          # string offset=864
.Linfo_string91:
	.asciz	"posY"                          # string offset=869
.Linfo_string92:
	.asciz	"dirX"                          # string offset=874
.Linfo_string93:
	.asciz	"dirY"                          # string offset=879
.Linfo_string94:
	.asciz	"planeX"                        # string offset=884
.Linfo_string95:
	.asciz	"planeY"                        # string offset=891
.Linfo_string96:
	.asciz	"sideX"                         # string offset=898
.Linfo_string97:
	.asciz	"sideY"                         # string offset=904
.Linfo_string98:
	.asciz	"deltaDistX"                    # string offset=910
.Linfo_string99:
	.asciz	"deltaDistY"                    # string offset=921
.Linfo_string100:
	.asciz	"time"                          # string offset=932
.Linfo_string101:
	.asciz	"oldtime"                       # string offset=937
.Linfo_string102:
	.asciz	"s_raycast"                     # string offset=945
.Linfo_string103:
	.asciz	"t_raycast"                     # string offset=955
.Linfo_string104:
	.asciz	"minimap"                       # string offset=965
.Linfo_string105:
	.asciz	"unsigned short"                # string offset=973
.Linfo_string106:
	.asciz	"__uint16_t"                    # string offset=988
.Linfo_string107:
	.asciz	"uint16_t"                      # string offset=999
.Linfo_string108:
	.asciz	"x_pos"                         # string offset=1008
.Linfo_string109:
	.asciz	"y_pos"                         # string offset=1014
.Linfo_string110:
	.asciz	"s_minimap"                     # string offset=1020
.Linfo_string111:
	.asciz	"t_minimap"                     # string offset=1030
.Linfo_string112:
	.asciz	"xpm"                           # string offset=1040
.Linfo_string113:
	.asciz	"color"                         # string offset=1044
.Linfo_string114:
	.asciz	"__uint32_t"                    # string offset=1050
.Linfo_string115:
	.asciz	"uint32_t"                      # string offset=1061
.Linfo_string116:
	.asciz	"s_main_menu"                   # string offset=1070
.Linfo_string117:
	.asciz	"t_main_menu"                   # string offset=1082
.Linfo_string118:
	.asciz	"s_cub3d"                       # string offset=1094
.Linfo_string119:
	.asciz	"t_cub3d"                       # string offset=1102
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_map
	.addrsig_sym malloc
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym init_file
	.addrsig_sym init_player
	.addrsig_sym init_window
	.section	.debug_line,"",@progbits
.Lline_table_start0:
