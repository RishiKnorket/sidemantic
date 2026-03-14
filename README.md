# SemanticMesh Test Models

This repository contains semantic model definitions for testing the SemanticMesh module.

## Models

- **orders.yml**: Order transactions and revenue metrics
- **customers.yml**: Customer demographics and LTV metrics  
- **products.yml**: Product catalog and inventory metrics
- **combined_model.yml**: Cross-model metrics

## Relationships

- `orders` belongs_to `customers` (via customer_id)
- `orders` belongs_to `products` (via product_id)
- `customers` has_many `orders`
- `products` appears_in `orders`

## Sample Queries

Once loaded, you can ask questions like:

- "Total revenue by month for completed orders"
- "Customer lifetime value by country"
- "Top 10 products by revenue"
- "Monthly active customers and their average order value"
- "Profit margin by product category"

## File Structure
