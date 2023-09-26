
CREATE OR ALTER TRIGGER [schema].[nomeTrigger]
	ON [schema].[tabelaTrigger]
	AFTER INSERT, UPDATE
AS
BEGIN
/*
  inserted: Possui valor quando a ação executada for inserção.
  deleted: Possui valor quando a açao for deleção.

  inserted e deleted: Ambos possuem valor quando a ação for uma alteração.
*/
  SELECT * FROM inserted
  SELECT * FROM deleted
END
