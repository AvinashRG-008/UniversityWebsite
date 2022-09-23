package com.cts.University.Exception;

/*
 * @Author Avinash R G, Asfak Rahaman, Prasanth Bhimana
 */

@SuppressWarnings("serial")
public class FileStorageException extends RuntimeException {
    public FileStorageException(String message) {
        super(message);
    }

    public FileStorageException(String message, Throwable cause) {
        super(message, cause);
    }
}