## Quickstart Information

Run using the following docker run command. Make sure to:
* Update the config and data paths. The config path is where your hass configuration is stored and the data path stores some small amount of data for vscode to be presistant.
* Create a long lived token and set the HASS_TOKEN and HASS_SERVER environmental variables

```
docker run -d --name hass-vscode \
  -e HASS_TOKEN=<insert token> \
  -e HASS_SERVER=<insert server url> \
  -p "1337:1337" \
  -v </path/to/config>:/config \
  -v </path/to/data>:/data \
  jshridha/hass-vscode
```
