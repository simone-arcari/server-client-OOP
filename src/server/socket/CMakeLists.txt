# Definisci il sottoprogetto socket
add_library(ServerSocket ServerSocket.cpp ServerSocketForClient.cpp)

# Aggiungi il percorso include per i file di intestazione
target_include_directories(ServerSocket PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../../include/server/socket)
message(WARNING "${CMAKE_CURRENT_SOURCE_DIR}/../../../include/server/socket")

# Collega il target Socket come dipendenza del target ServerSocket
target_link_libraries(ServerSocket PRIVATE Socket)

