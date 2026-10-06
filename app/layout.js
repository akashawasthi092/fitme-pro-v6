
export const metadata = { title: 'FitMe Pro OS - Elite Studios' };
export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <head><link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800;900&display=swap" rel="stylesheet"/></head>
      <body style={{margin:0, background:'#080808', fontFamily:'Inter, sans-serif'}}>{children}</body>
    </html>
  );
}
