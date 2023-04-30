
`Continue World` :

        python minecraft.py home night

`New World` :

        python reset.py ground
        
`On Reset` : 

        {"position": []}
        
------------------------

`Arguments` **are** `world` *and* `sky` :

        try:
                data = sys.argv[1]
        except:
                data = 'home'

        try:
                sky = sys.argv[2]
        except:
                sky = 'night'


