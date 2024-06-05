CREATE OR REPLACE PACKAGE PKG_KAFKA
AS

vURL_PROD varchar2(100) :='<host>:<port>/put_message';
vURL_TEST varchar2(100) :='<host>:<port>/put_message';

-- Отправка сообщений в KAFKA PROD
FUNCTION SEND_MESSAGE(vTOPIC 	IN VARCHAR, 
					cVALUE 		IN CLOB, 
					vKEY 		IN VARCHAR2) RETURN NUMBER;
				
-- Отправка сообщений в KAFKA TEST
FUNCTION SEND_MESSAGE_TEST(vTOPIC 	IN VARCHAR, 
						cVALUE 		IN CLOB, 
						vKEY 		IN VARCHAR2) RETURN NUMBER;
				
END PKG_KAFKA;