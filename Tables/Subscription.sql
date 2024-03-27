CREATE TABLE [dbo].[Subscription] (
    [Subscription_ID] INT        NOT NULL,
    [DateJoined]      DATE       NOT NULL,
    [DateLeft]        DATE       NULL,
    [Name]            NCHAR (10) NULL,
    CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED ([Subscription_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idxDateJoined]
    ON [dbo].[Subscription]([DateJoined] ASC);


GO
CREATE NONCLUSTERED INDEX [idxDateLeft]
    ON [dbo].[Subscription]([DateLeft] ASC);

