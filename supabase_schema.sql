-- Crear tabla de ubicaciones
CREATE TABLE ubicaciones (
    id UUID PRIMARY KEY,
    latitud FLOAT8 NOT NULL,
    longitud FLOAT8 NOT NULL,
    dispositivo TEXT NOT NULL,
    meta_datos JSONB,
    ultima_actualizacion TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
-- Habilitar Realtime para la tabla ubicaciones
-- Esto es crucial para que el panel de administración pueda escuchar los cambios
ALTER PUBLICATION supabase_realtime ADD TABLE ubicaciones;

-- (Opcional) Políticas de seguridad Row Level Security (RLS)
-- Asegúrate de configurarlas para producción, por ahora las desactivamos temporalmente o permitimos todo
-- ALTER TABLE ubicaciones ENABLE ROW LEVEL SECURITY;
-- CREATE POLICY "Permitir todo temporalmente" ON ubicaciones FOR ALL USING (true);
