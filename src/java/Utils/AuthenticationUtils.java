/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author shawn
 */
public class AuthenticationUtils {

    /**
     * Returns SHA-256 encoded string
     *
     * @param password - the string to be encoded
     * @return SHA-256 encoded string
     * @throws UnsupportedEncodingException if UTF-8 is not supported by the
     * system
     * @throws NoSuchAlgorithmException if SHA-256 is not supported by the
     * system
     */
    public static String encodeSHA256(String password)
            throws UnsupportedEncodingException, NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(password.getBytes("UTF-8"));
        byte[] digest = md.digest();
        return DatatypeConverter.printBase64Binary(digest).toString();
    }
    
    
    public static void main (String args[]){
        try { 
            System.out.println(encodeSHA256("1"));
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(AuthenticationUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(AuthenticationUtils.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
