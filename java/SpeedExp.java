import java.util.stream.LongStream;

public class SpeedExp
{
    public static void main(String[] args)
    {
        var start = System.currentTimeMillis();
        long sum = LongStream.range(0, 1000000000).sum();
        var total = System.currentTimeMillis() - start;
        System.out.println(String.format("%d millis, sum = %d", total, sum));
    }
}
