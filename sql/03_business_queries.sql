SELECT 
    COUNT(id) AS novos_usuarios_semana_passada
FROM 
    customers
WHERE 
    created_at >= CURRENT_DATE - INTERVAL '7 days';
    
-- Produto mais vendido nos últimos 30 dias (entregues)
SELECT 
    p.id AS produto_id,
    p.name AS produto_nome,
    p.category AS categoria,
    SUM(oi.quantity) AS total_unidades_vendidas,
    SUM(oi.quantity * oi.unit_price) AS faturamento_total
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.id
JOIN 
    orders o ON oi.order_id = o.id
WHERE 
    o.status = 'Entregue'
    AND o.order_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY 
    p.id, p.name, p.category
ORDER BY 
    total_unidades_vendidas DESC
LIMIT 1;

-- Top 5 clientes mais valiosos
SELECT 
    c.id AS cliente_id,
    c.name AS cliente_nome,
    c.state AS estado,
    COUNT(o.id) AS total_pedidos,
    SUM(o.total_amount) AS total_gasto
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
WHERE 
    o.status = 'Entregue'
GROUP BY 
    c.id, c.name, c.state
ORDER BY 
    total_gasto DESC
LIMIT 5;

-- Faturamento e ticket médio por categoria
SELECT 
    p.category AS categoria,
    COUNT(DISTINCT o.id) AS quantidade_pedidos,
    SUM(oi.quantity) AS total_itens_vendidos,
    SUM(oi.quantity * oi.unit_price) AS receita_total,
    ROUND(AVG(oi.quantity * oi.unit_price), 2) AS ticket_medio_item
FROM 
    products p
JOIN 
    order_items oi ON p.id = oi.product_id
JOIN 
    orders o ON oi.order_id = o.id
WHERE 
    o.status = 'Entregue'
GROUP BY 
    p.category
ORDER BY 
    receita_total DESC;

-- Clientes inativos (cadastrados sem nenhuma compra)
SELECT 
    c.id AS cliente_id,
    c.name AS cliente_nome,
    c.email,
    c.created_at AS data_cadastro
FROM 
    customers c
LEFT JOIN 
    orders o ON c.id = o.customer_id
WHERE 
    o.id IS NULL
ORDER BY 
    c.created_at ASC;

-- Distribuição de volume e receita por status de pedido
SELECT 
    status,
    COUNT(id) AS total_pedidos,
    SUM(total_amount) AS valor_total,
    ROUND(AVG(total_amount), 2) AS ticket_medio_pedido
FROM 
    orders
GROUP BY 
    status
ORDER BY 
    total_pedidos DESC;