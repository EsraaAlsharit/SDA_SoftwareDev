package Zoo;

public class Mammal {
	public int energyLevel;
	
    public int displayEnergy(){
        return this.energyLevel;
    }

    public Mammal() {
        this.energyLevel = 300;
    }

}
