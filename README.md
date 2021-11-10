# FTP Deployment action

Using lftp and alpine image

## Usage

```yml
- name: Run martinkukolos/action-ftp-deployment@v1
    uses: martinkukolos/action-ftp-deployment@v1
    with:
      ftp-server: 'ftp://server.tld'
      ftp-user: 'user'
      ftp-password: 'pa$$word'
      source-folder: './path/to/folder'
```

### Parameters

- `ftp-server`: url to your FTP server
- `ftp-user`: User with access to your FTP share
- `ftp-password`: Your FTP password
- `source-folder`: Folder where are files you want upload to the server If it is not provided, path `./public/` is used.

## License

MIT