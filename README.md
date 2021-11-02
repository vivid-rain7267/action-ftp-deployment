# FTP Deployment action

Using lftp and alpine image

## Usage

```yml
- name: Run martinkukolos/action-ftp-deployment@v1
    uses: martinkukolos/action-ftp-deployment@v1
    with:
      ftp_server: 'ftp://server.tld'
      ftp_user: 'user'
      ftp_password: 'pa$$word'
      source_folder: './path/to/folder'
```

### Parameters

- `ftp_server`: url to your FTP server
- `ftp_user`: User with access to your FTP share
- `ftp_password`: Your FTP password
- `source_folder`: Folder where are files you want upload to the server If it is not provided, path `./public/` is used.

## License

MIT