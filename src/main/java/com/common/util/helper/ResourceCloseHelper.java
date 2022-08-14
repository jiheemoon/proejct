package com.common.util.helper;

import java.io.Closeable;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Wrapper;

public class ResourceCloseHelper {

    /**
     * Resource close 처리.
     * @param resources
     */
    public static void close(Closeable  ... resources) {
        
        for (Closeable resource : resources) {
            if (null != resource) {
                try {
                    resource.close();
                } catch (Exception ex) {
                    //
                }
            }
        }
    }
    
    /**
     * JDBC 관련 resource 객체 close 처리
     * @param objects
     */
    public static void closeDBObjects(Wrapper ... objects) {
        
        for (Object object : objects) {
            if (null != object) {
                if (object instanceof ResultSet) {
                    try {
                        ((ResultSet)object).close();
                    } catch (Exception ignore) {
                        //
                    }
                } else if (object instanceof Statement) {
                    try {
                        ((Statement)object).close();
                    } catch (Exception ignore) {
                        //
                    }
                } else if (object instanceof Connection) {
                    try {
                        ((Connection)object).close();
                    } catch (Exception ignore) {
                        //
                    }
                } else {
                    throw new IllegalArgumentException("Wrapper type is not found : " + object.toString());
                }
            }
        }
    }
    
    /**
     * Socket 관련 resource 객체 close 처리
     * @param objects
     */
    public static void closeSocketObjects(Socket socket, ServerSocket server) {
        
        if (null != socket) {
            try {
                socket.shutdownOutput();
            } catch (Exception ignore) {
                //
            }
            try {
                socket.close();
            } catch (Exception ignore) {
                //
            }
        }
        if (null != server) {
            try {
                server.close();
            } catch (Exception ignore) {
                //
            }
        }
    }
    
    /**
     *  Socket 관련 resource 객체 close 처리
     *  
     * @param sockets
     */
    public static void closeSockets(Socket ... sockets) {
        
        for (Socket socket : sockets) {
            if (null != socket) {
                try {
                    socket.shutdownOutput();
                } catch (Exception ex) {
                    //
                }
                try {
                    socket.close();
                } catch (Exception ex) {
                    //
                }
            }
        }
    }
}
