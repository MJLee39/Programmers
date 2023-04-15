import java.util.Arrays;

class Solution {
    public String solution(String s) {
        String answer = "";
        String[] stringArr = s.split(" ");
        int[] intArr = new int[stringArr.length];
        //System.out.print(Arrays.toString(intArr));
        for(int i=0; i<intArr.length; i++){
            intArr[i] = Integer.parseInt(stringArr[i]);
        }
        Arrays.sort(intArr);
        answer += intArr[0]+" "+intArr[intArr.length-1];
        return answer;
    }
}