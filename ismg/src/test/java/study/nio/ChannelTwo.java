package study.nio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.Channel;
import java.nio.channels.DatagramChannel;
import java.nio.channels.FileChannel;
import java.nio.channels.Pipe;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Iterator;
import java.util.Set;

/**
 * Created by wsylp on 2017/9/23.
 */
public class ChannelTwo {

    public static void main(String[] args) throws IOException {
        // transfrom();
        //transTo();
        //useSelector();
        //useFileChannel();
        //useServerSocketChannel();
        //useDatagramChannel();
        usePipe();
    }

    private static void usePipe() throws IOException {
        //创建管道
        Pipe pipe = Pipe.open();

        //像管道写数据
        Pipe.SinkChannel sinkChannel = pipe.sink();

        //调用sinkChannel的write方法,将数据写入sinkChannel
        String newData = "New String to write to file..." + System.currentTimeMillis();
        ByteBuffer buf = ByteBuffer.allocate(48);
        buf.clear();
        buf.put(newData.getBytes());

        buf.flip();

        while(buf.hasRemaining()) {
            sinkChannel.write(buf);
        }

        //从管道中读取数据
        //从读取管道的数据，需要访问source通道，像这样：

        Pipe.SourceChannel sourceChannel = pipe.source();

       // 调用source通道的read()方法来读取数据，像这样：

        ByteBuffer rbuf = ByteBuffer.allocate(48);
        int bytesRead = sourceChannel.read(rbuf);
        //read()方法返回的int值会告诉我们多少字节被读进了缓冲区。
    }

    private static void useDatagramChannel() throws IOException {
        //打开DatagramChannel
        //打开的 DatagramChannel可以在UDP端口9999上接收数据包。
        DatagramChannel datagramChannel = DatagramChannel.open();
        datagramChannel.socket().bind(new InetSocketAddress(9999));

        //接收数据,通过receive()方法从DatagramChannel接收数据
        ByteBuffer buf = ByteBuffer.allocate(100);
        buf.clear();
        //receive()方法会将接收到的数据包内容复制到指定的Buffer. 如果Buffer容不下收到的数据，多出的数据将被丢弃
        datagramChannel.receive(buf);

        //发送数据
        String newData = "我的老家" + LocalTime.now();
        ByteBuffer sbuf = ByteBuffer.allocate(100);
        sbuf.clear();
        sbuf.put(newData.getBytes());
        sbuf.flip();
        //  这个例子发送一串字符到”jenkov.com”服务器的UDP端口80。
        // 因为服务端并没有监控这个端口，所以什么也不会发生。也不会通知你发出的数据包是否已收到，
        // 因为UDP在数据传送方面没有任何保证。
        //连接到特定的地址
        //可以将DatagramChannel“连接”到网络中的特定地址的。由于UDP是无连接的，连接到特定地址并不会像TCP通道那样创建一个真正的连接。
        //而是锁住DatagramChannel ，让其只能从特定地址收发数据。
        int bytesSent = datagramChannel.send(buf, new InetSocketAddress("jenkov.com", 80));

        //当连接后，也可以使用read()和write()方法，就像在用传统的通道一样。只是在数据传送方面没有任何保证。这里有几个例子：

        int bytesRead = datagramChannel.read(sbuf);
        int bytesWritten = datagramChannel.write(sbuf);
    }

    private static void useServerSocketChannel() throws IOException {
        //通过调用 ServerSocketChannel.open() 方法来打开ServerSocketChannel
        ServerSocketChannel serverSocketChannel = ServerSocketChannel.open();
        serverSocketChannel.socket().bind(new InetSocketAddress(9999));

        //ServerSocketChannel可以设置成非阻塞模式。在非阻塞模式下，accept() 方法会立刻返回，如果还没有新进来的连接,
        // 返回的将是null。 因此，需要检查返回的SocketChannel是否是null
        serverSocketChannel.configureBlocking(false);

        boolean flag = true;
        //通常不会仅仅只监听一个连接,在while循环中调用 accept()方法.
        while (flag) {
            //通过 ServerSocketChannel.accept() 方法监听新进来的连接。
            // 当 accept()方法返回的时候,它返回一个包含新进来的连接的 SocketChannel。
            // 因此, accept()方法会一直阻塞到有新连接到达。
            SocketChannel socketChannel = serverSocketChannel.accept();

            if (socketChannel != null) {
                System.out.println("得到连接");
            }
        }

        //关闭serverSocketChannel
        serverSocketChannel.close();
    }

    private static void useFileChannel() throws IOException {
        //我们无法直接打开一个FileChannel，需要通过使用一个InputStream、
        //    OutputStream或RandomAccessFile来获取一个FileChannel实例
        RandomAccessFile randomAccessFile = new RandomAccessFile("g://nio.txt", "rw");
        FileChannel channel = randomAccessFile.getChannel();
        //从FIleChannel读取数据
        //调用多个read()方法之一从FileChannel中读取数据
        //分配一个Buffer.从FileChannel中读取的数据将被读到Buffer中
        ByteBuffer buf = ByteBuffer.allocate(50);
        //调用read()方法,将数据从channel读取到Buffer中
        //read 返回的int值表示多少个字节被读到了buffer 中,返回-1表示到了文件末尾
        int bytesRead = channel.read(buf);

        //向FileChannel写数据
        String newdata = "哈哈哈" + LocalDate.now();

        ByteBuffer wbuf = ByteBuffer.allocate(100);
        wbuf.clear();
        wbuf.put(newdata.getBytes());

        wbuf.flip();
        //FileChannel.write()是在while循环中调用的。因为无法保证write()方法一次能向FileChannel写入多少字节，
        // 因此需要重复调用write()方法，直到Buffer中已经没有尚未写入通道的字节。
        while (wbuf.hasRemaining()) {
            channel.write(wbuf);
        }

        //关闭FileChannel
        //用完FileChannel后必须将其关闭
        // channel.close();

        //FileChannel的size方法
        long fileSize = channel.size();
        System.out.println("fileSize:" + fileSize);

        //FileChannel的truncate方法,截取文件将指定长度后面的删除
        FileChannel truncate = channel.truncate(20);
        System.out.println("截取后的长度:" + truncate.size());

        //FileChannel的force方法
        // FileChannel.force()force方法将通道里尚未写入磁盘的数据强制写到磁盘上。
        // 出于性能方面的考虑，操作系统会将数据缓存在内存中，所以无法保证写入到FileChannel里的数据一定会即时写到磁盘上。
        // 要保证这一点，需要调用force()方法。
        //force()方法有一个boolean类型的参数，指明是否同时将文件元数据（权限信息等）写到磁盘上。
        truncate.force(true);

    }

    private static void useSelector() throws IOException {

    }

    /**
     * 将fileChannel传输到其他的channel
     */
    private static void transTo() throws IOException {
        RandomAccessFile fromFile = new RandomAccessFile("g://fromFile.txt", "rw");
        FileChannel fromChannel = fromFile.getChannel();

        RandomAccessFile toFile = new RandomAccessFile("g://toFile.txt", "rw");
        FileChannel toChannel = toFile.getChannel();

        long position = 0;
        long count = fromChannel.size();

        //SocketChannel的问题在transferTo()方法中同样存在。SocketChannel会一直传输数据直到目标buffer被填满
        fromChannel.transferTo(position, count, toChannel);
    }

    private static void transfrom() throws IOException {
        RandomAccessFile fromFile = new RandomAccessFile("g://nio.txt", "rw");
        FileChannel fileChannel = fromFile.getChannel();

        RandomAccessFile toFile = new RandomAccessFile("g://tonio.txt", "rw");
        FileChannel toFileChannel = toFile.getChannel();

        long position = 0;
        long count = fileChannel.size();

        //方法的输入参数position表示从position处开始向目标文件写入数据，count表示最多传输的字节数。如果源通道的剩余空间小于 count 个字节，则所传输的字节数要小于请求的字节数。
        //此外要注意，在SoketChannel的实现中，SocketChannel只会传输此刻准备好的数据（可能不足count字节）。
        //因此，SocketChannel可能不会将请求的所有数据(count个字节)全部传输到FileChannel中。
        toFileChannel.transferFrom(fileChannel, position, count);

    }
}
