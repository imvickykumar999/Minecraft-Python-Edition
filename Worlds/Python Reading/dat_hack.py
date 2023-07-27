import os

with open('level.dat', 'rt', encoding="utf8") as fin:
    with open('out.dat', 'wt', encoding="utf8") as fout:
        for i, line in enumerate(fin):
            print(i, line)
            # if i == 5164:
            #     fout.write('1\n')
            # else:
            #     fout.write(line)

# os.rename('out.dat', 'level.dat')
