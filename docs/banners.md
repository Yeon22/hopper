# GET /banners/:id

## Response

```
{
  banner: {
    id: INT,
    title: VARCHAR,
    description: TEXT,
    site_url: VARCHAR,
    thumbnail_url: VARCHAR,
    tags: VARCHAR
  },
  banners: [
    {
      id: INT,
      title: VARCHAR,
      description: TEXT,
      site_url: VARCHAR,
      thumbnail_url: VARCHAR,
      tags: VARCHAR
    }
  ]
}
```
