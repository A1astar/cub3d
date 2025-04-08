	.text
	.file	"render_player.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function render_player
.LCPI0_0:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	render_player
	.p2align	4, 0x90
	.type	render_player,@function
render_player:                          # @render_player
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/render_player.c"
	.loc	1 26 0                          # src/render/render_player.c:26:0
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
.Ltmp0:
	.loc	1 32 6 prologue_end             # src/render/render_player.c:32:6
	movq	-16(%rbp), %rax
	.loc	1 32 20 is_stmt 0               # src/render/render_player.c:32:20
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	32(%rax), %xmm0
	.loc	1 32 6                          # src/render/render_player.c:32:6
	cvttsd2si	%xmm0, %eax
	.loc	1 32 4                          # src/render/render_player.c:32:4
	movl	%eax, -24(%rbp)
	.loc	1 34 11 is_stmt 1               # src/render/render_player.c:34:11
	movl	-24(%rbp), %eax
	.loc	1 34 13 is_stmt 0               # src/render/render_player.c:34:13
	addl	$5, %eax
	.loc	1 34 9                          # src/render/render_player.c:34:9
	movl	%eax, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	.loc	1 35 9 is_stmt 1                # src/render/render_player.c:35:9
	movl	-24(%rbp), %eax
	.loc	1 35 11 is_stmt 0               # src/render/render_player.c:35:11
	cmpl	-32(%rbp), %eax
	.loc	1 35 2                          # src/render/render_player.c:35:2
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 37 7 is_stmt 1                # src/render/render_player.c:37:7
	movq	-16(%rbp), %rax
	.loc	1 37 21 is_stmt 0               # src/render/render_player.c:37:21
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	24(%rax), %xmm0
	.loc	1 37 7                          # src/render/render_player.c:37:7
	cvttsd2si	%xmm0, %eax
	.loc	1 37 5                          # src/render/render_player.c:37:5
	movl	%eax, -20(%rbp)
	.loc	1 40 12 is_stmt 1               # src/render/render_player.c:40:12
	movl	-20(%rbp), %eax
	.loc	1 40 14 is_stmt 0               # src/render/render_player.c:40:14
	addl	$5, %eax
	.loc	1 40 10                         # src/render/render_player.c:40:10
	movl	%eax, -28(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 10 is_stmt 1               # src/render/render_player.c:41:10
	movl	-20(%rbp), %eax
	.loc	1 41 12 is_stmt 0               # src/render/render_player.c:41:12
	cmpl	-28(%rbp), %eax
	.loc	1 41 3                          # src/render/render_player.c:41:3
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
.Ltmp2:
	.loc	1 43 15 is_stmt 1               # src/render/render_player.c:43:15
	movq	-8(%rbp), %rax
	.loc	1 43 22 is_stmt 0               # src/render/render_player.c:43:22
	movq	40(%rax), %rax
	.loc	1 43 29                         # src/render/render_player.c:43:29
	movq	(%rax), %rdi
	.loc	1 43 34                         # src/render/render_player.c:43:34
	movl	-20(%rbp), %esi
	.loc	1 43 37                         # src/render/render_player.c:43:37
	movl	-24(%rbp), %edx
	.loc	1 43 4                          # src/render/render_player.c:43:4
	movl	$15084331, %ecx                 # imm = 0xE62B2B
	callq	draw_pixel
	.loc	1 44 5 is_stmt 1                # src/render/render_player.c:44:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp3:
	.loc	1 41 3                          # src/render/render_player.c:41:3
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 46 4                          # src/render/render_player.c:46:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp4:
	.loc	1 35 2                          # src/render/render_player.c:35:2
	jmp	.LBB0_1
.LBB0_6:
	.loc	1 48 1                          # src/render/render_player.c:48:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	render_player, .Lfunc_end0-render_player
	.cfi_endproc
                                        # -- End function
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	4 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d.h"
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x58f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	148                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	844                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string100                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x69:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x77:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string102                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x85:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x94:0x5 DW_TAG_pointer_type
	.long	153                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x99:0xb DW_TAG_typedef
	.long	164                             # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xa4:0x8d DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xac:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	305                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb8:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xc4:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd0:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xdc:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xe8:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	722                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xf4:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	844                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x100:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x10c:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1036                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x118:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1205                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x124:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1307                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x131:0xb DW_TAG_typedef
	.long	316                             # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x13c:0xb DW_TAG_typedef
	.long	327                             # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x147:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x14e:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x14f:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x154:0xb DW_TAG_typedef
	.long	351                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x15f:0x75 DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x167:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	468                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x173:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	468                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x17f:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x18b:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x197:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1a3:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1af:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	565                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1bb:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	565                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1c7:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1d4:0xb DW_TAG_typedef
	.long	479                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1df:0xb DW_TAG_typedef
	.long	490                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1ea:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1f1:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1f6:0xb DW_TAG_typedef
	.long	513                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x201:0x2d DW_TAG_structure_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x209:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x215:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x221:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x22e:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x235:0xc DW_TAG_array_type
	.long	305                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x23a:0x6 DW_TAG_subrange_type
	.long	577                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x241:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	5                               # Abbrev [5] 0x248:0x5 DW_TAG_pointer_type
	.long	589                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x24d:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x252:0x7 DW_TAG_base_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x259:0x5 DW_TAG_pointer_type
	.long	606                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x25e:0xb DW_TAG_typedef
	.long	617                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x269:0x69 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x271:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x27d:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	305                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x289:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x295:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2a1:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2ad:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2b9:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2c5:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2d2:0x5 DW_TAG_pointer_type
	.long	727                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2d7:0xb DW_TAG_typedef
	.long	738                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2e2:0x15 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2ea:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	759                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2f7:0x5 DW_TAG_pointer_type
	.long	764                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2fc:0xb DW_TAG_typedef
	.long	775                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x307:0x45 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x30f:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x31b:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x327:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x333:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x33f:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x34c:0x5 DW_TAG_pointer_type
	.long	849                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x351:0xb DW_TAG_typedef
	.long	860                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x35c:0x69 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x364:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x370:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x37c:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x388:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x394:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	972                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3c5:0x7 DW_TAG_base_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x3cc:0x5 DW_TAG_pointer_type
	.long	977                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3d1:0x5 DW_TAG_pointer_type
	.long	982                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3d6:0x5 DW_TAG_pointer_type
	.long	305                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3db:0x5 DW_TAG_pointer_type
	.long	992                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3e0:0xb DW_TAG_typedef
	.long	1003                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3eb:0x21 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3f3:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ff:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x40c:0x5 DW_TAG_pointer_type
	.long	1041                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x411:0xb DW_TAG_typedef
	.long	1052                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x41c:0x99 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x424:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x430:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x43c:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x448:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x454:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x460:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x46c:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x478:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x484:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x490:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x49c:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4a8:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4b5:0x5 DW_TAG_pointer_type
	.long	1210                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4ba:0xb DW_TAG_typedef
	.long	1221                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4c5:0x39 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4cd:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1278                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4d9:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1278                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4e5:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1278                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4f1:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1278                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4fe:0xb DW_TAG_typedef
	.long	1289                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x509:0xb DW_TAG_typedef
	.long	1300                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x514:0x7 DW_TAG_base_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x51b:0x5 DW_TAG_pointer_type
	.long	1312                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x520:0xb DW_TAG_typedef
	.long	1323                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x52b:0x51 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x533:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x53f:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	305                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x54b:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	305                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x557:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1404                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x563:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1404                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x56f:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1404                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x57c:0xb DW_TAG_typedef
	.long	1415                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x587:0xb DW_TAG_typedef
	.long	1426                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x592:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/render/render_player.c"    # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=65
.Linfo_string3:
	.asciz	"render_player"                 # string offset=104
.Linfo_string4:
	.asciz	"cub3d"                         # string offset=118
.Linfo_string5:
	.asciz	"program_state"                 # string offset=124
.Linfo_string6:
	.asciz	"unsigned char"                 # string offset=138
.Linfo_string7:
	.asciz	"__uint8_t"                     # string offset=152
.Linfo_string8:
	.asciz	"uint8_t"                       # string offset=162
.Linfo_string9:
	.asciz	"win_ptr"                       # string offset=170
.Linfo_string10:
	.asciz	"mlx_ptr"                       # string offset=178
.Linfo_string11:
	.asciz	"map"                           # string offset=186
.Linfo_string12:
	.asciz	"width"                         # string offset=190
.Linfo_string13:
	.asciz	"long unsigned int"             # string offset=196
.Linfo_string14:
	.asciz	"__uint64_t"                    # string offset=214
.Linfo_string15:
	.asciz	"uint64_t"                      # string offset=225
.Linfo_string16:
	.asciz	"height"                        # string offset=234
.Linfo_string17:
	.asciz	"no_texture"                    # string offset=241
.Linfo_string18:
	.asciz	"int"                           # string offset=252
.Linfo_string19:
	.asciz	"ptr"                           # string offset=256
.Linfo_string20:
	.asciz	"s_xpm"                         # string offset=260
.Linfo_string21:
	.asciz	"t_xpm"                         # string offset=266
.Linfo_string22:
	.asciz	"so_texture"                    # string offset=272
.Linfo_string23:
	.asciz	"we_texture"                    # string offset=283
.Linfo_string24:
	.asciz	"ea_texture"                    # string offset=294
.Linfo_string25:
	.asciz	"ceiling"                       # string offset=305
.Linfo_string26:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=313
.Linfo_string27:
	.asciz	"floor"                         # string offset=333
.Linfo_string28:
	.asciz	"data"                          # string offset=339
.Linfo_string29:
	.asciz	"char"                          # string offset=344
.Linfo_string30:
	.asciz	"s_map"                         # string offset=349
.Linfo_string31:
	.asciz	"t_map"                         # string offset=355
.Linfo_string32:
	.asciz	"file"                          # string offset=361
.Linfo_string33:
	.asciz	"fd"                            # string offset=366
.Linfo_string34:
	.asciz	"mask"                          # string offset=369
.Linfo_string35:
	.asciz	"offset"                        # string offset=374
.Linfo_string36:
	.asciz	"no_filename"                   # string offset=381
.Linfo_string37:
	.asciz	"so_filename"                   # string offset=393
.Linfo_string38:
	.asciz	"we_filename"                   # string offset=405
.Linfo_string39:
	.asciz	"ea_filename"                   # string offset=417
.Linfo_string40:
	.asciz	"s_file"                        # string offset=429
.Linfo_string41:
	.asciz	"t_file"                        # string offset=436
.Linfo_string42:
	.asciz	"scene"                         # string offset=443
.Linfo_string43:
	.asciz	"img"                           # string offset=449
.Linfo_string44:
	.asciz	"addr"                          # string offset=453
.Linfo_string45:
	.asciz	"endian"                        # string offset=458
.Linfo_string46:
	.asciz	"size_line"                     # string offset=465
.Linfo_string47:
	.asciz	"bpp"                           # string offset=475
.Linfo_string48:
	.asciz	"s_img"                         # string offset=479
.Linfo_string49:
	.asciz	"t_img"                         # string offset=485
.Linfo_string50:
	.asciz	"s_scene"                       # string offset=491
.Linfo_string51:
	.asciz	"t_scene"                       # string offset=499
.Linfo_string52:
	.asciz	"player"                        # string offset=507
.Linfo_string53:
	.asciz	"x0"                            # string offset=514
.Linfo_string54:
	.asciz	"y0"                            # string offset=517
.Linfo_string55:
	.asciz	"x1"                            # string offset=520
.Linfo_string56:
	.asciz	"y1"                            # string offset=523
.Linfo_string57:
	.asciz	"angle"                         # string offset=526
.Linfo_string58:
	.asciz	"double"                        # string offset=532
.Linfo_string59:
	.asciz	"pos_x"                         # string offset=539
.Linfo_string60:
	.asciz	"pos_y"                         # string offset=545
.Linfo_string61:
	.asciz	"vertex"                        # string offset=551
.Linfo_string62:
	.asciz	"s_player"                      # string offset=558
.Linfo_string63:
	.asciz	"t_player"                      # string offset=567
.Linfo_string64:
	.asciz	"window"                        # string offset=576
.Linfo_string65:
	.asciz	"s_window"                      # string offset=583
.Linfo_string66:
	.asciz	"t_window"                      # string offset=592
.Linfo_string67:
	.asciz	"raycast"                       # string offset=601
.Linfo_string68:
	.asciz	"posX"                          # string offset=609
.Linfo_string69:
	.asciz	"posY"                          # string offset=614
.Linfo_string70:
	.asciz	"dirX"                          # string offset=619
.Linfo_string71:
	.asciz	"dirY"                          # string offset=624
.Linfo_string72:
	.asciz	"planeX"                        # string offset=629
.Linfo_string73:
	.asciz	"planeY"                        # string offset=636
.Linfo_string74:
	.asciz	"sideX"                         # string offset=643
.Linfo_string75:
	.asciz	"sideY"                         # string offset=649
.Linfo_string76:
	.asciz	"deltaDistX"                    # string offset=655
.Linfo_string77:
	.asciz	"deltaDistY"                    # string offset=666
.Linfo_string78:
	.asciz	"time"                          # string offset=677
.Linfo_string79:
	.asciz	"oldtime"                       # string offset=682
.Linfo_string80:
	.asciz	"s_raycast"                     # string offset=690
.Linfo_string81:
	.asciz	"t_raycast"                     # string offset=700
.Linfo_string82:
	.asciz	"minimap"                       # string offset=710
.Linfo_string83:
	.asciz	"unsigned short"                # string offset=718
.Linfo_string84:
	.asciz	"__uint16_t"                    # string offset=733
.Linfo_string85:
	.asciz	"uint16_t"                      # string offset=744
.Linfo_string86:
	.asciz	"x_pos"                         # string offset=753
.Linfo_string87:
	.asciz	"y_pos"                         # string offset=759
.Linfo_string88:
	.asciz	"s_minimap"                     # string offset=765
.Linfo_string89:
	.asciz	"t_minimap"                     # string offset=775
.Linfo_string90:
	.asciz	"main_menu"                     # string offset=785
.Linfo_string91:
	.asciz	"xpm"                           # string offset=795
.Linfo_string92:
	.asciz	"color"                         # string offset=799
.Linfo_string93:
	.asciz	"unsigned int"                  # string offset=805
.Linfo_string94:
	.asciz	"__uint32_t"                    # string offset=818
.Linfo_string95:
	.asciz	"uint32_t"                      # string offset=829
.Linfo_string96:
	.asciz	"s_main_menu"                   # string offset=838
.Linfo_string97:
	.asciz	"t_main_menu"                   # string offset=850
.Linfo_string98:
	.asciz	"s_cub3d"                       # string offset=862
.Linfo_string99:
	.asciz	"t_cub3d"                       # string offset=870
.Linfo_string100:
	.asciz	"x"                             # string offset=878
.Linfo_string101:
	.asciz	"y"                             # string offset=880
.Linfo_string102:
	.asciz	"x_size"                        # string offset=882
.Linfo_string103:
	.asciz	"y_size"                        # string offset=889
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym draw_pixel
	.section	.debug_line,"",@progbits
.Lline_table_start0:
