#user enters ticker and it deletes any reference from across all fields

#user enters source and it deletes across all fields
from Cramer_bot.data_python_collection.conn_auth import get_dbConn

conn = get_dbConn()


def user_delete(ticker):
	conn.execute("DELETE FROM StockInformation WHERE ticker = (%s)", ticker)


#user_delete('test')