
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/08/2024 13:30:12
-- Generated from EDMX file: C:\Users\opilane\source\repos\ado_muudel_Dotskin-Hirmumaja\ado_muudel_Dotskin-Hirmumaja\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'KasutajaSet'
CREATE TABLE [dbo].[KasutajaSet] (
    [kasutajaId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [parool] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KasutajaSet_Kylastus'
CREATE TABLE [dbo].[KasutajaSet_Kylastus] (
    [kylastusId] int IDENTITY(1,1) NOT NULL,
    [sisenes] time  NOT NULL,
    [lahkus] time  NOT NULL,
    [kasutajaId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [kasutajaId] in table 'KasutajaSet'
ALTER TABLE [dbo].[KasutajaSet]
ADD CONSTRAINT [PK_KasutajaSet]
    PRIMARY KEY CLUSTERED ([kasutajaId] ASC);
GO

-- Creating primary key on [kasutajaId] in table 'KasutajaSet_Kylastus'
ALTER TABLE [dbo].[KasutajaSet_Kylastus]
ADD CONSTRAINT [PK_KasutajaSet_Kylastus]
    PRIMARY KEY CLUSTERED ([kasutajaId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [kasutajaId] in table 'KasutajaSet_Kylastus'
ALTER TABLE [dbo].[KasutajaSet_Kylastus]
ADD CONSTRAINT [FK_Kylastus_inherits_Kasutaja]
    FOREIGN KEY ([kasutajaId])
    REFERENCES [dbo].[KasutajaSet]
        ([kasutajaId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------