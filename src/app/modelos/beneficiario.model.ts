export class Beneficiario {
    public nombre: string;
    public paterno: string;
    public materno: string;
    public edad: number;
    public curp: number;
    public fecha_n: Date;
    

    constructor() {
        this.nombre = '';
        this.paterno = '';
        this.materno = '';
        this.curp = null;
        this.edad = null;
        this.fecha_n = new Date();
    }

}