Shader "Unlit/NewUnlitShader"
{
    Properties
    {
        _Color("我是诗人", Color) = (0.5, 0.5, 0.5,1)
        [Enum(UnityEngine.Rendering.CullMode)]_Float("我是Float", Float) = 1 
        _MainTex("我是纹理贴图", Cube ) = ""{}
    }
    SubShader
    {
        Pass
        {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

            fixed4 _Color;

			float4 vert (float4 vertex : POSITION ) : SV_POSITION
			{
				return UnityObjectToClipPos(vertex);
			}

			fixed4 frag () : SV_Target {
				return _Color;
			}
			
			ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "EditorName"
}
