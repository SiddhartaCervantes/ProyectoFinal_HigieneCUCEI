RSRC                    VisualShader            ��������                                            A      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    source    texture    texture_type    script    input_name 	   function 	   constant    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    flags/debug_shadow_splits    flags/fog_disabled    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/2/node    nodes/fragment/2/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections    
   Texture2D    res://Materials/grassss.jpg ��S$O   &   local://VisualShaderNodeTexture_573s6 �      $   local://VisualShaderNodeInput_dgqhb S      %   local://VisualShaderNodeUVFunc_767s6 �      ,   local://VisualShaderNodeFloatConstant_bfgdm �         local://VisualShader_0yeov �         VisualShaderNodeTexture                                                   VisualShaderNodeInput    	         uv          VisualShaderNodeUVFunc             VisualShaderNodeFloatConstant            �@         VisualShader            shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_lambert, specular_schlick_ggx;

uniform sampler2D tex_frg_2 : source_color;



void fragment() {
// Input:3
	vec2 n_out3p0 = UV;


// FloatConstant:6
	float n_out6p0 = 5.000000;


// UVFunc:4
	vec2 n_in4p2 = vec2(0.00000, 0.00000);
	vec2 n_out4p0 = n_in4p2 * vec2(n_out6p0) + n_out3p0;


// Texture2D:2
	vec4 n_out2p0 = texture(tex_frg_2, n_out4p0);
	float n_out2p1 = n_out2p0.r;


// Output:0
	ALBEDO = vec3(n_out2p0.xyz);
	SPECULAR = n_out2p1;


}
 '   
     D   C(             )   
   �)rC  �C*            +   
     ��  �C,            -   
     ��  �C.            /   
     \�  �C0                                                                                     RSRC