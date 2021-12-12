d = {'a': 1, 'b': {'c': 2}, 'd': ["hi", {'foo': "bar"}]}
def dict2obj(d):
        if isinstance(d, list):
            d = [dict2obj(x) for x in d]
        if not isinstance(d, dict):
            return d
        class C(object):
            pass
        o = C()
        for k in d:
            o.__dict__[k] = dict2obj(d[k])
        return o

x = dict2obj(d)
print(x.a)
print(x.b.c)
print(x.d)