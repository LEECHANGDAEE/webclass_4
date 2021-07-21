





def deco(func):
    def decorated(h, d):
        if h | d <= 0:
            print('Error')
        else:
            func(h, d)
    return decorated

@deco
def sq(h,d):
    print(h*d)

@deco
def tr(h,d):
    print(h*d/2)


sq(-2,3)