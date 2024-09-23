function setFavicon(dark) {
  console.log({ dark });

  const favicon = document.querySelector('link[rel="icon"]');
  const name = dark ? "icon_dark" : "icon";
  favicon.href = `/assets/${name}.svg`;
}

document$.subscribe(() => {
  const query = window.matchMedia("(prefers-color-scheme: dark)");

  setFavicon(query.matches);

  query.addEventListener("change", (event) => {
    setFavicon(event.matches);
  });
});
