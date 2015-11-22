/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package designpatterns.sample5;

/**
 *
 * @author sergeiw
 */
public class Board {
    
    private int sizeX;
    private int sizeY;

    public Board(int sizeX, int sizeY) {
        this.sizeX = sizeX;
        this.sizeY = sizeY;
    }
    
    public void render(IUserState userState) {        
        printhln();
        print("   |");
        for(int x=0; x < getSizeX(); x++)
            print(String.format("%2d |", x));
        printhln();
        
        for(int y=0; y < getSizeY(); y++) {
            print(String.format("|%2d|", y));
            
            for(int x=0; x < getSizeX(); x++) {
                if (userState.getPoint().getX() == x
                        && userState.getPoint().getY() == y)
                    print(userState.getPiece().render(userState)+"|");
                else
                    print("   |");
            }
            printhln();
        }
        
    }
    
    private void print(String s) {
        System.out.print(s);
    }
    
    private void println() {
        System.out.println();
    }
    
    private void printhln() {
        print("\n----");
        for(int i=0; i < getSizeX(); i++)
            print("----");
        print("\n");
    }

    /**
     * @return the sizeX
     */
    public int getSizeX() {
        return sizeX;
    }

    /**
     * @return the sizeY
     */
    public int getSizeY() {
        return sizeY;
    }
    
    
}
