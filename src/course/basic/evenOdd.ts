const evenOdd: number = 10;
console.log(evenOdd % 2 === 0 ? "even" : "odd");

/*test is the num between 18 and 40*/
function isBetween18And40(num: number) {
    console.log(num + ((num >= 18 && num <= 40) ? " is " : "  is not ") + "between 18 and 40");
}

isBetween18And40(41);
isBetween18And40(20);
isBetween18And40(8);

