public class ContainInt {
    public static void main(String[] args) {
        String[] testcases={"dsaf","This Is A Test4me","100","020","3X0","  +400","-0500"};
        Boolean ans;
        for(String testcase: testcases){
            ans=isContainInt(testcase);
            System.out.println(ans);
        }
    }
    static public Boolean isContainInt(String input) {
        Boolean ans=false;
        char[] ch = input.toCharArray();
        for(int i=0; i < ch.length; i++)
            if (Character.isDigit(ch[i])==true)
                ans=true;
        return ans;
    }
}