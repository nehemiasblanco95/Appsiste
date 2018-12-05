

export class Usuario {
    constructor(
        public correo: string,
        public password: string,
        public idusuario?: string,
        public nombre?: string,
        public appaterno?: string,
        public apmaterno?: string,
        public idciudadano?: string,
        public iddirectivo?: string,
        public idrol?: string,
        public habilitado?: string
    ) { }
}
