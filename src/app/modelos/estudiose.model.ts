import { Beneficiario } from './beneficiario.model';
export class EstudioSocioeconomico {
    public folio: string;
    public fecha_nacimiento: Date;
    public idarea: any;
    public nombre: string;
    public paterno: string;
    public materno: string;
    public edad: number;
    public ine: string;
    public curp: string;
    public calle: string;
    public entre_calles: string;
    public numero_exterior: string;
    public numero_interior: string;
    public idcolonia: number;
    public cp: string;
    public referencia: string;
    public nacimiento_localidad: string;
    public nacimiento_municipio: string;
    public entidad: string;
    public pais: string;
    public idestado_civil: number;
    public leer_escribir: number;
    public escolaridad: number;
    public discapacidad: number;
    public discapacidad_especifique: string;
    public telefono: string;
    public telefono_familia: string;
    public celular: string;
    public personas_sueldo: number;
    public sueldo_mensual_familiar: number;
    public pago_agua: number;
    public pago_luz: number;
    public pago_comida: number;
    public pago_ropa: number;
    public pago_pasajes: number;
    public pago_renta: number;
    public pago_medicamentos: number;
    public pago_estudios: number;
    public pago_otros_gastos: number;
    public fuente_ingresos: number;
    public monto_mensual: number;
    public fuente_ingresos_otro: number;
    public monto_mensual_otro: number;
    public seguro_especifique: string;
    public idseguro: number;
    public preg_seguros: object;
    public huerto_familiar: number;
    public idtipo_apoyo: number;
    public observaciones: string;
    public beneficiario: Beneficiario[];
    public finado: number;
    public idvivienda: number;
    public iddrenaje: number;

    constructor() {

        this.beneficiario = [new Beneficiario, new Beneficiario];
        this.folio = null;
        this.fecha_nacimiento = new Date();
        this.idarea = 1;
        this.nombre = '';
        this.paterno = '';
        this.materno = '';
        this.edad = null;
        this.ine = '';
        this.curp = '';
        this.calle = '';
        this.entre_calles = '';
        this.numero_exterior = '';
        this.numero_interior = '';
        this.idcolonia = 1;
        this.cp = null;
        this.referencia = '';
        this.nacimiento_localidad = '';
        this.nacimiento_municipio = '';
        this.entidad = '';
        this.pais = '';
        this.idestado_civil = 1;
        this.leer_escribir = 1;
        this.escolaridad = 1;
        this.discapacidad = 1;
        this.discapacidad_especifique = '';
        this.telefono = '';
        this.telefono_familia = '';
        this.celular = '';
        this.personas_sueldo = 1; //cuantas
        this.sueldo_mensual_familiar = null;
        this.pago_agua = null;
        this.pago_luz = null;
        this.pago_comida = null;
        this.pago_ropa = null;
        this.pago_pasajes = null;
        this.pago_renta = null;
        this.pago_medicamentos = null;
        this.pago_estudios = null;
        this.pago_otros_gastos = null;
        this.fuente_ingresos = 1;
        this.monto_mensual = null;
        this.fuente_ingresos_otro = 1;
        this.monto_mensual_otro = null;
        this.seguro_especifique = '';
        this.idseguro = 1;
        this.huerto_familiar = 1;
        this.idtipo_apoyo = 1;
        this.observaciones = 'string';
        this.finado = 1;
        this.idvivienda = 1;
        this.iddrenaje = 1;
        this.preg_seguros = {
            imss: false,
            issste: false,
            seguro_popular: false,
            pemex: false
        }
    }

    agregar_beneficiario() {
        if (this.beneficiario.length < 2) {
            this.beneficiario.push(new Beneficiario);
        }
    }

    quitar_beneficiario(i) {
        if (this.beneficiario.length > 1) {
            this.beneficiario.splice(i, 1);
        }
    }

    ver() {
        console.log(this);
    }
}