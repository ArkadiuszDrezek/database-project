CREATE TABLE [dbo].[StockHistory] (
    [TickerSymbol] VARCHAR (4)    NULL,
    [TradeDate]    DATE           NULL,
    [ClosePrice]   DECIMAL (5, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [ix_StockHistory]
    ON [dbo].[StockHistory]([TickerSymbol] ASC, [TradeDate] ASC)
    INCLUDE([ClosePrice]);

