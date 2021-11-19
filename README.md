# Prime Gaming's GraphQL API

Discovered this while making a [calendar app][calendar], might as well
document it. :/

[I'm hosting documentation for this][docs].

The endpoint is `https://gaming.amazon.com/graphql`.

You'll need to specify a `csrf-token` header; you can get it from
`https://gaming.amazon.com/home` and scrape it from the HTML:

```js
function getToken() {
	const el = document.querySelector("input[name=csrf-key]")
	return el.getAttribute("value")
}
```

You're also going to need a [browser user agent][user-agent].

See `download.sh` for info on how to download the schema; tools like
Postman and Insomnia should do this for you.

The schema files in this repository are dated November 18th, 2021. If
you notice they're outdated, run `npm run build` and send a pull request
or simply shoot me an issue.

[docs]: https://supersonichub1.github.io/prime-gaming-graphql/index.html
[calendar]: https://github.com/SuperSonicHub1/PrimeGamingCalendar
[user-agent]: https://www.networkinghowtos.com/howto/common-user-agent-list/
