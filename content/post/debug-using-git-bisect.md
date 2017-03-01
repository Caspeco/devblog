+++
draft = true
date = "2017-03-01T16:02:24+01:00"
title = "How we debug using git bisect at Caspeco"

+++

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet tempor magna. Integer sodales elementum risus, sit amet facilisis nulla faucibus id. Aliquam dolor augue, mollis non hendrerit et, accumsan a quam. Cras suscipit nibh iaculis dolor sodales placerat. Vestibulum luctus orci eget lectus feugiat porta. Phasellus nunc magna, hendrerit a bibendum vel, ullamcorper non mi. Nunc faucibus mattis lectus, ut molestie nulla pharetra sit amet. Nulla facilisi. Donec risus nisl, vulputate vel tellus vel, tristique tincidunt nulla. In interdum et tortor eget euismod. Donec accumsan est id sapien blandit, ac consequat nunc fringilla.

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

Nam a nibh eget ligula dapibus laoreet. In eros nisi, lacinia lacinia blandit non, egestas eu orci. Pellentesque congue urna quis nibh consectetur dapibus. Aliquam sollicitudin sem enim, eu imperdiet mi posuere in. Donec quis convallis quam, ac tincidunt tortor. Pellentesque euismod condimentum pretium. Proin ut porta mi. Vivamus vel tellus quis quam lobortis congue ut vel massa. Maecenas eget placerat nisi. Aenean ultrices tellus ac lorem ultricies dapibus. Etiam id lectus consequat, varius lacus venenatis, rhoncus risus. Ut pellentesque ligula vitae eros dictum rutrum. Nulla eu lacus eu ante imperdiet hendrerit et sed nisl. Praesent ut commodo eros.

Proin sodales sapien eget aliquet rutrum. Mauris non porttitor erat. In sed neque ac magna ultrices laoreet a nec urna. In hac habitasse platea dictumst. Praesent diam tortor, cursus et hendrerit eu, luctus sit amet neque. Mauris placerat tincidunt eros semper convallis. Donec ut sodales est. Phasellus a justo nec risus posuere viverra. Donec at tortor nisi. Nullam in turpis tempus, vehicula sem ac, congue velit. Ut placerat, lacus nec blandit facilisis, tortor nunc pretium dui, eget rhoncus massa dolor id nunc. Vivamus blandit, mi at placerat cursus, risus neque egestas purus, vel laoreet risus est id libero. Donec dolor mauris, ultrices euismod consequat a, interdum at orci. Proin ut risus cursus, feugiat odio in, euismod purus.

