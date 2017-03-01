+++
title = "Initial Commit"
draft = true
date = "2017-03-01T10:38:44+01:00"

+++

This is the first post. And it will just show off how our blog works.
Man kan tycka det

Det krävs en hel del text för att putta ned en react komponent.

```
class Component extends React.Component<IComponentProps, IComponentState> {
    fieldSetChangeHandler() {
       // När fieldSetChangeHandler anropas vid onChange så är this inte bundet till denna instans av Component... Raden nedan ger exception eftersom this-objektet inte har state...
       if (this.state.employee.name === "") {}
    }
    render() {
        // När this.fieldSetChangeHandler anropas binds inte this till en instans av Component(!)
        return <ui.FieldSet onChange={this.fieldSetChangeHandler}>;
    }
}
```

**Nam** a nibh eget ligula *dapibus* laoreet. ~In~ eros nisi, lacinia lacinia blandit non, egestas eu orci. Pellentesque congue urna quis nibh consectetur dapibus. Aliquam sollicitudin sem enim, eu imperdiet mi posuere in. Donec quis convallis quam, ac tincidunt tortor. Pellentesque euismod condimentum pretium. Proin ut porta mi. Vivamus vel tellus quis quam lobortis congue ut vel massa. Maecenas eget placerat nisi. Aenean ultrices tellus ac lorem ultricies dapibus. Etiam id lectus consequat, varius lacus venenatis, rhoncus risus. Ut pellentesque ligula vitae eros dictum rutrum. Nulla eu lacus eu ante imperdiet hendrerit et sed nisl. Praesent ut commodo eros.

