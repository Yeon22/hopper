# GET /banners/:id

## Response

```
{
  banner: {
    id: INT,
    title: VARCHAR,
    description: TEXT,
    site_url: VARCHAR,
    image_url: VARCHAR,
  },
  banners: [
    {
      id: INT,
      title: VARCHAR,
      description: TEXT,
      site_url: VARCHAR,
      image_url: VARCHAR,
    }
  ]
}
```
