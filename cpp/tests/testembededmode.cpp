#include <iostream>
#include <thread>
#include <../main.h>

#ifdef EMBEDDED_MODE
void gtp() {
    const char* argv[] = {"katago", "gtp"};
    int argc = sizeof(argv) / sizeof(argv[0]);
    katago_main(argc, argv);
}

void host() {
    
}


int main() {
    std::thread kataGoGTP(gtp);
    std::thread gui(host);
    kataGoGTP.join();
    gui.join();

    return 0;
}
#endif