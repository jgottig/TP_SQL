-- TP 2

-- Ejercicio 2

ALTER TABLE CLIENTES
ADD CONSTRAINT CK_ClientePersona_Empresa
CHECK (
    (razon_social IS NOT NULL AND cuit IS NOT NULL AND dni IS NULL)
    OR
    (razon_social IS NULL AND cuit IS NULL AND dni IS NOT NULL)
);

-- Ejercicio 3

CREATE INDEX IX_VIAJES_ProvDestino ON VIAJES (provincia_destino);
CREATE INDEX IX_VIAJES_CiudadOrigen ON VIAJES (ciudad_origen);
CREATE INDEX IX_VIAJES_IdCliente ON VIAJES (id_cliente);
CREATE INDEX IX_VIAJES_IdCamion ON VIAJES (id_camion);
CREATE INDEX IX_VIAJES_FechaSalidaEstimada ON VIAJES (fecha_salida_estimada);

CREATE INDEX IX_CHOFERES_IdCamion ON CHOFERES (camion_asignado);

CREATE INDEX IX_CLIENTES_DNI ON CLIENTES (dni);

-- Ejercicio 4 parte 1

USE [DB_TP]
GO

CREATE PROCEDURE usp_ActualizarViajeEnvio
    @ViajeID INT,
    @NuevaFechaLlegadaEstimada DATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE VIAJES
    SET fecha_llegada_estimada = @NuevaFechaLlegadaEstimada
    WHERE viajeID = @ViajeID AND fecha_llegada_real IS NULL;
END;

-- Ejercicio 5

USE [DB_TP]
GO

CREATE PROCEDURE usp_ObtenerPatenteCamionAsignado
    @DNIChofer INT,
    @FechaConsulta DATE,
    @MensajeResultado NVARCHAR(255) OUTPUT,
    @PatenteCamion NVARCHAR(10) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CamionID INT;

    SELECT @CamionID = camion_asignado
    FROM CHOFERES
    WHERE numero_dni = @DNIChofer;

    IF @CamionID IS NOT NULL
    BEGIN
        SELECT @MensajeResultado = 'Chofer encontrado y tiene un camión asignado en la fecha dada.';
        SELECT @PatenteCamion = patente
        FROM CAMIONES
        WHERE id_camion = @CamionID;
    END
    ELSE
    BEGIN
        SELECT @MensajeResultado = 'Chofer no encontrado o no tiene un camión asignado en la fecha dada.';
        SELECT @PatenteCamion = NULL;
    END;
END;
