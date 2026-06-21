HEADER

SUBSECTION(Includes)
#include <iostream>

SUBSECTION(Print Function)
COMMENT(This Function prints a simple string)
void print(auto var) {
  std::cout << var << std::endl;
}

MAINSECTION(Main)
int main() {
  COMMENT(This prints Hello world)
  print("Hello, world");
}

EOF

