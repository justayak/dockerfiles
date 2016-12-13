from notebook.auth import passwd

print('generate password..')
pw = passwd('demo')
print('default password generated:' + pw)

print('write to config')
with open('/root/.jupyter/jupyter_notebook_config.py', 'a') as f:
    f.write("c.NotebookApp.password = u'" + pw + "'")
print('setting jupyter password done!')
