
CREATE TABLE roles (

  id_rol        INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre_rol    VARCHAR (255) NOT NULL UNIQUE KEY,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11)

)ENGINE=InnoDB;
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('ADMINISTRADOR','2025-05-22 20:29:10','1');
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('DIRECTOR ACADÉMICO','2025-05-22 20:29:10','1');
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('DIRECTOR ADMINISTRATIVO','2025-05-22 20:29:10','1');
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('CONTADOR','2025-05-22 20:29:10','1');
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('SECRETARIA','2025-05-22 20:29:10','1');
INSERT INTO roles (nombre_rol,fyh_creacion,estado) VALUES  ('DOCENTE','2025-05-22 20:29:10','1');

CREATE TABLE usuarios (

  id_usuario    INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rol_id        INT (11) NOT NULL,
  email         VARCHAR (255) NOT NULL UNIQUE KEY,
  password      TEXT NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (rol_id) REFERENCES roles (id_rol) on delete no action on update cascade

)ENGINE=InnoDB;
INSERT INTO usuarios (rol_id,email,password,fyh_creacion,estado)
VALUES ('1','admin@admin.com','$2y$10$0tYmdHU9uGCIxY1f90W1EuIm54NQ8axowkxL1WzLbqO2LdNa8m3l2','2025-05-22 20:29:10','1');


CREATE TABLE personas (

  id_persona      INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario_id             INT (11) NOT NULL,
  nombres            VARCHAR (50) NOT NULL,
  apellidos          VARCHAR (50) NOT NULL,
  ci                 VARCHAR (20) NOT NULL,
  fecha_nacimiento   VARCHAR (20) NOT NULL,
  profesion          VARCHAR (50) NOT NULL,
  direccion          VARCHAR (255) NOT NULL,
  celular            VARCHAR (20) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario) on delete no action on update cascade

)ENGINE=InnoDB;
INSERT INTO personas (usuario_id,nombres,apellidos,ci,fecha_nacimiento,profesion,direccion,celular,fyh_creacion,estado)
VALUES ('1','admin','admin','12345678','02/02/2004','Prueba','Direccion#1000','00000','2025-05-11 20:29:10','1');

CREATE TABLE administrativos (

  id_administrativo      INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  persona_id             INT (11) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (persona_id) REFERENCES personas (id_persona) on delete no action on update cascade

)ENGINE=InnoDB;



CREATE TABLE docentes (

  id_docente             INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  persona_id             INT (11) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (persona_id) REFERENCES personas (id_persona) on delete no action on update cascade

)ENGINE=InnoDB;

CREATE TABLE estudiantes (

  id_estudiante             INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  persona_id             INT (11) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (persona_id) REFERENCES personas (id_persona) on delete no action on update cascade

)ENGINE=InnoDB;

CREATE TABLE ppffs (

  id_ppff             INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  persona_id             INT (11) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (persona_id) REFERENCES personas (id_persona) on delete no action on update cascade

)ENGINE=InnoDB;



CREATE TABLE configuracion_instituciones (

  id_config_institucion    INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre_institucion       VARCHAR (255) NOT NULL,
  logo                     VARCHAR (255) NULL,
  direccion                VARCHAR (255) NOT NULL,
  telefono                 VARCHAR (100) NULL,
  celular                  VARCHAR (100) NULL,
  correo                   VARCHAR (100) NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11)

)ENGINE=InnoDB;

CREATE TABLE gestiones (

  id_gestion      INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  gestion         VARCHAR (255) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11)

)ENGINE=InnoDB;


CREATE TABLE niveles (

  id_nivel       INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  gestion_id     INT (11) NOT NULL,
  nivel          VARCHAR (255) NOT NULL,
  turno          VARCHAR (255) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11),

  FOREIGN KEY (gestion_id) REFERENCES gestiones (id_gestion) on delete no action on update cascade

)ENGINE=InnoDB;



CREATE TABLE materias (

  id_materia      INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre_materia         VARCHAR (255) NOT NULL,

  fyh_creacion   DATETIME NULL,
  fyh_actualizacion DATETIME NULL,
  estado        VARCHAR (11)

)ENGINE=InnoDB;

