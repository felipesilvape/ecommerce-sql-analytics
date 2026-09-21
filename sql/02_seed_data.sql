INSERT INTO customers (name, email, state, created_at) VALUES
('Ana Silva', 'ana.silva@email.com', 'SP', CURRENT_DATE - INTERVAL '3 days'),
('Bruno Santos', 'bruno.santos@email.com', 'RJ', CURRENT_DATE - INTERVAL '5 days'),
('Carla Mendes', 'carla.mendes@email.com', 'MG', CURRENT_DATE - INTERVAL '6 days'),
('Diego Souza', 'diego.souza@email.com', 'SP', CURRENT_DATE - INTERVAL '20 days'),
('Eduarda Rocha', 'eduarda.rocha@email.com', 'PR', CURRENT_DATE - INTERVAL '40 days'),
('Felipe Oliveira', 'felipe.oliveira@email.com', 'SC', CURRENT_DATE - INTERVAL '2 days'),
('Gabriela Torres', 'gabriela.torres@email.com', 'RS', CURRENT_DATE - INTERVAL '60 days');

INSERT INTO products (name, category, price) VALUES
('Teclado Mecânico RGB', 'Periféricos', 250.00),
('Mouse Sem Fio 16000 DPI', 'Periféricos', 180.00),
('Monitor Ultrawide 29"', 'Monitores', 1200.00),
('Cadeira Ergonômica', 'Mobiliário', 890.00),
('Headset 7.1 Surround', 'Áudio', 320.00);

INSERT INTO orders (customer_id, order_date, status, total_amount) VALUES
(1, CURRENT_DATE - INTERVAL '2 days', 'Entregue', 500.00),
(2, CURRENT_DATE - INTERVAL '10 days', 'Entregue', 1380.00),
(3, CURRENT_DATE - INTERVAL '15 days', 'Entregue', 180.00),
(4, CURRENT_DATE - INTERVAL '25 days', 'Entregue', 1780.00),
(5, CURRENT_DATE - INTERVAL '45 days', 'Entregue', 250.00),
(1, CURRENT_DATE - INTERVAL '12 days', 'Cancelado', 320.00),
(2, CURRENT_DATE - INTERVAL '1 day', 'Pendente', 890.00);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 250.00),
(2, 3, 1, 1200.00),
(2, 2, 1, 180.00),
(3, 2, 1, 180.00),
(4, 4, 2, 890.00),
(5, 1, 1, 250.00),
(6, 5, 1, 320.00),
(7, 4, 1, 890.00);
