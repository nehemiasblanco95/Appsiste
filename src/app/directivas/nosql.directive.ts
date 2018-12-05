import { Directive, ElementRef, Renderer2 } from '@angular/core';
import { NgModel } from '@angular/forms';

@Directive({
  selector: '[Nosql]',
  providers: [NgModel],
  host: {
    '(ngModelChange)': 'onInputChange($event)'
  }
})
export class NosqlDirective {

  constructor(private model: NgModel) { }

  onInputChange(event) {
    var re = /select|insert|delete|update|from|script|<|>/gi;
    this.model.valueAccessor.writeValue( event.replace(re, ''));
  }

}
