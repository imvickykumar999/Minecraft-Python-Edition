
def printPattern(radius=4, y=0):
	import math
	xyz = []

	for x in range((2 * radius)+1):
		for z in range((2 * radius)+1):
			
			dist = math.sqrt((x - radius) * (x - radius) +
				(z - radius) * (z - radius))

			if (dist > radius - 0.5 and dist < radius + 0.5):
				print("*",end=" ")
				xyz.append((x-radius, y ,z-radius))
			else:
				print(" ",end=" ")	
	
		print()
	return xyz

# radius = 10
# xyz = printPattern(radius)
# print(xyz)
