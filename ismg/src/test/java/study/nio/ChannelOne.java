package study.nio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.util.RandomAccess;

/**
 * Created by wsylp on 2017/9/21.
 */
public class ChannelOne {

    public static void main(String[] args) throws IOException {
        RandomAccessFile aFile = new RandomAccessFile("G://nio.txt","rw");
        FileChannel fileChannel = aFile.getChannel();

        //一次读取45个字节
        ByteBuffer buf = ByteBuffer.allocate(45);
        //从channel写到buffer里面
        int bytesRead = fileChannel.read(buf);



        while(bytesRead != -1){
            System.out.println("读:" +bytesRead );
            //通过put方法写入到Buffer
            buf.put((byte) 'B');
            buf.flip();


            while (buf.hasRemaining()){

                System.out.println((char)buf.get());
            }
            buf.clear();
            bytesRead = fileChannel.read(buf);
        }
        aFile.close();
    }

}
