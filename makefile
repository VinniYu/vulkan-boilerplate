CXXFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

bin/VulkanTest: main.cpp | bin
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

bin:
	mkdir -p bin

.PHONY: test clean

test: bin/VulkanTest
	./bin/VulkanTest

clean:
	rm -f bin/VulkanTest
