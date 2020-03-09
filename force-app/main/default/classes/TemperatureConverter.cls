public class TemperatureConverter {

    public static Decimal FahrenheitToCelsius(Decimal fh){
        Decimal dc= (fh-32) *5/9;
        return dc.setScale(2);
    }
}