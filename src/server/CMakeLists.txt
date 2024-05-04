# Definisci il sottoprogetto server
add_library(Server Server.cpp ClientManagerThread.cpp CommandManager.cpp)

# Aggiungi il percorso include per i file di intestazione
target_include_directories(Server PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include/server
    ${CMAKE_CURRENT_SOURCE_DIR}/../../include/interface  # Aggiungi il percorso include per HostInterface.hpp
)

# Aggiungi le sottocartelle del progetto
add_subdirectory(socket)

# Collega il target Socket e ServerSocket come dipendenza del target Server
target_link_libraries(Server PRIVATE Socket ServerSocket)


