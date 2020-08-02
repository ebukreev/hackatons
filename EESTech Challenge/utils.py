def rateOvercast(overcast):
    if overcast == "Ясно":
        return 8
    elif overcast == "Облачно с прояснениями":
        return 7
    elif overcast == "Малооблачно":
        return 6
    elif overcast == "Небольшая облачность":
        return 5
    elif overcast == "Переменная облачность":
        return 4
    elif overcast == "Значительная облачность":
        return 3
    elif overcast == "Облачно":
        return 2
    elif overcast == "Пасмурная погода":
        return 1
    else:
        return 0


def rateWeather(weather):
    if weather == "Явления погоды отсутствуют.":
        return 14
    elif weather == "Преимущественно без осадков":
        return 13
    elif weather == "Без осадков.":
        return 12
    elif weather == "Ливневый дождь":
        return 11
    elif weather == "Дождь со снегом":
        return 10
    elif weather == "Сильный ливневый дождь":
        return 9
    elif weather == "Обложной дождь":
        return 8
    elif weather == "Очень сильный ливневый дождь":
        return 7
    elif weather == "Сильный дождь со снегом":
        return 6
    elif weather == "Ливневый снег":
        return 5
    elif weather == "Обложной снег":
        return 4
    elif weather == "Сильный обложной снег":
        return 3
    elif weather == "Замерзающий (переохлажденный) дождь":
        return 2
    elif weather == "Сильный ливневый снег":
        return 1
    else:
        return 0


def normaliseDate(rawDate):
    date = rawDate.split(" ")
    dayMonthYear = date[0].split(".")
    hourMinute = date[1].split(":")
    try:
        hourMinute[0][1]
        return str(dayMonthYear[0]) \
            + str(dayMonthYear[1]) \
            + str(dayMonthYear[2][0]) \
            + str(dayMonthYear[2][1]) \
            + str(dayMonthYear[2][2]) \
            + str(dayMonthYear[2][3]) \
            + str(hourMinute[0][0]) \
            + str(hourMinute[0][1]) \
            + str(hourMinute[1][0]) \
            + str(hourMinute[1][1])
    except IndexError:
        return str(dayMonthYear[0]) \
            + str(dayMonthYear[1]) \
            + str(dayMonthYear[2][0]) \
            + str(dayMonthYear[2][1]) \
            + str(dayMonthYear[2][2]) \
            + str(dayMonthYear[2][3]) \
            + str(hourMinute[0][0])


def mid(data, column):
    s = 0
    k = 0
    for x in data[column]:
        if x != 'nan' and x != 'NaN' and x != '':
            s += x
            k += 1
    return str(s / k)


def prepareData(data):
    data['cloudy'] = data['cloudy'].apply(lambda x: rateOvercast(x))
    mcloudy = mid(data, 'cloudy')
    data['cloudy'] = data['cloudy'].apply(lambda x: str(x).replace('nan', mcloudy))
    data['precip'] = data['precip'].apply(lambda x: rateWeather(x))
    mprecip = mid(data, 'precip')
    data['precip'] = data['precip'].apply(lambda x: str(x).replace('nan', mprecip))
    data['date'] = data['date'].apply(lambda x: normaliseDate(x))
    data['low_c'] = data['low_c'].apply(lambda x: str(x).replace('nan', '0'))
    data['mid_c'] = data['mid_c'].apply(lambda x: str(x).replace('nan', '0'))
    data['hi_c'] = data['hi_c'].apply(lambda x: str(x).replace('nan', '0'))
    return data
