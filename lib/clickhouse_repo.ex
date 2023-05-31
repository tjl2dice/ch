defmodule Ch.ClickHouseRepo do
  use Pillar,
    connection_strings: ["http://default:@localhost:8123/dice"],
    name: __MODULE__,
    pool_size: 5
end
