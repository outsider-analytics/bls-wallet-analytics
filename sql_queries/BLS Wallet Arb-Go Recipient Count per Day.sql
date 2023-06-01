SELECT
  DATE(TIMESTAMP_SECONDS(id * 86400)) as day, 
  actionsRecipient,
  COUNT(*) AS action_count
FROM 
  `blocktrekker.the_graph_data.bls_wallet_arbitrum_goerli_stats_ts_entities`,
  UNNEST(`blocktrekker.the_graph_data.bls_wallet_arbitrum_goerli_stats_ts_entities`.actionsRecipients) AS actionsRecipient
GROUP BY
  actionsRecipient,
  day 
ORDER BY day