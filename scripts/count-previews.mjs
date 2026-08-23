import { readFileSync } from "node:fs";
const d = JSON.parse(
  readFileSync(
    new URL("../source/motionsites_all_prompts.json", import.meta.url),
  ),
);

function extractPreview(text) {
  const urls = [...text.matchAll(/https?:\/\/[^\s)\]"'<>]+/g)].map((m) =>
    m[0].replace(/\\$/, ""),
  );
  const gif = urls.find((u) => /\.gif(\?|$)/i.test(u));
  if (gif) return { url: gif, kind: "gif" };
  const mp4 = urls.find((u) => /\.mp4(\?|$)/i.test(u));
  if (mp4) return { url: mp4, kind: "video" };
  const higgs = urls.find((u) => u.includes("images.higgs.ai"));
  if (higgs) return { url: higgs, kind: "image" };
  const cdn = urls.find(
    (u) => u.includes("cloudinary.com") && /\.(png|jpg|webp|gif)/i.test(u),
  );
  if (cdn) return { url: cdn, kind: "image" };
  const img = urls.find((u) => /\.(png|jpe?g|webp)(\?|$)/i.test(u));
  if (img) return { url: img, kind: "image" };
  return null;
}

let n = 0;
const kinds = {};
for (const p of d) {
  const prev = extractPreview(p.prompt_text || "");
  if (prev) {
    n++;
    kinds[prev.kind] = (kinds[prev.kind] || 0) + 1;
  }
}
console.log("with preview", n, "/", d.length, kinds);
