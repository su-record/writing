# Su records

hugo project

## document

- 파일생성

    ```bash
    hugo new folder/filename.md
    ```

- local

    ```bash
    hugo server -D
    ```

- build

    ```bash
    hugo -t hugo-PaperMod
    ```

- git push

    ```sh
    ./push.sh msg
    ```

### warning: LF will be replaced by CRLF in

```bash
window
git config --global core.autocrlf true

linux, Mac
git config --global core.autocrlf input
```

### Updating theme with submodule

```bash
git submodule update --remote --merge
```
