--SQL: 7 kyu - Making a changelog
--https://www.codewars.com/kata/5eaecb855179590011d2c020

CREATE FUNCTION on_document_change() RETURNS TRIGGER AS $on_document_change$
  BEGIN
    IF (TG_OP = 'INSERT') THEN
      INSERT INTO documents_changelog(document_id, old_data, new_data) VALUES (new.id, NULL, new.data);
    ELSIF (TG_OP = 'UPDATE') THEN
      INSERT INTO documents_changelog(document_id, old_data, new_data) VALUES (old.id, old.data, new.data);
    ELSIF (TG_OP = 'DELETE') THEN
      INSERT INTO documents_changelog(document_id, old_data, new_data) VALUES (old.id, old.data, NULL);
    END IF;
    RETURN NULL;
  END;
$on_document_change$ LANGUAGE plpgsql;
 
CREATE TRIGGER trigger_document_change
AFTER INSERT OR UPDATE OR DELETE ON documents
FOR EACH ROW EXECUTE PROCEDURE on_document_change();
