#include <iostream>
#include <SFML/Window.hpp>


using namespace std;
using namespace sf;

int main() {
    cout << "Coucou" << endl;

    Window window(VideoMode(800, 600), "My window II");

    // on fait tourner le programme jusqu'à ce que la fenêtre soit fermée
    while (window.isOpen())
    {
        // on inspecte tous les évènements de la fenêtre qui ont été émis depuis la précédente itération
        sf::Event event;
        while (window.pollEvent(event))
        {
            // évènement "fermeture demandée" : on ferme la fenêtre
            if (event.type == Event::Closed)
                window.close();
        }
    }

    return 0;


    return 0;
}