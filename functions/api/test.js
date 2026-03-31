export async function onRequest() {
  return new Response('API is working!', {
    headers: { 'Content-Type': 'text/plain' }
  });
}
