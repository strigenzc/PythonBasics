import functions_framework
import random as rand

@functions_framework.cloud_event
def hello_cloud_event(cloud_event):
    """
    Inputs:
    Outputs:
    What the function does
    """
    print(f"\nReceived event with ID: {cloud_event['id']} and data {cloud_event.data}\n")

    outcomes = { 'heads':0,
             'tails':0,
             }

    sides = list(outcomes.keys())

    for i in range(10000):
        outcomes[ rand.choice(sides) ] += 1

    print('Heads:', outcomes['heads'])
    print('Tails:', outcomes['tails'])

    ##fakedata
