function name(i_name) {
  return `hello ${i_name}`;
}

module.exports = name;

// if (require.main === module) {
//   console.log(name("world"));
// }