#include <OpenGL/gl.h>
#include <GLFW/glfw3.h>

int main() {
	GLFWwindow* window = NULL;

	if (!glfwInit()) return -1;

	window = glfwCreateWindow(640, 480, "Hello, Hacker School!", NULL, NULL);

	if (window == NULL) {
		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(window);

	while (!glfwWindowShouldClose(window)) {
		glfwSwapBuffers(window);
		glfwPollEvents(); // pump event queue
	}

	glfwTerminate();
	return 0;
}
