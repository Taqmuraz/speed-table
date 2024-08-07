using System.Linq;

var start = DateTime.Now;
var sum = 0L;
var length = long.Parse(args[0]);
for(long i = 0; i < length; i++)
{
    sum += i;
}
var total = DateTime.Now - start;
Console.WriteLine($"time = {total.TotalMilliseconds.ToString("F2")} ms, sum = {sum}");