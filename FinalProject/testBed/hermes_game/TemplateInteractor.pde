/**
 * Template interactor between a TemplateBeing and another TemplateBeing
 * Don't forget to change TemplateBeing-s to
 * the names of the Being-types you want to interact
 */
class SquareInteractor extends Interactor<GlitchySquare, GlitchySquare> {
    SquareInteractor() {
        super();
        //Add your constructor info here
    }

    boolean detect(GlitchySquare being1, GlitchySquare being2) {
        //Add your detect method here
        return being1.getShape().collide(being2.getShape());
    }

    void handle(GlitchySquare being1, GlitchySquare being2) {
        //Add your handle method here
        being1.drawStroke();
        being2.drawStroke();
    }
}
