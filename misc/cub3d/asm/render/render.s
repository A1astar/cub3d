	.text
	.file	"render.c"
	.globl	clean_scene_img                 # -- Begin function clean_scene_img
	.p2align	4, 0x90
	.type	clean_scene_img,@function
clean_scene_img:                        # @clean_scene_img
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/render.c"
	.loc	1 16 0                          # src/render/render.c:16:0
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
	.loc	1 20 4 prologue_end             # src/render/render.c:20:4
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	.loc	1 21 9                          # src/render/render.c:21:9
	movl	-24(%rbp), %eax
	.loc	1 21 13 is_stmt 0               # src/render/render.c:21:13
	movq	-8(%rbp), %rcx
	.loc	1 21 11                         # src/render/render.c:21:11
	cmpl	(%rcx), %eax
	.loc	1 21 2                          # src/render/render.c:21:2
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 23 5 is_stmt 1                # src/render/render.c:23:5
	movl	$0, -20(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 24 10                         # src/render/render.c:24:10
	movl	-20(%rbp), %eax
	.loc	1 24 14 is_stmt 0               # src/render/render.c:24:14
	movq	-8(%rbp), %rcx
	.loc	1 24 12                         # src/render/render.c:24:12
	cmpl	4(%rcx), %eax
	.loc	1 24 3                          # src/render/render.c:24:3
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
.Ltmp2:
	.loc	1 26 15 is_stmt 1               # src/render/render.c:26:15
	movq	-16(%rbp), %rax
	.loc	1 26 22 is_stmt 0               # src/render/render.c:26:22
	movq	(%rax), %rdi
	.loc	1 26 27                         # src/render/render.c:26:27
	movl	-20(%rbp), %esi
	.loc	1 26 30                         # src/render/render.c:26:30
	movl	-24(%rbp), %edx
	.loc	1 26 4                          # src/render/render.c:26:4
	xorl	%ecx, %ecx
	callq	draw_pixel
	.loc	1 27 5 is_stmt 1                # src/render/render.c:27:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp3:
	.loc	1 24 3                          # src/render/render.c:24:3
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 29 4                          # src/render/render.c:29:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp4:
	.loc	1 21 2                          # src/render/render.c:21:2
	jmp	.LBB0_1
.LBB0_6:
	.loc	1 31 1                          # src/render/render.c:31:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	clean_scene_img, .Lfunc_end0-clean_scene_img
	.cfi_endproc
                                        # -- End function
	.globl	draw_pixel                      # -- Begin function draw_pixel
	.p2align	4, 0x90
	.type	draw_pixel,@function
draw_pixel:                             # @draw_pixel
.Lfunc_begin1:
	.loc	1 34 0                          # src/render/render.c:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp6:
	.loc	1 37 10 prologue_end            # src/render/render.c:37:10
	movq	-8(%rbp), %rax
	.loc	1 37 15 is_stmt 0               # src/render/render.c:37:15
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 37 23                         # src/render/render.c:37:23
	movl	-16(%rbp), %ecx
	.loc	1 37 27                         # src/render/render.c:37:27
	movq	-8(%rbp), %rax
	.loc	1 37 25                         # src/render/render.c:37:25
	imull	20(%rax), %ecx
	.loc	1 37 44                         # src/render/render.c:37:44
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	.loc	1 37 49                         # src/render/render.c:37:49
	movq	-8(%rbp), %rax
	.loc	1 37 54                         # src/render/render.c:37:54
	movl	24(%rax), %eax
	.loc	1 37 58                         # src/render/render.c:37:58
	movl	$8, %esi
	cltd
	idivl	%esi
	movl	-44(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %esi
	movq	-40(%rbp), %rax                 # 8-byte Reload
	.loc	1 37 46                         # src/render/render.c:37:46
	imull	%esi, %edx
	.loc	1 37 42                         # src/render/render.c:37:42
	addl	%edx, %ecx
	.loc	1 37 20                         # src/render/render.c:37:20
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	.loc	1 37 8                          # src/render/render.c:37:8
	movq	%rax, -32(%rbp)
	.loc	1 38 18 is_stmt 1               # src/render/render.c:38:18
	movl	-20(%rbp), %ecx
	.loc	1 38 10 is_stmt 0               # src/render/render.c:38:10
	movq	-32(%rbp), %rax
	.loc	1 38 16                         # src/render/render.c:38:16
	movl	%ecx, (%rax)
	.loc	1 39 1 is_stmt 1                # src/render/render.c:39:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	draw_pixel, .Lfunc_end1-draw_pixel
	.cfi_endproc
                                        # -- End function
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0x18e DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x5 DW_TAG_pointer_type
	.long	47                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x2f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x36:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x4b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	224                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x59:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	273                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x67:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	47                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x75:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	47                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x84:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x99:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xa7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	47                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	47                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	47                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	396                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xe0:0x5 DW_TAG_pointer_type
	.long	229                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe5:0xb DW_TAG_typedef
	.long	240                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xf0:0x21 DW_TAG_structure_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xf8:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	47                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x104:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	47                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x111:0x5 DW_TAG_pointer_type
	.long	278                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x116:0xb DW_TAG_typedef
	.long	289                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x121:0x15 DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x129:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	310                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x136:0x5 DW_TAG_pointer_type
	.long	315                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x13b:0xb DW_TAG_typedef
	.long	326                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x146:0x45 DW_TAG_structure_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x14e:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	395                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x15a:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x166:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	47                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x172:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	47                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x17e:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	47                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x18b:0x1 DW_TAG_pointer_type
	.byte	2                               # Abbrev [2] 0x18c:0x5 DW_TAG_pointer_type
	.long	401                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x191:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/render/render.c"           # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=58
.Linfo_string3:
	.asciz	"int"                           # string offset=97
.Linfo_string4:
	.asciz	"clean_scene_img"               # string offset=101
.Linfo_string5:
	.asciz	"draw_pixel"                    # string offset=117
.Linfo_string6:
	.asciz	"window"                        # string offset=128
.Linfo_string7:
	.asciz	"height"                        # string offset=135
.Linfo_string8:
	.asciz	"width"                         # string offset=142
.Linfo_string9:
	.asciz	"s_window"                      # string offset=148
.Linfo_string10:
	.asciz	"t_window"                      # string offset=157
.Linfo_string11:
	.asciz	"scene"                         # string offset=166
.Linfo_string12:
	.asciz	"img"                           # string offset=172
.Linfo_string13:
	.asciz	"ptr"                           # string offset=176
.Linfo_string14:
	.asciz	"addr"                          # string offset=180
.Linfo_string15:
	.asciz	"char"                          # string offset=185
.Linfo_string16:
	.asciz	"endian"                        # string offset=190
.Linfo_string17:
	.asciz	"size_line"                     # string offset=197
.Linfo_string18:
	.asciz	"bpp"                           # string offset=207
.Linfo_string19:
	.asciz	"s_img"                         # string offset=211
.Linfo_string20:
	.asciz	"t_img"                         # string offset=217
.Linfo_string21:
	.asciz	"s_scene"                       # string offset=223
.Linfo_string22:
	.asciz	"t_scene"                       # string offset=231
.Linfo_string23:
	.asciz	"x"                             # string offset=239
.Linfo_string24:
	.asciz	"y"                             # string offset=241
.Linfo_string25:
	.asciz	"color"                         # string offset=243
.Linfo_string26:
	.asciz	"pixel"                         # string offset=249
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym draw_pixel
	.section	.debug_line,"",@progbits
.Lline_table_start0:
