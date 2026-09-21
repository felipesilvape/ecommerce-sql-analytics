# 📊 E-Commerce SQL Analytics & Business Insights

Projeto prático de modelagem relacional e análise de dados utilizando **SQL ANSI**. O objetivo é responder a perguntas estratégicas de negócio de uma operação de e-commerce, extraindo métricas de crescimento, retenção e faturamento.

---

## 🎯 Conceitos e Comandos Utilizados

- **Consultas & Filtros:** `SELECT`, `FROM`, `WHERE`
- **Relacionamentos:** `INNER JOIN`, `LEFT JOIN` (identificação de clientes sem conversão)
- **Agrupamentos & Agregações:** `GROUP BY`, `COUNT`, `SUM`, `AVG`, `ROUND`
- **Ordenação & Limites:** `ORDER BY (ASC / DESC)`, `LIMIT`
- **Filtros Temporais** Intervalos dinâmicos (`INTERVAL`, `CURRENT_DATE`)

---

## 🗄️ Modelo Relacional

O schema simula 4 tabelas relacionais com chaves primárias (`PRIMARY KEY`) e integridade referencial (`FOREIGN KEY`):

- **`customers`**: Cadastro de clientes e data de adesão.
- **`products`**: Catálogo de itens e categorias.
- **`orders`**: Registro de pedidos, status e valor total.
- **`order_items`**: Detalhamento dos itens vinculados a cada pedido.

---
## 💼 Perguntas de Negócio Respondidas

| # | Pergunta de Negócio | Comandos Chave |
|---|---------------------|----------------|
| 1 | Quantos novos clientes se cadastraram na última semana? | `COUNT`, `WHERE`, filtros de data |
| 2 | Qual o produto campeão de vendas nos últimos 30 dias? | `JOIN`, `SUM`, `GROUP BY`, `ORDER BY DESC` |
| 3 | Quem são os Top 5 clientes que mais geraram receita? | `JOIN`, `SUM`, `GROUP BY`, `ORDER BY DESC`, `LIMIT` |
| 4 | Qual o faturamento e ticket médio por categoria? | `JOIN` múltiplo, `AVG`, `SUM`, `GROUP BY` |
| 5 | Quais usuários cadastrados ainda não realizaram compras? | `LEFT JOIN`, `WHERE ... IS NULL` |
| 6 | Qual a distribuição de receita por status de pedido? | `GROUP BY`, `COUNT`, `SUM` |

---

## 🚀 Como Executar

### Pré-requisitos
- PostgreSQL, MySQL ou qualquer cliente SQL (DBeaver, pgAdmin, DataGrip ou terminal).

### Execução
1. Execute o script `sql/01_schema.sql` para criar a estrutura das tabelas.
2. Execute `sql/02_seed_data.sql` para popular a base com registros de teste.
3. Execute `sql/03_business_queries.sql` para visualizar as respostas analíticas.
