#include <iostream>
#include "OgreRoot.h"
#include "OgreWindow.h"
#include "OgreTimer.h"
#include "OgreWindowEventUtilities.h"

int main(int argc, char** argv)
{
    // Create OGRE root
    Ogre::Root* root = new Ogre::Root();

    // Set up resources (optional here, empty)
    Ogre::ResourceGroupManager::getSingleton().initialiseAllResourceGroups(false);

    // Choose a render system (default to GL3Plus if available)
    const Ogre::RenderSystemList& renderSystems = root->getAvailableRenderers();
    if (renderSystems.empty())
    {
        std::cerr << "No render systems found!" << std::endl;
        return -1;
    }
    root->setRenderSystem(renderSystems[0]);

    // Initialize without creating a window automatically
    root->initialise(false);

    // Create a render window
    Ogre::NameValuePairList params;
    Ogre::Window* window = root->createRenderWindow("OGRE Window", 800, 600, false, &params);
    

    // Simple game loop
    while (!window->isClosed())
    {
        // Pump window events
        Ogre::WindowEventUtilities::messagePump();

        // Render a frame
        root->renderOneFrame();
    }

    // Cleanup
    delete root;
    return 0;
}
