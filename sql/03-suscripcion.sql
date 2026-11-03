SET statement_timeout = '30s';

SELECT pglogical.create_subscription(
    subscription_name := :'suscripcion',
    provider_dsn := format(
        'host=%s port=5432 dbname=iti user=postgres password=%s connect_timeout=5',
        :'proveedor',
        :'clave'
    ),
    replication_sets := ARRAY['default'],
    synchronize_structure := false,
    synchronize_data := false,
    forward_origins := ARRAY[]::text[]
)
WHERE NOT EXISTS (
    SELECT 1
    FROM pglogical.subscription
    WHERE sub_name = :'suscripcion'
);

SELECT pglogical.wait_for_subscription_sync_complete(:'suscripcion');

SELECT subscription_name, status, provider_node
FROM pglogical.show_subscription_status();
