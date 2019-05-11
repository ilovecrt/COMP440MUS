CREATE PROCEDURE closeIBSCases

/****** Script for SelectTopNRows command from SSMS  ******/
AS

Update dbo.ticket
SET dbo.ticket.state = REPLACE(state, 'New', 'Closed')

from [dbo].[ticket]
where dbo.ticket.sysinfo = 'IBS'

Update dbo.ticket
SET dbo.ticket.state = REPLACE(state, 'Resolved', 'Closed')

from [dbo].[ticket]
where dbo.ticket.sysinfo = 'IBS'
