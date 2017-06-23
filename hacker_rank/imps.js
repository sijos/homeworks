function solve(n, s, d, m){
  var count = 0;
  for (var i = 0; i < s.length; i++) {
    sum = 0;
    for (var j = 0; j < m; j++) { sum += s[i + j];}
    if (sum === d) { count++; }
  }
  return count;
}


function main() {
    var n = parseInt(readLine());
    s = readLine().split(' ');
    s = s.map(Number);
    var d_temp = readLine().split(' ');
    var d = parseInt(d_temp[0]);
    var m = parseInt(d_temp[1]);
    var result = solve(n, s, d, m);
    process.stdout.write(""+result+"\n");

}