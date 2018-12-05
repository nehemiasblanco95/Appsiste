export class Roles {

    constructor(
        public idrol: string,
        public rol: string,
        public rep_excel: boolean,
        public reg_solicitud: boolean,
        public edi_solicitud: boolean,
        public cambio_multiple: boolean,
        public seguimiento: boolean,
        public catalogos: boolean,
        public reportes: boolean,
        public config: boolean,
    ) { }
}
