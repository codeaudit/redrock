#Exceptions being handle by scala

import sys, json, time
import resources, GetClusterAndDistance

termsInclude = sys.argv[1].split(',')
termsExclude = sys.argv[2].split(',')

resources.loadDistanceClusterData(sys.argv[3])

################## distance and cluster ##################
distanceCluster = GetClusterAndDistance.getWordDistanceAndCluster(termsInclude, termsExclude)

print json.dumps({'cluster':  distanceCluster[1], 'distance':  distanceCluster[0]})