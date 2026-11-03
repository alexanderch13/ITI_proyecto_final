CREATE TABLE IF NOT EXISTS public.clientes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre TEXT NOT NULL,
    correo TEXT,
    nodo_origen TEXT NOT NULL CHECK (nodo_origen IN ('bd1', 'bd2')),
    creado_en TIMESTAMPTZ NOT NULL DEFAULT clock_timestamp()
);

SELECT pglogical.create_node(
    node_name := :'nodo',
    dsn := format(
        'host=%s port=5432 dbname=iti user=postgres password=%s connect_timeout=5',
        :'nodo',
        :'clave'
    )
)
WHERE NOT EXISTS (
    SELECT 1 FROM pglogical.node WHERE node_name = :'nodo'
);

SELECT pglogical.replication_set_add_table(
    'default',
    'public.clientes'::regclass,
    false
)
WHERE NOT EXISTS (
    SELECT 1
    FROM pglogical.tables
    WHERE nspname = 'public'
      AND relname = 'clientes'
      AND set_name = 'default'
);
