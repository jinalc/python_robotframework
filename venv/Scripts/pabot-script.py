#!c:\users\subrat_das\desktop\epam\demo_projects_for_automation_training\robot_framework\venv\scripts\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'robotframework-pabot==2.0.0','console_scripts','pabot'
__requires__ = 'robotframework-pabot==2.0.0'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('robotframework-pabot==2.0.0', 'console_scripts', 'pabot')()
    )
