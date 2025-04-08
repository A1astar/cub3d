	.text
	.file	"hook_level.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/hook/../../include/cub3d.h"
	.globl	level_loop_hook                 # -- Begin function level_loop_hook
	.p2align	4, 0x90
	.type	level_loop_hook,@function
level_loop_hook:                        # @level_loop_hook
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/hook/hook_level.c"
	.loc	2 16 0                          # src/hook/hook_level.c:16:0
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
	.loc	2 18 15 prologue_end            # src/hook/hook_level.c:18:15
	movq	-8(%rbp), %rdi
	.loc	2 18 2 is_stmt 0                # src/hook/hook_level.c:18:2
	callq	render_level
	.loc	2 19 2 is_stmt 1                # src/hook/hook_level.c:19:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	level_loop_hook, .Lfunc_end0-level_loop_hook
	.cfi_endproc
                                        # -- End function
	.globl	level_mouse_hook                # -- Begin function level_mouse_hook
	.p2align	4, 0x90
	.type	level_mouse_hook,@function
level_mouse_hook:                       # @level_mouse_hook
.Lfunc_begin1:
	.loc	2 23 0                          # src/hook/hook_level.c:23:0
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
	.loc	2 24 13 prologue_end            # src/hook/hook_level.c:24:13
	cmpl	$1, -4(%rbp)
.Ltmp3:
	.loc	2 24 6 is_stmt 0                # src/hook/hook_level.c:24:6
	jne	.LBB1_2
# %bb.1:
.Ltmp4:
	.loc	2 25 3 is_stmt 1                # src/hook/hook_level.c:25:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
.Ltmp5:
.LBB1_2:
	.loc	2 26 13                         # src/hook/hook_level.c:26:13
	cmpl	$2, -4(%rbp)
.Ltmp6:
	.loc	2 26 6 is_stmt 0                # src/hook/hook_level.c:26:6
	jne	.LBB1_4
# %bb.3:
.Ltmp7:
	.loc	2 27 3 is_stmt 1                # src/hook/hook_level.c:27:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.Ltmp8:
.LBB1_4:
	.loc	2 28 13                         # src/hook/hook_level.c:28:13
	cmpl	$3, -4(%rbp)
.Ltmp9:
	.loc	2 28 6 is_stmt 0                # src/hook/hook_level.c:28:6
	jne	.LBB1_6
# %bb.5:
.Ltmp10:
	.loc	2 29 3 is_stmt 1                # src/hook/hook_level.c:29:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.Ltmp11:
.LBB1_6:
	.loc	2 30 13                         # src/hook/hook_level.c:30:13
	cmpl	$4, -4(%rbp)
.Ltmp12:
	.loc	2 30 6 is_stmt 0                # src/hook/hook_level.c:30:6
	jne	.LBB1_8
# %bb.7:
.Ltmp13:
	.loc	2 31 3 is_stmt 1                # src/hook/hook_level.c:31:3
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
.Ltmp14:
.LBB1_8:
	.loc	2 32 13                         # src/hook/hook_level.c:32:13
	cmpl	$5, -4(%rbp)
.Ltmp15:
	.loc	2 32 6 is_stmt 0                # src/hook/hook_level.c:32:6
	jne	.LBB1_10
# %bb.9:
.Ltmp16:
	.loc	2 33 3 is_stmt 1                # src/hook/hook_level.c:33:3
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
.Ltmp17:
.LBB1_10:
	.loc	2 34 2                          # src/hook/hook_level.c:34:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.Lfunc_end1:
	.size	level_mouse_hook, .Lfunc_end1-level_mouse_hook
	.cfi_endproc
                                        # -- End function
	.globl	is_player_event                 # -- Begin function is_player_event
	.p2align	4, 0x90
	.type	is_player_event,@function
is_player_event:                        # @is_player_event
.Lfunc_begin2:
	.loc	2 38 0                          # src/hook/hook_level.c:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp19:
	.loc	2 39 13 prologue_end            # src/hook/hook_level.c:39:13
	cmpl	$119, -8(%rbp)
	.loc	2 39 21 is_stmt 0               # src/hook/hook_level.c:39:21
	je	.LBB2_8
# %bb.1:
	.loc	2 39 31                         # src/hook/hook_level.c:39:31
	cmpl	$87, -8(%rbp)
	.loc	2 40 3 is_stmt 1                # src/hook/hook_level.c:40:3
	je	.LBB2_8
# %bb.2:
	.loc	2 40 13 is_stmt 0               # src/hook/hook_level.c:40:13
	cmpl	$97, -8(%rbp)
	.loc	2 40 21                         # src/hook/hook_level.c:40:21
	je	.LBB2_8
# %bb.3:
	.loc	2 40 31                         # src/hook/hook_level.c:40:31
	cmpl	$65, -8(%rbp)
	.loc	2 41 3 is_stmt 1                # src/hook/hook_level.c:41:3
	je	.LBB2_8
# %bb.4:
	.loc	2 41 13 is_stmt 0               # src/hook/hook_level.c:41:13
	cmpl	$115, -8(%rbp)
	.loc	2 41 21                         # src/hook/hook_level.c:41:21
	je	.LBB2_8
# %bb.5:
	.loc	2 41 31                         # src/hook/hook_level.c:41:31
	cmpl	$83, -8(%rbp)
	.loc	2 42 3 is_stmt 1                # src/hook/hook_level.c:42:3
	je	.LBB2_8
# %bb.6:
	.loc	2 42 13 is_stmt 0               # src/hook/hook_level.c:42:13
	cmpl	$100, -8(%rbp)
	.loc	2 42 21                         # src/hook/hook_level.c:42:21
	je	.LBB2_8
# %bb.7:
	.loc	2 42 31                         # src/hook/hook_level.c:42:31
	cmpl	$68, -8(%rbp)
.Ltmp20:
	.loc	2 39 6 is_stmt 1                # src/hook/hook_level.c:39:6
	jne	.LBB2_9
.LBB2_8:
.Ltmp21:
	.loc	2 43 3                          # src/hook/hook_level.c:43:3
	movb	$1, -1(%rbp)
	jmp	.LBB2_10
.Ltmp22:
.LBB2_9:
	.loc	2 44 2                          # src/hook/hook_level.c:44:2
	movb	$0, -1(%rbp)
.LBB2_10:
	.loc	2 45 1                          # src/hook/hook_level.c:45:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end2:
	.size	is_player_event, .Lfunc_end2-is_player_event
	.cfi_endproc
                                        # -- End function
	.globl	level_key_hook                  # -- Begin function level_key_hook
	.p2align	4, 0x90
	.type	level_key_hook,@function
level_key_hook:                         # @level_key_hook
.Lfunc_begin3:
	.loc	2 48 0                          # src/hook/hook_level.c:48:0
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
.Ltmp24:
	.loc	2 49 13 prologue_end            # src/hook/hook_level.c:49:13
	cmpl	$65307, -4(%rbp)                # imm = 0xFF1B
.Ltmp25:
	.loc	2 49 6 is_stmt 0                # src/hook/hook_level.c:49:6
	jne	.LBB3_2
# %bb.1:
.Ltmp26:
	.loc	2 50 13 is_stmt 1               # src/hook/hook_level.c:50:13
	movq	-16(%rbp), %rdi
	.loc	2 50 3 is_stmt 0                # src/hook/hook_level.c:50:3
	callq	exit_hook
.Ltmp27:
.LBB3_2:
	.loc	2 51 13 is_stmt 1               # src/hook/hook_level.c:51:13
	cmpl	$65293, -4(%rbp)                # imm = 0xFF0D
.Ltmp28:
	.loc	2 51 6 is_stmt 0                # src/hook/hook_level.c:51:6
	jne	.LBB3_4
# %bb.3:
.Ltmp29:
	.loc	2 53 17 is_stmt 1               # src/hook/hook_level.c:53:17
	movq	-16(%rbp), %rdi
	.loc	2 53 3 is_stmt 0                # src/hook/hook_level.c:53:3
	callq	set_menu_loop
	.loc	2 54 3 is_stmt 1                # src/hook/hook_level.c:54:3
	movq	-16(%rbp), %rax
	.loc	2 54 24 is_stmt 0               # src/hook/hook_level.c:54:24
	movb	$0, (%rax)
	.loc	2 55 20 is_stmt 1               # src/hook/hook_level.c:55:20
	movq	-16(%rbp), %rax
	.loc	2 55 27 is_stmt 0               # src/hook/hook_level.c:55:27
	movq	16(%rax), %rdi
	.loc	2 55 36                         # src/hook/hook_level.c:55:36
	movq	-16(%rbp), %rax
	.loc	2 55 43                         # src/hook/hook_level.c:55:43
	movq	8(%rax), %rsi
	.loc	2 55 3                          # src/hook/hook_level.c:55:3
	callq	mlx_clear_window
.Ltmp30:
.LBB3_4:
	.loc	2 57 22 is_stmt 1               # src/hook/hook_level.c:57:22
	movl	-4(%rbp), %edi
	.loc	2 57 6 is_stmt 0                # src/hook/hook_level.c:57:6
	callq	is_player_event
.Ltmp31:
	.loc	2 57 6                          # src/hook/hook_level.c:57:6
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_6
.LBB3_5:
.Ltmp32:
	.loc	2 58 16 is_stmt 1               # src/hook/hook_level.c:58:16
	movq	-16(%rbp), %rdi
	.loc	2 58 23 is_stmt 0               # src/hook/hook_level.c:58:23
	movq	-16(%rbp), %rax
	.loc	2 58 30                         # src/hook/hook_level.c:58:30
	movq	48(%rax), %rsi
	.loc	2 58 38                         # src/hook/hook_level.c:58:38
	movl	-4(%rbp), %edx
	.loc	2 58 3                          # src/hook/hook_level.c:58:3
	callq	player_event
.Ltmp33:
.LBB3_6:
	.loc	2 59 2 is_stmt 1                # src/hook/hook_level.c:59:2
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp34:
.Lfunc_end3:
	.size	level_key_hook, .Lfunc_end3-level_key_hook
	.cfi_endproc
                                        # -- End function
	.globl	set_level_loop                  # -- Begin function set_level_loop
	.p2align	4, 0x90
	.type	set_level_loop,@function
set_level_loop:                         # @set_level_loop
.Lfunc_begin4:
	.loc	2 63 0                          # src/hook/hook_level.c:63:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp35:
	.loc	2 64 11 prologue_end            # src/hook/hook_level.c:64:11
	movq	-8(%rbp), %rax
	.loc	2 64 18 is_stmt 0               # src/hook/hook_level.c:64:18
	movq	8(%rax), %rdi
	.loc	2 65 36 is_stmt 1               # src/hook/hook_level.c:65:36
	movq	-8(%rbp), %r8
	.loc	2 64 2                          # src/hook/hook_level.c:64:2
	movl	$17, %esi
	movl	$131072, %edx                   # imm = 0x20000
	movabsq	$exit_hook, %rcx
	callq	mlx_hook
	.loc	2 66 16                         # src/hook/hook_level.c:66:16
	movq	-8(%rbp), %rax
	.loc	2 66 23 is_stmt 0               # src/hook/hook_level.c:66:23
	movq	16(%rax), %rdi
	.loc	2 66 50                         # src/hook/hook_level.c:66:50
	movq	-8(%rbp), %rdx
	.loc	2 66 2                          # src/hook/hook_level.c:66:2
	movabsq	$level_loop_hook, %rsi
	callq	mlx_loop_hook
	.loc	2 67 11 is_stmt 1               # src/hook/hook_level.c:67:11
	movq	-8(%rbp), %rax
	.loc	2 67 18 is_stmt 0               # src/hook/hook_level.c:67:18
	movq	8(%rax), %rdi
	.loc	2 67 68                         # src/hook/hook_level.c:67:68
	movq	-8(%rbp), %r8
	.loc	2 67 2                          # src/hook/hook_level.c:67:2
	movl	$2, %esi
	movl	$1, %edx
	movabsq	$level_key_hook, %rcx
	callq	mlx_hook
	.loc	2 68 17 is_stmt 1               # src/hook/hook_level.c:68:17
	movq	-8(%rbp), %rax
	.loc	2 68 24 is_stmt 0               # src/hook/hook_level.c:68:24
	movq	8(%rax), %rdi
	.loc	2 68 52                         # src/hook/hook_level.c:68:52
	movq	-8(%rbp), %rdx
	.loc	2 68 2                          # src/hook/hook_level.c:68:2
	movabsq	$level_mouse_hook, %rsi
	callq	mlx_mouse_hook
	.loc	2 69 1 is_stmt 1                # src/hook/hook_level.c:69:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp36:
.Lfunc_end4:
	.size	set_level_loop, .Lfunc_end4-set_level_loop
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
	.byte	1                               # Abbrev [1] 0xb:0x61d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	290                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	304                             # DW_AT_type
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
	.long	290                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x91:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string108                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	290                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa0:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	297                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string108                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	290                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xc8:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	290                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xe1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string108                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	290                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xef:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	304                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xfe:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x113:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	304                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x122:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x129:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x130:0x5 DW_TAG_pointer_type
	.long	309                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x135:0xb DW_TAG_typedef
	.long	320                             # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x140:0x8d DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x148:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x154:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x160:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x16c:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x178:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x184:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	871                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x190:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x19c:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1a8:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1b4:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1354                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1c0:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1cd:0xb DW_TAG_typedef
	.long	472                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1d8:0xb DW_TAG_typedef
	.long	483                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1e3:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x1ea:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x1eb:0x5 DW_TAG_pointer_type
	.long	496                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1f0:0xb DW_TAG_typedef
	.long	507                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1fb:0x75 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x203:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	624                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	624                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	653                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x227:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	653                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x233:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	653                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x23f:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	653                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	714                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x257:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	714                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x263:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	733                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x270:0xb DW_TAG_typedef
	.long	635                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x27b:0xb DW_TAG_typedef
	.long	646                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x286:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x28d:0x5 DW_TAG_pointer_type
	.long	658                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x292:0xb DW_TAG_typedef
	.long	669                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x29d:0x2d DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a5:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b1:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2bd:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2ca:0xc DW_TAG_array_type
	.long	461                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2cf:0x6 DW_TAG_subrange_type
	.long	726                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2d6:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x2dd:0x5 DW_TAG_pointer_type
	.long	738                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2e2:0x5 DW_TAG_pointer_type
	.long	743                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2e7:0x7 DW_TAG_base_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2ee:0x5 DW_TAG_pointer_type
	.long	755                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2f3:0xb DW_TAG_typedef
	.long	766                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2fe:0x69 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x306:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x312:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x336:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x342:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	733                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x367:0x5 DW_TAG_pointer_type
	.long	876                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x36c:0xb DW_TAG_typedef
	.long	887                             # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x377:0x15 DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x37f:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	908                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x38c:0x5 DW_TAG_pointer_type
	.long	913                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x391:0xb DW_TAG_typedef
	.long	924                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x39c:0x45 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3a4:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	490                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b0:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3bc:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c8:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3e1:0x5 DW_TAG_pointer_type
	.long	998                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3e6:0xb DW_TAG_typedef
	.long	1009                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3f1:0x69 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3f9:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x405:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x411:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x41d:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x429:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x435:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x441:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x44d:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1121                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x45a:0x7 DW_TAG_base_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x461:0x5 DW_TAG_pointer_type
	.long	1126                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x466:0x5 DW_TAG_pointer_type
	.long	1131                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x46b:0x5 DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x470:0x5 DW_TAG_pointer_type
	.long	1141                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x475:0xb DW_TAG_typedef
	.long	1152                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x480:0x21 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x488:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x494:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4a1:0x5 DW_TAG_pointer_type
	.long	1190                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4a6:0xb DW_TAG_typedef
	.long	1201                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4b1:0x99 DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4b9:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c5:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x501:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x50d:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x519:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x525:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x531:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x53d:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1114                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x54a:0x5 DW_TAG_pointer_type
	.long	1359                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x54f:0xb DW_TAG_typedef
	.long	1370                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x55a:0x39 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x562:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x56e:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x57a:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x586:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x593:0xb DW_TAG_typedef
	.long	1438                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x59e:0xb DW_TAG_typedef
	.long	1449                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5a9:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x5b0:0x5 DW_TAG_pointer_type
	.long	1461                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5b5:0xb DW_TAG_typedef
	.long	1472                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5c0:0x51 DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5c8:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	653                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5d4:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5e0:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ec:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1553                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5f8:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1553                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x604:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1553                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x611:0xb DW_TAG_typedef
	.long	1564                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x61c:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/hook/hook_level.c"         # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=60
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=99
.Linfo_string4:
	.asciz	"main_menu"                     # string offset=112
.Linfo_string5:
	.asciz	"level"                         # string offset=122
.Linfo_string6:
	.asciz	"stop"                          # string offset=128
.Linfo_string7:
	.asciz	"e_state_menu"                  # string offset=133
.Linfo_string8:
	.asciz	"level_loop_hook"               # string offset=146
.Linfo_string9:
	.asciz	"int"                           # string offset=162
.Linfo_string10:
	.asciz	"level_mouse_hook"              # string offset=166
.Linfo_string11:
	.asciz	"is_player_event"               # string offset=183
.Linfo_string12:
	.asciz	"_Bool"                         # string offset=199
.Linfo_string13:
	.asciz	"level_key_hook"                # string offset=205
.Linfo_string14:
	.asciz	"set_level_loop"                # string offset=220
.Linfo_string15:
	.asciz	"cub3d"                         # string offset=235
.Linfo_string16:
	.asciz	"program_state"                 # string offset=241
.Linfo_string17:
	.asciz	"unsigned char"                 # string offset=255
.Linfo_string18:
	.asciz	"__uint8_t"                     # string offset=269
.Linfo_string19:
	.asciz	"uint8_t"                       # string offset=279
.Linfo_string20:
	.asciz	"win_ptr"                       # string offset=287
.Linfo_string21:
	.asciz	"mlx_ptr"                       # string offset=295
.Linfo_string22:
	.asciz	"map"                           # string offset=303
.Linfo_string23:
	.asciz	"width"                         # string offset=307
.Linfo_string24:
	.asciz	"long unsigned int"             # string offset=313
.Linfo_string25:
	.asciz	"__uint64_t"                    # string offset=331
.Linfo_string26:
	.asciz	"uint64_t"                      # string offset=342
.Linfo_string27:
	.asciz	"height"                        # string offset=351
.Linfo_string28:
	.asciz	"no_texture"                    # string offset=358
.Linfo_string29:
	.asciz	"ptr"                           # string offset=369
.Linfo_string30:
	.asciz	"s_xpm"                         # string offset=373
.Linfo_string31:
	.asciz	"t_xpm"                         # string offset=379
.Linfo_string32:
	.asciz	"so_texture"                    # string offset=385
.Linfo_string33:
	.asciz	"we_texture"                    # string offset=396
.Linfo_string34:
	.asciz	"ea_texture"                    # string offset=407
.Linfo_string35:
	.asciz	"ceiling"                       # string offset=418
.Linfo_string36:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=426
.Linfo_string37:
	.asciz	"floor"                         # string offset=446
.Linfo_string38:
	.asciz	"data"                          # string offset=452
.Linfo_string39:
	.asciz	"char"                          # string offset=457
.Linfo_string40:
	.asciz	"s_map"                         # string offset=462
.Linfo_string41:
	.asciz	"t_map"                         # string offset=468
.Linfo_string42:
	.asciz	"file"                          # string offset=474
.Linfo_string43:
	.asciz	"fd"                            # string offset=479
.Linfo_string44:
	.asciz	"mask"                          # string offset=482
.Linfo_string45:
	.asciz	"offset"                        # string offset=487
.Linfo_string46:
	.asciz	"no_filename"                   # string offset=494
.Linfo_string47:
	.asciz	"so_filename"                   # string offset=506
.Linfo_string48:
	.asciz	"we_filename"                   # string offset=518
.Linfo_string49:
	.asciz	"ea_filename"                   # string offset=530
.Linfo_string50:
	.asciz	"s_file"                        # string offset=542
.Linfo_string51:
	.asciz	"t_file"                        # string offset=549
.Linfo_string52:
	.asciz	"scene"                         # string offset=556
.Linfo_string53:
	.asciz	"img"                           # string offset=562
.Linfo_string54:
	.asciz	"addr"                          # string offset=566
.Linfo_string55:
	.asciz	"endian"                        # string offset=571
.Linfo_string56:
	.asciz	"size_line"                     # string offset=578
.Linfo_string57:
	.asciz	"bpp"                           # string offset=588
.Linfo_string58:
	.asciz	"s_img"                         # string offset=592
.Linfo_string59:
	.asciz	"t_img"                         # string offset=598
.Linfo_string60:
	.asciz	"s_scene"                       # string offset=604
.Linfo_string61:
	.asciz	"t_scene"                       # string offset=612
.Linfo_string62:
	.asciz	"player"                        # string offset=620
.Linfo_string63:
	.asciz	"x0"                            # string offset=627
.Linfo_string64:
	.asciz	"y0"                            # string offset=630
.Linfo_string65:
	.asciz	"x1"                            # string offset=633
.Linfo_string66:
	.asciz	"y1"                            # string offset=636
.Linfo_string67:
	.asciz	"angle"                         # string offset=639
.Linfo_string68:
	.asciz	"double"                        # string offset=645
.Linfo_string69:
	.asciz	"pos_x"                         # string offset=652
.Linfo_string70:
	.asciz	"pos_y"                         # string offset=658
.Linfo_string71:
	.asciz	"vertex"                        # string offset=664
.Linfo_string72:
	.asciz	"s_player"                      # string offset=671
.Linfo_string73:
	.asciz	"t_player"                      # string offset=680
.Linfo_string74:
	.asciz	"window"                        # string offset=689
.Linfo_string75:
	.asciz	"s_window"                      # string offset=696
.Linfo_string76:
	.asciz	"t_window"                      # string offset=705
.Linfo_string77:
	.asciz	"raycast"                       # string offset=714
.Linfo_string78:
	.asciz	"posX"                          # string offset=722
.Linfo_string79:
	.asciz	"posY"                          # string offset=727
.Linfo_string80:
	.asciz	"dirX"                          # string offset=732
.Linfo_string81:
	.asciz	"dirY"                          # string offset=737
.Linfo_string82:
	.asciz	"planeX"                        # string offset=742
.Linfo_string83:
	.asciz	"planeY"                        # string offset=749
.Linfo_string84:
	.asciz	"sideX"                         # string offset=756
.Linfo_string85:
	.asciz	"sideY"                         # string offset=762
.Linfo_string86:
	.asciz	"deltaDistX"                    # string offset=768
.Linfo_string87:
	.asciz	"deltaDistY"                    # string offset=779
.Linfo_string88:
	.asciz	"time"                          # string offset=790
.Linfo_string89:
	.asciz	"oldtime"                       # string offset=795
.Linfo_string90:
	.asciz	"s_raycast"                     # string offset=803
.Linfo_string91:
	.asciz	"t_raycast"                     # string offset=813
.Linfo_string92:
	.asciz	"minimap"                       # string offset=823
.Linfo_string93:
	.asciz	"unsigned short"                # string offset=831
.Linfo_string94:
	.asciz	"__uint16_t"                    # string offset=846
.Linfo_string95:
	.asciz	"uint16_t"                      # string offset=857
.Linfo_string96:
	.asciz	"x_pos"                         # string offset=866
.Linfo_string97:
	.asciz	"y_pos"                         # string offset=872
.Linfo_string98:
	.asciz	"s_minimap"                     # string offset=878
.Linfo_string99:
	.asciz	"t_minimap"                     # string offset=888
.Linfo_string100:
	.asciz	"xpm"                           # string offset=898
.Linfo_string101:
	.asciz	"color"                         # string offset=902
.Linfo_string102:
	.asciz	"__uint32_t"                    # string offset=908
.Linfo_string103:
	.asciz	"uint32_t"                      # string offset=919
.Linfo_string104:
	.asciz	"s_main_menu"                   # string offset=928
.Linfo_string105:
	.asciz	"t_main_menu"                   # string offset=940
.Linfo_string106:
	.asciz	"s_cub3d"                       # string offset=952
.Linfo_string107:
	.asciz	"t_cub3d"                       # string offset=960
.Linfo_string108:
	.asciz	"keynum"                        # string offset=968
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym level_loop_hook
	.addrsig_sym render_level
	.addrsig_sym level_mouse_hook
	.addrsig_sym printf
	.addrsig_sym is_player_event
	.addrsig_sym level_key_hook
	.addrsig_sym exit_hook
	.addrsig_sym set_menu_loop
	.addrsig_sym mlx_clear_window
	.addrsig_sym player_event
	.addrsig_sym mlx_hook
	.addrsig_sym mlx_loop_hook
	.addrsig_sym mlx_mouse_hook
	.section	.debug_line,"",@progbits
.Lline_table_start0:
