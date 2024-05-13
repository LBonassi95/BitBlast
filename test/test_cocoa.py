import os

DOMAIN_PATH  = 'test/pddl/briefcase/domain.pddl' 
PROBLEM_PATH = 'test/pddl/briefcase/p09.pddl'
TEST_OUTPUT  = 'OUTPUT'

def test_call_main():
    os.system('python3.10 bin/exec_cocoa.py {} {} {}'.format(
        DOMAIN_PATH,
        PROBLEM_PATH,
        TEST_OUTPUT
    ))

# Esegui la funzione di test per simulare la chiamata
test_call_main()
