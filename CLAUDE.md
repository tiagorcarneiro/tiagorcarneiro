# Instructions for Claude

## Reading documents: use markitdown first

To save tokens, do not read PDF, Word, Excel, PowerPoint, EPUB, HTML or other
binary/office files directly. Convert them to Markdown first with
[markitdown](https://github.com/microsoft/markitdown), then read the result:

```bash
markitdown "file.pdf" -o /tmp/file.md   # then read /tmp/file.md
```

- Supported: .pdf, .docx, .pptx, .xlsx/.xls, .csv, .json, .xml, .html, .epub,
  .zip (converts each file inside), images (EXIF metadata), audio (transcript).
- For long outputs, search the Markdown with grep or read it in parts instead of
  loading it all at once.
- If `markitdown` is missing, install it: `pip install 'markitdown[all]'`.
- Fall back to reading the file directly only for scanned PDFs or images where
  markitdown returns little or no text and the visual content matters.
- `.drawio` files in this repo are XML; read them as text, no conversion needed.
