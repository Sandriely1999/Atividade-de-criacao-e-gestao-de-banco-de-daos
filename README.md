
# Documentação do Banco de Dados

## Modelo Físico de Dados (MFD)

O banco de dados foi modelado para representar um sistema de pedidos. Ele contém as seguintes tabelas:

1. **tb_order**: Representa os pedidos realizados pelos clientes.
    - **id**: Identificador único do pedido (chave primária).
    - **data_hora**: Data e hora do pedido.
    - **orderstatus**: Status do pedido (tinyint).
    - **pagamento**: Forma de pagamento (tinyint).
    - **total_price**: Valor total do pedido.
    - **client_id**: Relacionamento com a tabela `tb_user`.

2. **tb_order_item**: Representa os itens incluídos em um pedido.
    - **id**: Identificador único do item do pedido (chave primária).
    - **quantity**: Quantidade de itens.
    - **dish_id**: Relacionamento com a tabela `tb_product`.
    - **order_id**: Relacionamento com a tabela `tb_order`.

3. **tb_product**: Contém informações dos produtos disponíveis.
    - **id**: Identificador único do produto (chave primária).
    - **availability**: Indica se o produto está disponível (booleano).
    - **description**: Descrição do produto.
    - **image**: Imagem do produto (armazenada como LONGTEXT).
    - **name**: Nome do produto.
    - **price**: Preço do produto.

4. **tb_user**: Contém informações dos clientes.
    - **id**: Identificador único do cliente (chave primária).
    - **address**: Endereço do cliente.
    - **name**: Nome do cliente.
    - **phone**: Telefone do cliente.

### Relacionamentos
- A tabela `tb_order` está relacionada à tabela `tb_user` pela coluna `client_id`.
- A tabela `tb_order_item` está relacionada às tabelas `tb_order` e `tb_product` pelas colunas `order_id` e `dish_id`, respectivamente.

## Execução do Script DDL no MySQL

### Passos:
1. Abra o MySQL Workbench ou qualquer cliente MySQL de sua preferência.
2. Conecte-se ao banco de dados.
3. Crie um novo esquema (database) para o projeto:
    ```sql
    CREATE DATABASE sistema_pedidos;
    USE sistema_pedidos;
    ```
4. Execute o script SQL fornecido:
    - Abra o arquivo `ddl_Mayk.sql` e cole o conteúdo no editor do cliente MySQL.
    - Execute o script para criar as tabelas e relacionamentos.
5. Verifique se as tabelas foram criadas corretamente com o comando:
    ```sql
    SHOW TABLES;
    ```

## Observações Adicionais

- **Dependências**:
  - O script utiliza o mecanismo de armazenamento `InnoDB` para suportar chaves estrangeiras.
  - Certifique-se de que o MySQL esteja configurado para usar o charset `latin1`.

- **Restrições**:
  - A tabela `tb_order_item` depende das tabelas `tb_order` e `tb_product`.
  - Certifique-se de inserir dados nas tabelas `tb_user` e `tb_product` antes de criar registros em `tb_order` e `tb_order_item`.

