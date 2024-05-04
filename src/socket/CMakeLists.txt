# Definisci il sottoprogetto socket
add_library(Socket Socket.cpp)

# Aggiungi il percorso include per i file di intestazione
target_include_directories(Socket PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../include/socket)