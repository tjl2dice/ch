sql = "SELECT COUNT(*) AS ticket_count FROM tickets"
{:ok, results} = Ch.ClickHouseRepo.select(sql)
# results will be a List of Maps. e.g:
# [%{"ticket_count" => 2490065}]
ticket_count = results |> hd() |> Map.get("ticket_count")
IO.puts("#{ticket_count} tickets in the ClickHouse dice.tickets table\n")

sql = "SELECT id, fees FROM dice.tickets WHERE (fees IS NOT NULL) AND (fees != '') AND (fees != '{}') ORDER BY id DESC LIMIT 10"
{:ok, results} = Ch.ClickHouseRepo.select(sql)
IO.inspect(results)
