
CREATE TABLE usuarios (
    id_usuario              INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombres                 VARCHAR(255) NOT NULL, 
    cargo                   VARCHAR(255) NOT NULL,
    email                   VARCHAR(255) NOT NULL UNIQUE,
    password                TEXT NOT NULL,
    fyh_creacion            DATETIME DEFAULT CURRENT_TIMESTAMP,
    fyh_actualizacion       DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado                  VARCHAR(11) DEFAULT 'activo'
)ENGINE = InnoDB;


INSERT INTO usuarios (nombres, cargo, email, password, estado)
VALUES ('Lyner', 'Administrador', 'admin@admin.com', '$2y$10$0tYmdHU9uGCIxY1f90W1EuIm54NQ8axowkxL1WzLbqO2LdNa8m3l2', 'activo');