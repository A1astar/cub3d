	.text
	.file	"init_struct_attr_2.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/../../include/cub3d.h"
	.globl	init_minimap                    # -- Begin function init_minimap
	.p2align	4, 0x90
	.type	init_minimap,@function
init_minimap:                           # @init_minimap
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/init/init_struct_attr_2.c"
	.loc	2 16 0                          # src/init/init_struct_attr_2.c:16:0
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
	.loc	2 17 19 prologue_end            # src/init/init_struct_attr_2.c:17:19
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 17 2 is_stmt 0                # src/init/init_struct_attr_2.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 17                         # src/init/init_struct_attr_2.c:17:17
	movq	%rcx, 72(%rax)
.Ltmp1:
	.loc	2 18 7 is_stmt 1                # src/init/init_struct_attr_2.c:18:7
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
.Ltmp2:
	.loc	2 18 6 is_stmt 0                # src/init/init_struct_attr_2.c:18:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 19 33 is_stmt 1               # src/init/init_struct_attr_2.c:19:33
	movq	-8(%rbp), %rdi
	.loc	2 19 3 is_stmt 0                # src/init/init_struct_attr_2.c:19:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_2:
	.loc	2 21 27 is_stmt 1               # src/init/init_struct_attr_2.c:21:27
	movq	-8(%rbp), %rax
	.loc	2 21 34 is_stmt 0               # src/init/init_struct_attr_2.c:21:34
	movq	24(%rax), %rax
	.loc	2 21 39                         # src/init/init_struct_attr_2.c:21:39
	movq	8(%rax), %rax
	.loc	2 21 27                         # src/init/init_struct_attr_2.c:21:27
	movw	%ax, %cx
	.loc	2 21 2                          # src/init/init_struct_attr_2.c:21:2
	movq	-8(%rbp), %rax
	.loc	2 21 9                          # src/init/init_struct_attr_2.c:21:9
	movq	72(%rax), %rax
	.loc	2 21 25                         # src/init/init_struct_attr_2.c:21:25
	movw	%cx, (%rax)
	.loc	2 22 26 is_stmt 1               # src/init/init_struct_attr_2.c:22:26
	movq	-8(%rbp), %rax
	.loc	2 22 33 is_stmt 0               # src/init/init_struct_attr_2.c:22:33
	movq	24(%rax), %rax
	.loc	2 22 38                         # src/init/init_struct_attr_2.c:22:38
	movq	(%rax), %rax
	.loc	2 22 26                         # src/init/init_struct_attr_2.c:22:26
	movw	%ax, %cx
	.loc	2 22 2                          # src/init/init_struct_attr_2.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 9                          # src/init/init_struct_attr_2.c:22:9
	movq	72(%rax), %rax
	.loc	2 22 24                         # src/init/init_struct_attr_2.c:22:24
	movw	%cx, 2(%rax)
	.loc	2 23 26 is_stmt 1               # src/init/init_struct_attr_2.c:23:26
	movq	-8(%rbp), %rax
	.loc	2 23 33 is_stmt 0               # src/init/init_struct_attr_2.c:23:33
	movq	56(%rax), %rax
	.loc	2 23 41                         # src/init/init_struct_attr_2.c:23:41
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	.loc	2 23 49                         # src/init/init_struct_attr_2.c:23:49
	movq	-8(%rbp), %rax
	.loc	2 23 56                         # src/init/init_struct_attr_2.c:23:56
	movq	56(%rax), %rax
	.loc	2 23 64                         # src/init/init_struct_attr_2.c:23:64
	movl	4(%rax), %eax
	.loc	2 23 70                         # src/init/init_struct_attr_2.c:23:70
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	.loc	2 23 47                         # src/init/init_struct_attr_2.c:23:47
	subl	%ecx, %eax
	.loc	2 23 26                         # src/init/init_struct_attr_2.c:23:26
	movw	%ax, %cx
	.loc	2 23 2                          # src/init/init_struct_attr_2.c:23:2
	movq	-8(%rbp), %rax
	.loc	2 23 9                          # src/init/init_struct_attr_2.c:23:9
	movq	72(%rax), %rax
	.loc	2 23 24                         # src/init/init_struct_attr_2.c:23:24
	movw	%cx, 4(%rax)
	.loc	2 24 26 is_stmt 1               # src/init/init_struct_attr_2.c:24:26
	movq	-8(%rbp), %rax
	.loc	2 24 33 is_stmt 0               # src/init/init_struct_attr_2.c:24:33
	movq	56(%rax), %rax
	.loc	2 24 41                         # src/init/init_struct_attr_2.c:24:41
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	.loc	2 24 50                         # src/init/init_struct_attr_2.c:24:50
	movq	-8(%rbp), %rax
	.loc	2 24 57                         # src/init/init_struct_attr_2.c:24:57
	movq	56(%rax), %rax
	.loc	2 24 65                         # src/init/init_struct_attr_2.c:24:65
	movl	(%rax), %eax
	.loc	2 24 72                         # src/init/init_struct_attr_2.c:24:72
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-12(%rbp), %eax                 # 4-byte Reload
	.loc	2 24 48                         # src/init/init_struct_attr_2.c:24:48
	subl	%ecx, %eax
	.loc	2 24 26                         # src/init/init_struct_attr_2.c:24:26
	movw	%ax, %cx
	.loc	2 24 2                          # src/init/init_struct_attr_2.c:24:2
	movq	-8(%rbp), %rax
	.loc	2 24 9                          # src/init/init_struct_attr_2.c:24:9
	movq	72(%rax), %rax
	.loc	2 24 24                         # src/init/init_struct_attr_2.c:24:24
	movw	%cx, 6(%rax)
	.loc	2 27 1 is_stmt 1                # src/init/init_struct_attr_2.c:27:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	init_minimap, .Lfunc_end0-init_minimap
	.cfi_endproc
                                        # -- End function
	.globl	init_scene                      # -- Begin function init_scene
	.p2align	4, 0x90
	.type	init_scene,@function
init_scene:                             # @init_scene
.Lfunc_begin1:
	.loc	2 30 0                          # src/init/init_struct_attr_2.c:30:0
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
	.loc	2 31 17 prologue_end            # src/init/init_struct_attr_2.c:31:17
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 31 2 is_stmt 0                # src/init/init_struct_attr_2.c:31:2
	movq	-8(%rbp), %rax
	.loc	2 31 15                         # src/init/init_struct_attr_2.c:31:15
	movq	%rcx, 40(%rax)
.Ltmp7:
	.loc	2 32 7 is_stmt 1                # src/init/init_struct_attr_2.c:32:7
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
.Ltmp8:
	.loc	2 32 6 is_stmt 0                # src/init/init_struct_attr_2.c:32:6
	jne	.LBB1_2
# %bb.1:
.Ltmp9:
	.loc	2 33 33 is_stmt 1               # src/init/init_struct_attr_2.c:33:33
	movq	-8(%rbp), %rdi
	.loc	2 33 3 is_stmt 0                # src/init/init_struct_attr_2.c:33:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp10:
.LBB1_2:
	.loc	2 34 2 is_stmt 1                # src/init/init_struct_attr_2.c:34:2
	movq	-8(%rbp), %rax
	.loc	2 34 9 is_stmt 0                # src/init/init_struct_attr_2.c:34:9
	movq	40(%rax), %rax
	.loc	2 34 20                         # src/init/init_struct_attr_2.c:34:20
	movq	$0, (%rax)
	.loc	2 35 1 is_stmt 1                # src/init/init_struct_attr_2.c:35:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	init_scene, .Lfunc_end1-init_scene
	.cfi_endproc
                                        # -- End function
	.globl	init_raycast                    # -- Begin function init_raycast
	.p2align	4, 0x90
	.type	init_raycast,@function
init_raycast:                           # @init_raycast
.Lfunc_begin2:
	.loc	2 38 0                          # src/init/init_struct_attr_2.c:38:0
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
	.loc	2 39 19 prologue_end            # src/init/init_struct_attr_2.c:39:19
	movl	$96, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 39 2 is_stmt 0                # src/init/init_struct_attr_2.c:39:2
	movq	-8(%rbp), %rax
	.loc	2 39 17                         # src/init/init_struct_attr_2.c:39:17
	movq	%rcx, 64(%rax)
.Ltmp13:
	.loc	2 40 7 is_stmt 1                # src/init/init_struct_attr_2.c:40:7
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
.Ltmp14:
	.loc	2 40 6 is_stmt 0                # src/init/init_struct_attr_2.c:40:6
	jne	.LBB2_2
# %bb.1:
.Ltmp15:
	.loc	2 41 33 is_stmt 1               # src/init/init_struct_attr_2.c:41:33
	movq	-8(%rbp), %rdi
	.loc	2 41 3 is_stmt 0                # src/init/init_struct_attr_2.c:41:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp16:
.LBB2_2:
	.loc	2 42 1 is_stmt 1                # src/init/init_struct_attr_2.c:42:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	init_raycast, .Lfunc_end2-init_raycast
	.cfi_endproc
                                        # -- End function
	.globl	init_main_menu                  # -- Begin function init_main_menu
	.p2align	4, 0x90
	.type	init_main_menu,@function
init_main_menu:                         # @init_main_menu
.Lfunc_begin3:
	.loc	2 45 0                          # src/init/init_struct_attr_2.c:45:0
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
	.loc	2 46 21 prologue_end            # src/init/init_struct_attr_2.c:46:21
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 46 2 is_stmt 0                # src/init/init_struct_attr_2.c:46:2
	movq	-8(%rbp), %rax
	.loc	2 46 19                         # src/init/init_struct_attr_2.c:46:19
	movq	%rcx, 80(%rax)
.Ltmp19:
	.loc	2 47 7 is_stmt 1                # src/init/init_struct_attr_2.c:47:7
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
.Ltmp20:
	.loc	2 47 6 is_stmt 0                # src/init/init_struct_attr_2.c:47:6
	jne	.LBB3_2
# %bb.1:
.Ltmp21:
	.loc	2 48 33 is_stmt 1               # src/init/init_struct_attr_2.c:48:33
	movq	-8(%rbp), %rdi
	.loc	2 48 3 is_stmt 0                # src/init/init_struct_attr_2.c:48:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp22:
.LBB3_2:
	.loc	2 49 2 is_stmt 1                # src/init/init_struct_attr_2.c:49:2
	movq	-8(%rbp), %rax
	.loc	2 49 9 is_stmt 0                # src/init/init_struct_attr_2.c:49:9
	movq	80(%rax), %rax
	.loc	2 49 24                         # src/init/init_struct_attr_2.c:49:24
	movq	$0, (%rax)
	.loc	2 50 1 is_stmt 1                # src/init/init_struct_attr_2.c:50:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end3:
	.size	init_main_menu, .Lfunc_end3-init_main_menu
	.cfi_endproc
                                        # -- End function
	.globl	init_struct_attr_2              # -- Begin function init_struct_attr_2
	.p2align	4, 0x90
	.type	init_struct_attr_2,@function
init_struct_attr_2:                     # @init_struct_attr_2
.Lfunc_begin4:
	.loc	2 53 0                          # src/init/init_struct_attr_2.c:53:0
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
	.loc	2 54 15 prologue_end            # src/init/init_struct_attr_2.c:54:15
	movq	-8(%rbp), %rdi
	.loc	2 54 2 is_stmt 0                # src/init/init_struct_attr_2.c:54:2
	callq	init_minimap
	.loc	2 55 13 is_stmt 1               # src/init/init_struct_attr_2.c:55:13
	movq	-8(%rbp), %rdi
	.loc	2 55 2 is_stmt 0                # src/init/init_struct_attr_2.c:55:2
	callq	init_scene
	.loc	2 56 15 is_stmt 1               # src/init/init_struct_attr_2.c:56:15
	movq	-8(%rbp), %rdi
	.loc	2 56 2 is_stmt 0                # src/init/init_struct_attr_2.c:56:2
	callq	init_raycast
	.loc	2 57 17 is_stmt 1               # src/init/init_struct_attr_2.c:57:17
	movq	-8(%rbp), %rdi
	.loc	2 57 2 is_stmt 0                # src/init/init_struct_attr_2.c:57:2
	callq	init_main_menu
	.loc	2 58 1 is_stmt 1                # src/init/init_struct_attr_2.c:58:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end4:
	.size	init_struct_attr_2, .Lfunc_end4-init_struct_attr_2
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
	.byte	1                               # Abbrev [1] 0xb:0x62e DW_TAG_compile_unit
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
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xaa:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xbf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xce:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xe3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xf2:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x107:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x116:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x12b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x13a:0x5 DW_TAG_pointer_type
	.long	319                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x13f:0xb DW_TAG_typedef
	.long	330                             # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x14a:0x8d DW_TAG_structure_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x152:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x15e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16a:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x176:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	501                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x182:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x18e:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	888                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x19a:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1a6:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b2:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1202                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1be:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1371                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ca:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1473                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1d7:0xb DW_TAG_typedef
	.long	482                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1e2:0xb DW_TAG_typedef
	.long	493                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1ed:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x1f4:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x1f5:0x5 DW_TAG_pointer_type
	.long	506                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1fa:0xb DW_TAG_typedef
	.long	517                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x205:0x75 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x20d:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	634                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x219:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	634                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x225:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	663                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x231:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	663                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x23d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	663                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x249:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	663                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x255:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x261:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26d:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x27a:0xb DW_TAG_typedef
	.long	645                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x285:0xb DW_TAG_typedef
	.long	656                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x290:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x297:0x5 DW_TAG_pointer_type
	.long	668                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x29c:0xb DW_TAG_typedef
	.long	679                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2a7:0x2d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2af:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2bb:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c7:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2d4:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x2db:0xc DW_TAG_array_type
	.long	471                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2e0:0x6 DW_TAG_subrange_type
	.long	743                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x2e7:0x7 DW_TAG_base_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x2ee:0x5 DW_TAG_pointer_type
	.long	755                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2f3:0x5 DW_TAG_pointer_type
	.long	760                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2f8:0x7 DW_TAG_base_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2ff:0x5 DW_TAG_pointer_type
	.long	772                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x304:0xb DW_TAG_typedef
	.long	783                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x30f:0x69 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x317:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x323:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32f:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x33b:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x347:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x353:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35f:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x36b:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x378:0x5 DW_TAG_pointer_type
	.long	893                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x37d:0xb DW_TAG_typedef
	.long	904                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x388:0x15 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x390:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x39d:0x5 DW_TAG_pointer_type
	.long	930                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3a2:0xb DW_TAG_typedef
	.long	941                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3ad:0x45 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3b5:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c1:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3cd:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d9:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e5:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3f2:0x5 DW_TAG_pointer_type
	.long	1015                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f7:0xb DW_TAG_typedef
	.long	1026                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x402:0x69 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x40a:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x416:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x422:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x43a:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x446:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x452:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x46b:0x7 DW_TAG_base_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x472:0x5 DW_TAG_pointer_type
	.long	1143                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x477:0x5 DW_TAG_pointer_type
	.long	1148                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x47c:0x5 DW_TAG_pointer_type
	.long	471                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x481:0x5 DW_TAG_pointer_type
	.long	1158                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x486:0xb DW_TAG_typedef
	.long	1169                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x491:0x21 DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x499:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a5:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	724                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4b2:0x5 DW_TAG_pointer_type
	.long	1207                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b7:0xb DW_TAG_typedef
	.long	1218                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4c2:0x99 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4ca:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d6:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e2:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4ee:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4fa:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x506:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x512:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x51e:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x52a:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x536:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x542:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x54e:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x55b:0x5 DW_TAG_pointer_type
	.long	1376                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x560:0xb DW_TAG_typedef
	.long	1387                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x56b:0x39 DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x573:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1444                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x57f:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	1444                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58b:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1444                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x597:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1444                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5a4:0xb DW_TAG_typedef
	.long	1455                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5af:0xb DW_TAG_typedef
	.long	1466                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x5ba:0x7 DW_TAG_base_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x5c1:0x5 DW_TAG_pointer_type
	.long	1478                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5c6:0xb DW_TAG_typedef
	.long	1489                            # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5d1:0x51 DW_TAG_structure_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5d9:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	663                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5fd:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1570                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x609:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1570                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x615:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1570                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x622:0xb DW_TAG_typedef
	.long	1581                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x62d:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/init/init_struct_attr_2.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=68
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=107
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=120
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=132
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=144
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=156
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=173
.Linfo_string9:
	.asciz	"err_id"                        # string offset=186
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=193
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=202
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=212
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=224
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=235
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=250
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=271
.Linfo_string17:
	.asciz	"init_minimap"                  # string offset=281
.Linfo_string18:
	.asciz	"init_scene"                    # string offset=294
.Linfo_string19:
	.asciz	"init_raycast"                  # string offset=305
.Linfo_string20:
	.asciz	"init_main_menu"                # string offset=318
.Linfo_string21:
	.asciz	"init_struct_attr_2"            # string offset=333
.Linfo_string22:
	.asciz	"cub3d"                         # string offset=352
.Linfo_string23:
	.asciz	"program_state"                 # string offset=358
.Linfo_string24:
	.asciz	"unsigned char"                 # string offset=372
.Linfo_string25:
	.asciz	"__uint8_t"                     # string offset=386
.Linfo_string26:
	.asciz	"uint8_t"                       # string offset=396
.Linfo_string27:
	.asciz	"win_ptr"                       # string offset=404
.Linfo_string28:
	.asciz	"mlx_ptr"                       # string offset=412
.Linfo_string29:
	.asciz	"map"                           # string offset=420
.Linfo_string30:
	.asciz	"width"                         # string offset=424
.Linfo_string31:
	.asciz	"long unsigned int"             # string offset=430
.Linfo_string32:
	.asciz	"__uint64_t"                    # string offset=448
.Linfo_string33:
	.asciz	"uint64_t"                      # string offset=459
.Linfo_string34:
	.asciz	"height"                        # string offset=468
.Linfo_string35:
	.asciz	"no_texture"                    # string offset=475
.Linfo_string36:
	.asciz	"int"                           # string offset=486
.Linfo_string37:
	.asciz	"ptr"                           # string offset=490
.Linfo_string38:
	.asciz	"s_xpm"                         # string offset=494
.Linfo_string39:
	.asciz	"t_xpm"                         # string offset=500
.Linfo_string40:
	.asciz	"so_texture"                    # string offset=506
.Linfo_string41:
	.asciz	"we_texture"                    # string offset=517
.Linfo_string42:
	.asciz	"ea_texture"                    # string offset=528
.Linfo_string43:
	.asciz	"ceiling"                       # string offset=539
.Linfo_string44:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=547
.Linfo_string45:
	.asciz	"floor"                         # string offset=567
.Linfo_string46:
	.asciz	"data"                          # string offset=573
.Linfo_string47:
	.asciz	"char"                          # string offset=578
.Linfo_string48:
	.asciz	"s_map"                         # string offset=583
.Linfo_string49:
	.asciz	"t_map"                         # string offset=589
.Linfo_string50:
	.asciz	"file"                          # string offset=595
.Linfo_string51:
	.asciz	"fd"                            # string offset=600
.Linfo_string52:
	.asciz	"mask"                          # string offset=603
.Linfo_string53:
	.asciz	"offset"                        # string offset=608
.Linfo_string54:
	.asciz	"no_filename"                   # string offset=615
.Linfo_string55:
	.asciz	"so_filename"                   # string offset=627
.Linfo_string56:
	.asciz	"we_filename"                   # string offset=639
.Linfo_string57:
	.asciz	"ea_filename"                   # string offset=651
.Linfo_string58:
	.asciz	"s_file"                        # string offset=663
.Linfo_string59:
	.asciz	"t_file"                        # string offset=670
.Linfo_string60:
	.asciz	"scene"                         # string offset=677
.Linfo_string61:
	.asciz	"img"                           # string offset=683
.Linfo_string62:
	.asciz	"addr"                          # string offset=687
.Linfo_string63:
	.asciz	"endian"                        # string offset=692
.Linfo_string64:
	.asciz	"size_line"                     # string offset=699
.Linfo_string65:
	.asciz	"bpp"                           # string offset=709
.Linfo_string66:
	.asciz	"s_img"                         # string offset=713
.Linfo_string67:
	.asciz	"t_img"                         # string offset=719
.Linfo_string68:
	.asciz	"s_scene"                       # string offset=725
.Linfo_string69:
	.asciz	"t_scene"                       # string offset=733
.Linfo_string70:
	.asciz	"player"                        # string offset=741
.Linfo_string71:
	.asciz	"x0"                            # string offset=748
.Linfo_string72:
	.asciz	"y0"                            # string offset=751
.Linfo_string73:
	.asciz	"x1"                            # string offset=754
.Linfo_string74:
	.asciz	"y1"                            # string offset=757
.Linfo_string75:
	.asciz	"angle"                         # string offset=760
.Linfo_string76:
	.asciz	"double"                        # string offset=766
.Linfo_string77:
	.asciz	"pos_x"                         # string offset=773
.Linfo_string78:
	.asciz	"pos_y"                         # string offset=779
.Linfo_string79:
	.asciz	"vertex"                        # string offset=785
.Linfo_string80:
	.asciz	"s_player"                      # string offset=792
.Linfo_string81:
	.asciz	"t_player"                      # string offset=801
.Linfo_string82:
	.asciz	"window"                        # string offset=810
.Linfo_string83:
	.asciz	"s_window"                      # string offset=817
.Linfo_string84:
	.asciz	"t_window"                      # string offset=826
.Linfo_string85:
	.asciz	"raycast"                       # string offset=835
.Linfo_string86:
	.asciz	"posX"                          # string offset=843
.Linfo_string87:
	.asciz	"posY"                          # string offset=848
.Linfo_string88:
	.asciz	"dirX"                          # string offset=853
.Linfo_string89:
	.asciz	"dirY"                          # string offset=858
.Linfo_string90:
	.asciz	"planeX"                        # string offset=863
.Linfo_string91:
	.asciz	"planeY"                        # string offset=870
.Linfo_string92:
	.asciz	"sideX"                         # string offset=877
.Linfo_string93:
	.asciz	"sideY"                         # string offset=883
.Linfo_string94:
	.asciz	"deltaDistX"                    # string offset=889
.Linfo_string95:
	.asciz	"deltaDistY"                    # string offset=900
.Linfo_string96:
	.asciz	"time"                          # string offset=911
.Linfo_string97:
	.asciz	"oldtime"                       # string offset=916
.Linfo_string98:
	.asciz	"s_raycast"                     # string offset=924
.Linfo_string99:
	.asciz	"t_raycast"                     # string offset=934
.Linfo_string100:
	.asciz	"minimap"                       # string offset=944
.Linfo_string101:
	.asciz	"unsigned short"                # string offset=952
.Linfo_string102:
	.asciz	"__uint16_t"                    # string offset=967
.Linfo_string103:
	.asciz	"uint16_t"                      # string offset=978
.Linfo_string104:
	.asciz	"x_pos"                         # string offset=987
.Linfo_string105:
	.asciz	"y_pos"                         # string offset=993
.Linfo_string106:
	.asciz	"s_minimap"                     # string offset=999
.Linfo_string107:
	.asciz	"t_minimap"                     # string offset=1009
.Linfo_string108:
	.asciz	"main_menu"                     # string offset=1019
.Linfo_string109:
	.asciz	"xpm"                           # string offset=1029
.Linfo_string110:
	.asciz	"color"                         # string offset=1033
.Linfo_string111:
	.asciz	"__uint32_t"                    # string offset=1039
.Linfo_string112:
	.asciz	"uint32_t"                      # string offset=1050
.Linfo_string113:
	.asciz	"s_main_menu"                   # string offset=1059
.Linfo_string114:
	.asciz	"t_main_menu"                   # string offset=1071
.Linfo_string115:
	.asciz	"s_cub3d"                       # string offset=1083
.Linfo_string116:
	.asciz	"t_cub3d"                       # string offset=1091
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_minimap
	.addrsig_sym malloc
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym init_scene
	.addrsig_sym init_raycast
	.addrsig_sym init_main_menu
	.section	.debug_line,"",@progbits
.Lline_table_start0:
