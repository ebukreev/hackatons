import joblib
import pandas
from utils import prepareData

model = joblib.load('./model.sav')
dataTest = pandas.read_csv('./test.csv', encoding='windows-1251', sep=';', low_memory=False)
dataTest = dataTest[['object', 'date', 'low_c', 'mid_c', 'hi_c', 'cloudy', 'precip']]
dataTest = prepareData(dataTest)
dataTest['fact'] = model.predict(dataTest)
dataTest['fact'] = dataTest['fact'].apply(lambda x: round(x))
dataTest.to_csv('./result.csv', sep=';')
