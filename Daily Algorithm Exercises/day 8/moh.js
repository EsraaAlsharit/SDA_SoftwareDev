/*
  Input: a 2 dimensional array of integers
  Output: A 1 dimensional array of all the same elements preserving original order
*/

// this given array has a length of 3 because it has 3 arrays as items
const twoDimArr1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
// const expected1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

const twoDimArr2 = [[1], [2], [3]]
// const expected2 = [1, 2, 3]

const twoDimArr3 = [[], [], [10, 20]]
// const expected3 = [10, 20]
var arr = [];
function flatten2dArray(twoDimArr) {
    // code here
    var temp = []
    var t = true;
    var count1 = 0;
    var count2 = 0;
    var count3 = 0;
    while (t) {
        if (count1 == twoDimArr.length - 1 && count2 == twoDimArr[twoDimArr.length-1].length-1) {
            t = false;
        }
        // console.log(count1, twoDimArr.length)
        if (twoDimArr[count1] != 0) {

            temp[count3] = twoDimArr[count1][count2]
            // console.log(temp)
            count2++;
            count3++;
            if (count2 == twoDimArr[count1].length) {
                count2 = 0;
                count1++;
            }
        }else{
            count1++;
        }


        // console.log("s")
    }
    console.log(temp)
    return temp;
}


 flatten2dArray(twoDimArr1)
 flatten2dArray(twoDimArr2)
 flatten2dArray(twoDimArr3)

