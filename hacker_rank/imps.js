// chocolate lengths
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

// Divisible Sum Pairs
function divisibleSumPairs(n, k, ar) {
  let count = 0;
  for (let i = 0; i < ar.length; i++) {
    for (let j = i; j < ar.length; j++) {
      if ((ar[i] + ar[j]) % k === 0) {
        count++;
      }
    }
  }
  return count;
}

function main() {
    var n_temp = readLine().split(' ');
    var n = parseInt(n_temp[0]);
    var k = parseInt(n_temp[1]);
    ar = readLine().split(' ');
    ar = ar.map(Number);
    var result = divisibleSumPairs(n, k, ar);
    process.stdout.write("" + result + "\n");

}

// Migratory Birds
function migratoryBirds(n, ar) {
  let counts = ar.reduce(function(counter, el) {
    let key = String(el);
    counter[key] = counter.hasOwnProperty(key) ? counter[key] + 1 : 1;
    return counter;
  }, {})
  let count_arr = [];
  for (var type in counts) {
    count_arr.push([type, counts[type]])
  }

  count_arr = count_arr.sort((a, b) => b[1] - a[1]);
  return Number(count_arr[0][0]);
}

function main() {
    var n = parseInt(readLine());
    ar = readLine().split(' ');
    ar = ar.map(Number);
    var result = migratoryBirds(n, ar);
    process.stdout.write("" + result + "\n");

}