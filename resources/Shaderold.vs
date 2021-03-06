#version 330 core
    layout (location = 0) in vec3 position;
    layout (location = 1) in vec3 color;
    layout (location = 2) in vec2 texCoord;

    uniform vec4 offLoc;

    //uniform mat4 trans;
    uniform mat4 model;
    uniform mat4 view;
    uniform mat4 projection;

    out vec3 ourColor;
    out vec2 ourTexCoord;
    
  void main() { 
    	gl_Position = projection * view * model * vec4(position, 1.0f);
    	//ourColor = color;
	//ourTexCoord = vec2(texCoord.x, 1 - texCoord.y);
    }

