package runners;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import cucumber.api.SnippetType;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features="src\\test\\resources\\Features\\crear_nueva_cuenta_usuario.feature", glue="stepdefinitions",snippets=SnippetType.CAMELCASE)

public class CrearNuevaCuentaUsuarioRunner {
	
	
}
