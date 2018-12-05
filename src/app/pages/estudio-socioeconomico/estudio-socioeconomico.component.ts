import { Component, AfterViewInit, OnInit } from '@angular/core';
import Swal from "sweetalert2";
import { AuthService, EstudioSocioeconomicoService } from "../../servicios/servicio.index";
import { EstudioSocioeconomico } from '../../modelos/modelos.index';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-estudio-socioeconomico',
  templateUrl: './estudio-socioeconomico.component.html'
})
export class EstudioSocioeconomicoComponent implements OnInit {
  load = true;
  estudio = new EstudioSocioeconomico;
 


  apoyos:any;
  playLoad: any;
  nuevo: boolean;
  errMsj: string;
  date: Date = new Date();
  settings = {
    bigBanner: true,
    timePicker: false,
    format: 'dd/MM/yyyy',
    cal_days_labels: ['Do', 'Lu', 'Ma', 'Mi', 'Jue', 'Vi', 'Sa'],
    cal_full_days_lables: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
    cal_months_labels: ['Enero', 'Febrero', 'Marzo', 'Abril',
      'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre',
      'Octubre', 'Noviembre', 'Diciembre'],
    cal_months_labels_short: ['ENE', 'FEB', 'MAR', 'ABR',
      'MAY', 'JUN', 'JUL', 'AGO', 'SEP',
      'OCT', 'NOV', 'DIC'],
    defaultOpen: false,
    closeOnSelect: true,

  };
  // no aplica cambio
  coCovil = [{
    id: '1',
    name: 'Soltero',
  },
  {
    id: '2',
    name: 'Casado',
  },
  {
    id: '3',
    name: 'Union Libre',
  }]

  coSiNo = [{
    id: '0',
    name: 'SI',
  },
  {
    id: '1',
    name: 'NO',
  }]

// idpregunta 2
  coVivienda = [{
    id: '1',
    name: 'Porpia',
  },
  {
    id: '2',
    name: 'Rentada',
  },
  {
    id: '3',
    name: 'Prestada',
  },
  {
    id: '4',
    name: 'Como prestación de un trabajo',
  },
  ];
  
//idpregunta 8
  coDrenaje = [{
    id: '160',
    name: 'Red pública',
  },
  {
    id: '161',
    name: 'Fosa séptica',
  },
  {
    id: '162',
    name: 'No tiene drenaje',
  },
  ];

  dropdownList = [];
  selectedItems = [];
  coMuros = [];
  // idpregunta 3
  murosSeleccionados= {
    idpregunta:1,
    respuestas:[]
  };
//idpregunta4
  coTechos = [];
  techosSeleccionados= {
    idpregunta: 4,
    respuestas: []
  };
//idpregunta 5
  coPisos = [];
  pisosSeleccionados= {
    idpregunta: 5,
    respuestas: []
  };
//idpregunta 6
  coVivienda2 = [];
  vivienda2Seleccionados= {
    idpregunta: 6,
    respuestas: []
  };
//idpregunta 7
  coAgua = [];
  aguaSeleccionados= {
    idpregunta: 7,
    respuestas: []
  };
// idpregunta 9
  coLuz = [];
  luzSeleccionados= {
    idpregunta: 9,
    respuestas: []
  };
//idpregunta 10
  coHogar = [];
  hogarSeleccionados= {
    idpregunta: 10,
    respuestas: []
  };
// idpregunta 11
  coCombustible = [];
  combustibleSeleccionados= {
    idpregunta: 11,
    respuestas: []
  };
  //idpregunta 1
  coSeguros = [];
  segurosSeleccionados= {
    idpregunta: 1,
    respuestas: []
  };

  dropdownSettings = {};
  router: any;

  constructor(private _estudioService: EstudioSocioeconomicoService){
    this._estudioService
      .getApoyos()
      .subscribe(
        data => {
          this.apoyos = data.registro;
          this.load = false;
        },
        err => {
          this.errMsj = err.error.mensaje;
          this.load = false;
        },
      );
  }

  ngOnInit() {
    console.log(this.estudio);
    //catalogo muros
    this.coMuros = [
      { item_id: 127, item_text: 'Lámina' },
      { item_id: 128, item_text: 'Madera' },
      { item_id: 129, item_text: 'Block' },
      { item_id: 130, item_text: 'Ladrillo' },
      { item_id: 131, item_text: 'Cartón' },
      { item_id: 132, item_text: 'Hule' }
    ];
    
    this.coTechos = [
      { item_id: 133, item_text: 'Lámina' },
      { item_id: 134, item_text: 'Teja' },
      { item_id: 135, item_text: 'Cemento' },
      { item_id: 136, item_text: 'Cartón' },
      { item_id: 137, item_text: 'Hule' },
      { item_id: 138, item_text: 'Madera' }
    ];

    this.coPisos = [
      { item_id: 139, item_text: 'Tierra' },
      { item_id: 140, item_text: 'Cemento firme' },
      { item_id: 141, item_text: 'Mosaico' },
      { item_id: 142, item_text: 'Madera' }
    ];

    this.coVivienda2 = [
      { item_id: 143, item_text: 'Cuartos' },
      { item_id: 144, item_text: 'Comedor' },
      { item_id: 145, item_text: 'Sala' },
      { item_id: 146, item_text: 'Cocina' },
      { item_id: 147, item_text: 'Regadera' },
      { item_id: 148, item_text: 'Letrina' },
      { item_id: 149, item_text: 'Pasillo' },
      { item_id: 150, item_text: 'Patio' },
      { item_id: 151, item_text: 'Cochera' },
      { item_id: 152, item_text: 'Sanitario' },
      { item_id: 153, item_text: 'Cuarto de servicio' }
    ];

    this.coAgua = [
      { item_id: 154, item_text: 'Red pública dentro de la vivienda' },
      { item_id: 155, item_text: 'Entubada en el terreno' },
      { item_id: 156, item_text: 'Llave pública' },
      { item_id: 157, item_text: 'De otra vivienda' },
      { item_id: 158, item_text: 'Una pipa' },
      { item_id: 159, item_text: 'Comprada en garrafon' },
    ];

    this.coLuz = [
      { item_id: 163, item_text: 'Energia eléctrica' },
      { item_id: 164, item_text: 'Celda solar' },
      { item_id: 165, item_text: 'Lámpara de baterias' },
      { item_id: 166, item_text: 'Velas o veladoras' },
    ];
    this.coHogar = [
      { item_id: 175, item_text: 'Lavadora' },
      { item_id: 173, item_text: 'Regrigerador' },
      { item_id: 177, item_text: 'Cama' },
      { item_id: 178, item_text: 'Estufa' },
      { item_id: 179, item_text: 'T.V.' },
      { item_id: 180, item_text: 'Radio' },
      { item_id: 181, item_text: 'Computadora' },
      { item_id: 182, item_text: 'Internet' },
      { item_id: 183, item_text: 'Línea Telefónica' },
      { item_id: 184, item_text: 'Celular' },
      { item_id: 185, item_text: 'VHS o DVD' },
      { item_id: 186, item_text: 'Bioler' },
      { item_id: 187, item_text: 'Automovil' },
      { item_id: 188, item_text: 'Camioneta' },
    ];

    this.coCombustible = [
      { item_id: 189, item_text: 'Leña' },
      { item_id: 190, item_text: 'Carbón' },
      { item_id: 191, item_text: 'Gas' },
      { item_id: 192, item_text: 'Parilla Eléctrica' },
      { item_id: 193, item_text: 'Papel o cartón' },
    ];

    this.coSeguros = [
      { item_id: 118, item_text: 'IMSS' },
      { item_id: 119, item_text: 'ISSSTE' },
      { item_id: 120, item_text: 'Seguro Popular' },
      { item_id: 121, item_text: 'Pemex' },
    ];

 

  // this.selectedItems = [
  //   { item_id: 3, item_text: 'Pune' },
  //   { item_id: 4, item_text: 'Navsari' }
  // ];

  this.dropdownSettings = {
    singleSelection: false,
    idField: 'item_id',
    textField: 'item_text',
    selectAllText: 'Seleccionar Todos',
    unSelectAllText: 'Deseleccionar Todos',
    itemsShowLimit: 4,
    allowSearchFilter: false
  };
  

}
onItemSelect(item: any) {
  console.log(item);
}
onSelectAll(items: any) {
  console.log(items);
}

  onSubmit() {
    this.nuevo = true;
    this.load = true;
    if (this.nuevo) {
      this._estudioService
        .agregarEstudio(this.estudio)
        .subscribe(
          data => {
            console.log(data);
            // this.router.navigate(['/apoyos']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            console.log(err);
            this.load = false;
          }
        );
    } else {
      this._estudioService
        .actualizarEstudio(this.estudio)
        .subscribe(
          data => {
            console.log(data);
            // this.router.navigate(['/apoyos']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            this.load = false;
          }
        );
    }
  }
  
  

}

