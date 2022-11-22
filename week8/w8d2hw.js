// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }

function madLib(verb, adj, noun) {
  console.log(`We shall ${verb} the ${adj+" "+noun}`)
}
console.log(madLib('make', 'best', 'guac')); // "We shall MAKE the BEST GUAC."

function isSubstring(str1, sub){
  return str1.includes(sub)
}
console.log(isSubstring("time to program", "time"));
//true
console.log(isSubstring("Jump for joy", "joys"));
//false

function isPrime(num) {
  for (i=2; i<num; i++) {
    if (num%i===0) {
      return false 
    }
  }
  return true
}
console.log(isPrime(2));
//true
console.log(isPrime(10));
//false

console.log(isPrime(15485863));
//true
console.log(isPrime(3548563));
//false

function sumOfNPrimes(n) {
  let sum = 0
  let i = 0
  while (i<n) {
    for (j=2; i<n; j++) {
      if (isPrime(j)===true) {
        sum = sum + j
        i++
      }
    }
    
  }
  return sum
}
console.log(sumOfNPrimes(0));
 //0
console.log(sumOfNPrimes(1));
//2
console.log(sumOfNPrimes(4));
//17