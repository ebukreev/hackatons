import pandas
from sklearn.ensemble import RandomForestClassifier
import joblib
from utils import prepareData

data = pandas.read_csv('./train.csv', encoding='windows-1251', sep=';', low_memory=False)
model = RandomForestClassifier(n_estimators=3, max_depth=7, bootstrap=False, n_jobs=4)

data = prepareData(data)

X = data[['object', 'date', 'low_c', 'mid_c', 'hi_c', 'cloudy', 'precip']]
Y = data['fact']
model.fit(X, Y)
joblib.dump(model, './model.sav')
