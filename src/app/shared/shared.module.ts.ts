import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { LoadingDirective } from "../directivas/loading.directive";

@NgModule({
    imports: [CommonModule],
    declarations: [LoadingDirective],
    exports: [LoadingDirective]
})
export class SharedModule { }