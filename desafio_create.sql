CREATE DATABASE desafio OWNER junia TABLESPACE DEFAULT;

CREATE TABLE suporte (
    suporte_id     INTEGER,
    tipo_suporte   VARCHAR(40) UNIQUE,
    total_tickets  INTEGER,
    PRIMARY KEY(suporte_id)
);

CREATE TABLE tipo_suporte (
    ticket_id         INTEGER,
    ferramentas       VARCHAR(255),
    lead_time_final   DOUBLE PRECISION,
    ajuda             INTEGER,
    PRIMARY KEY(ticket_id),
    FOREIGN KEY(suporte_id)
);

SELECT * FROM suporte
ORDER BY tipo_suporte ASC;

SELECT COUNT(ajuda) FROM tipo_suporte
WHERE ajuda LIKE 'Sim';

SELECT AVG(lead_time_final)
FROM tipo_suporte
WHERE ferramentas LIKE 'Integrações::Apps::RD Station CRM::%';

SELECT * FROM tipo_suporte
WHERE lead_time_final
BETWEEN 40 AND 140;