	.text
	.file	"render_level.c"
	.globl	render_level                    # -- Begin function render_level
	.p2align	4, 0x90
	.type	render_level,@function
render_level:                           # @render_level
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/render_level.c"
	.loc	1 16 0                          # src/render/render_level.c:16:0
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
	.loc	1 17 18 prologue_end            # src/render/render_level.c:17:18
	movq	-8(%rbp), %rax
	.loc	1 17 25 is_stmt 0               # src/render/render_level.c:17:25
	movq	56(%rax), %rdi
	.loc	1 17 33                         # src/render/render_level.c:17:33
	movq	-8(%rbp), %rax
	.loc	1 17 40                         # src/render/render_level.c:17:40
	movq	40(%rax), %rsi
	.loc	1 17 2                          # src/render/render_level.c:17:2
	callq	clean_scene_img
	.loc	1 18 17 is_stmt 1               # src/render/render_level.c:18:17
	movq	-8(%rbp), %rdi
	.loc	1 18 24 is_stmt 0               # src/render/render_level.c:18:24
	movq	-8(%rbp), %rax
	.loc	1 18 31                         # src/render/render_level.c:18:31
	movq	40(%rax), %rsi
	.loc	1 18 38                         # src/render/render_level.c:18:38
	movq	-8(%rbp), %rax
	.loc	1 18 45                         # src/render/render_level.c:18:45
	movq	72(%rax), %rdx
	.loc	1 18 2                          # src/render/render_level.c:18:2
	callq	render_minimap
	.loc	1 19 16 is_stmt 1               # src/render/render_level.c:19:16
	movq	-8(%rbp), %rdi
	.loc	1 19 23 is_stmt 0               # src/render/render_level.c:19:23
	movq	-8(%rbp), %rax
	.loc	1 19 30                         # src/render/render_level.c:19:30
	movq	48(%rax), %rsi
	.loc	1 19 2                          # src/render/render_level.c:19:2
	callq	render_player
	.loc	1 20 26 is_stmt 1               # src/render/render_level.c:20:26
	movq	-8(%rbp), %rax
	.loc	1 20 33 is_stmt 0               # src/render/render_level.c:20:33
	movq	16(%rax), %rdi
	.loc	1 20 42                         # src/render/render_level.c:20:42
	movq	-8(%rbp), %rax
	.loc	1 20 49                         # src/render/render_level.c:20:49
	movq	8(%rax), %rsi
	.loc	1 21 3 is_stmt 1                # src/render/render_level.c:21:3
	movq	-8(%rbp), %rax
	.loc	1 21 10 is_stmt 0               # src/render/render_level.c:21:10
	movq	40(%rax), %rax
	.loc	1 21 17                         # src/render/render_level.c:21:17
	movq	(%rax), %rax
	.loc	1 21 22                         # src/render/render_level.c:21:22
	movq	(%rax), %rdx
	.loc	1 21 27                         # src/render/render_level.c:21:27
	movq	-8(%rbp), %rax
	.loc	1 21 34                         # src/render/render_level.c:21:34
	movq	72(%rax), %rax
	.loc	1 21 27                         # src/render/render_level.c:21:27
	movzwl	4(%rax), %ecx
	.loc	1 21 50                         # src/render/render_level.c:21:50
	movq	-8(%rbp), %rax
	.loc	1 21 57                         # src/render/render_level.c:21:57
	movq	72(%rax), %rax
	.loc	1 21 50                         # src/render/render_level.c:21:50
	movzwl	6(%rax), %r8d
	.loc	1 20 2 is_stmt 1                # src/render/render_level.c:20:2
	callq	mlx_put_image_to_window
	.loc	1 22 1                          # src/render/render_level.c:22:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	render_level, .Lfunc_end0-render_level
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x549 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	78                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4e:0x5 DW_TAG_pointer_type
	.long	83                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x53:0xb DW_TAG_typedef
	.long	94                              # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5e:0x8d DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x66:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x72:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7e:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x8a:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	265                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x96:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	531                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xa2:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xae:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	774                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xba:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	917                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc6:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	966                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xd2:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1135                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xde:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1237                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xeb:0xb DW_TAG_typedef
	.long	246                             # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xf6:0xb DW_TAG_typedef
	.long	257                             # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x101:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x108:0x1 DW_TAG_pointer_type
	.byte	4                               # Abbrev [4] 0x109:0x5 DW_TAG_pointer_type
	.long	270                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x10e:0xb DW_TAG_typedef
	.long	281                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x119:0x75 DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x121:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	398                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x12d:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	398                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x139:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	427                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x145:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	427                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x151:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	427                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x15d:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	427                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x169:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x175:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x181:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x18e:0xb DW_TAG_typedef
	.long	409                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x199:0xb DW_TAG_typedef
	.long	420                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1a4:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x1ab:0x5 DW_TAG_pointer_type
	.long	432                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1b0:0xb DW_TAG_typedef
	.long	443                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1bb:0x2d DW_TAG_structure_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1c3:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1cf:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1db:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1e8:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1ef:0xc DW_TAG_array_type
	.long	235                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f4:0x6 DW_TAG_subrange_type
	.long	507                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1fb:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x202:0x5 DW_TAG_pointer_type
	.long	519                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x207:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20c:0x7 DW_TAG_base_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x213:0x5 DW_TAG_pointer_type
	.long	536                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x218:0xb DW_TAG_typedef
	.long	547                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x223:0x69 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x237:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x243:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x24f:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x25b:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x267:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x273:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x27f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x28c:0x5 DW_TAG_pointer_type
	.long	657                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x291:0xb DW_TAG_typedef
	.long	668                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x29c:0x15 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2a4:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2b1:0x5 DW_TAG_pointer_type
	.long	694                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2b6:0xb DW_TAG_typedef
	.long	705                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2c1:0x45 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2c9:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	519                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2f9:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x306:0x5 DW_TAG_pointer_type
	.long	779                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x30b:0xb DW_TAG_typedef
	.long	790                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x316:0x69 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x336:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x342:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x366:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x372:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x37f:0x7 DW_TAG_base_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x386:0x5 DW_TAG_pointer_type
	.long	907                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x38b:0x5 DW_TAG_pointer_type
	.long	912                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x390:0x5 DW_TAG_pointer_type
	.long	235                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x395:0x5 DW_TAG_pointer_type
	.long	922                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x39a:0xb DW_TAG_typedef
	.long	933                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x3a5:0x21 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3ad:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3b9:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x3c6:0x5 DW_TAG_pointer_type
	.long	971                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3cb:0xb DW_TAG_typedef
	.long	982                             # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x3d6:0x99 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3de:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3ea:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3f6:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x402:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x40e:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x41a:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x426:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x432:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x43e:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x44a:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x456:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x462:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x46f:0x5 DW_TAG_pointer_type
	.long	1140                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x474:0xb DW_TAG_typedef
	.long	1151                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x47f:0x39 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x487:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x493:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x49f:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4ab:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4b8:0xb DW_TAG_typedef
	.long	1219                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x4c3:0xb DW_TAG_typedef
	.long	1230                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4ce:0x7 DW_TAG_base_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x4d5:0x5 DW_TAG_pointer_type
	.long	1242                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4da:0xb DW_TAG_typedef
	.long	1253                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4e5:0x51 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4ed:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	427                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x4f9:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x505:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x511:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1334                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x51d:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1334                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x529:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1334                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x536:0xb DW_TAG_typedef
	.long	1345                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x541:0xb DW_TAG_typedef
	.long	1356                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x54c:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/render/render_level.c"     # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=64
.Linfo_string3:
	.asciz	"render_level"                  # string offset=103
.Linfo_string4:
	.asciz	"cub3d"                         # string offset=116
.Linfo_string5:
	.asciz	"program_state"                 # string offset=122
.Linfo_string6:
	.asciz	"unsigned char"                 # string offset=136
.Linfo_string7:
	.asciz	"__uint8_t"                     # string offset=150
.Linfo_string8:
	.asciz	"uint8_t"                       # string offset=160
.Linfo_string9:
	.asciz	"win_ptr"                       # string offset=168
.Linfo_string10:
	.asciz	"mlx_ptr"                       # string offset=176
.Linfo_string11:
	.asciz	"map"                           # string offset=184
.Linfo_string12:
	.asciz	"width"                         # string offset=188
.Linfo_string13:
	.asciz	"long unsigned int"             # string offset=194
.Linfo_string14:
	.asciz	"__uint64_t"                    # string offset=212
.Linfo_string15:
	.asciz	"uint64_t"                      # string offset=223
.Linfo_string16:
	.asciz	"height"                        # string offset=232
.Linfo_string17:
	.asciz	"no_texture"                    # string offset=239
.Linfo_string18:
	.asciz	"int"                           # string offset=250
.Linfo_string19:
	.asciz	"ptr"                           # string offset=254
.Linfo_string20:
	.asciz	"s_xpm"                         # string offset=258
.Linfo_string21:
	.asciz	"t_xpm"                         # string offset=264
.Linfo_string22:
	.asciz	"so_texture"                    # string offset=270
.Linfo_string23:
	.asciz	"we_texture"                    # string offset=281
.Linfo_string24:
	.asciz	"ea_texture"                    # string offset=292
.Linfo_string25:
	.asciz	"ceiling"                       # string offset=303
.Linfo_string26:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=311
.Linfo_string27:
	.asciz	"floor"                         # string offset=331
.Linfo_string28:
	.asciz	"data"                          # string offset=337
.Linfo_string29:
	.asciz	"char"                          # string offset=342
.Linfo_string30:
	.asciz	"s_map"                         # string offset=347
.Linfo_string31:
	.asciz	"t_map"                         # string offset=353
.Linfo_string32:
	.asciz	"file"                          # string offset=359
.Linfo_string33:
	.asciz	"fd"                            # string offset=364
.Linfo_string34:
	.asciz	"mask"                          # string offset=367
.Linfo_string35:
	.asciz	"offset"                        # string offset=372
.Linfo_string36:
	.asciz	"no_filename"                   # string offset=379
.Linfo_string37:
	.asciz	"so_filename"                   # string offset=391
.Linfo_string38:
	.asciz	"we_filename"                   # string offset=403
.Linfo_string39:
	.asciz	"ea_filename"                   # string offset=415
.Linfo_string40:
	.asciz	"s_file"                        # string offset=427
.Linfo_string41:
	.asciz	"t_file"                        # string offset=434
.Linfo_string42:
	.asciz	"scene"                         # string offset=441
.Linfo_string43:
	.asciz	"img"                           # string offset=447
.Linfo_string44:
	.asciz	"addr"                          # string offset=451
.Linfo_string45:
	.asciz	"endian"                        # string offset=456
.Linfo_string46:
	.asciz	"size_line"                     # string offset=463
.Linfo_string47:
	.asciz	"bpp"                           # string offset=473
.Linfo_string48:
	.asciz	"s_img"                         # string offset=477
.Linfo_string49:
	.asciz	"t_img"                         # string offset=483
.Linfo_string50:
	.asciz	"s_scene"                       # string offset=489
.Linfo_string51:
	.asciz	"t_scene"                       # string offset=497
.Linfo_string52:
	.asciz	"player"                        # string offset=505
.Linfo_string53:
	.asciz	"x0"                            # string offset=512
.Linfo_string54:
	.asciz	"y0"                            # string offset=515
.Linfo_string55:
	.asciz	"x1"                            # string offset=518
.Linfo_string56:
	.asciz	"y1"                            # string offset=521
.Linfo_string57:
	.asciz	"angle"                         # string offset=524
.Linfo_string58:
	.asciz	"double"                        # string offset=530
.Linfo_string59:
	.asciz	"pos_x"                         # string offset=537
.Linfo_string60:
	.asciz	"pos_y"                         # string offset=543
.Linfo_string61:
	.asciz	"vertex"                        # string offset=549
.Linfo_string62:
	.asciz	"s_player"                      # string offset=556
.Linfo_string63:
	.asciz	"t_player"                      # string offset=565
.Linfo_string64:
	.asciz	"window"                        # string offset=574
.Linfo_string65:
	.asciz	"s_window"                      # string offset=581
.Linfo_string66:
	.asciz	"t_window"                      # string offset=590
.Linfo_string67:
	.asciz	"raycast"                       # string offset=599
.Linfo_string68:
	.asciz	"posX"                          # string offset=607
.Linfo_string69:
	.asciz	"posY"                          # string offset=612
.Linfo_string70:
	.asciz	"dirX"                          # string offset=617
.Linfo_string71:
	.asciz	"dirY"                          # string offset=622
.Linfo_string72:
	.asciz	"planeX"                        # string offset=627
.Linfo_string73:
	.asciz	"planeY"                        # string offset=634
.Linfo_string74:
	.asciz	"sideX"                         # string offset=641
.Linfo_string75:
	.asciz	"sideY"                         # string offset=647
.Linfo_string76:
	.asciz	"deltaDistX"                    # string offset=653
.Linfo_string77:
	.asciz	"deltaDistY"                    # string offset=664
.Linfo_string78:
	.asciz	"time"                          # string offset=675
.Linfo_string79:
	.asciz	"oldtime"                       # string offset=680
.Linfo_string80:
	.asciz	"s_raycast"                     # string offset=688
.Linfo_string81:
	.asciz	"t_raycast"                     # string offset=698
.Linfo_string82:
	.asciz	"minimap"                       # string offset=708
.Linfo_string83:
	.asciz	"unsigned short"                # string offset=716
.Linfo_string84:
	.asciz	"__uint16_t"                    # string offset=731
.Linfo_string85:
	.asciz	"uint16_t"                      # string offset=742
.Linfo_string86:
	.asciz	"x_pos"                         # string offset=751
.Linfo_string87:
	.asciz	"y_pos"                         # string offset=757
.Linfo_string88:
	.asciz	"s_minimap"                     # string offset=763
.Linfo_string89:
	.asciz	"t_minimap"                     # string offset=773
.Linfo_string90:
	.asciz	"main_menu"                     # string offset=783
.Linfo_string91:
	.asciz	"xpm"                           # string offset=793
.Linfo_string92:
	.asciz	"color"                         # string offset=797
.Linfo_string93:
	.asciz	"unsigned int"                  # string offset=803
.Linfo_string94:
	.asciz	"__uint32_t"                    # string offset=816
.Linfo_string95:
	.asciz	"uint32_t"                      # string offset=827
.Linfo_string96:
	.asciz	"s_main_menu"                   # string offset=836
.Linfo_string97:
	.asciz	"t_main_menu"                   # string offset=848
.Linfo_string98:
	.asciz	"s_cub3d"                       # string offset=860
.Linfo_string99:
	.asciz	"t_cub3d"                       # string offset=868
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clean_scene_img
	.addrsig_sym render_minimap
	.addrsig_sym render_player
	.addrsig_sym mlx_put_image_to_window
	.section	.debug_line,"",@progbits
.Lline_table_start0:
