import {Component} from 'angular2/core';

@Component({
    selector: 'm-app',
    template: '<div>This is my control</div>'
})

export class MyComponent {
    public name: string;
    constructor() {
        this.name = "Manish";
    }
}