document.addEventListener('DOMContentLoaded', () => {
  const statusBox = document.getElementById('status-box');
  const now = new Date();
  statusBox.innerHTML = `
    <p>✅ Status: <strong>Online</strong></p>
    <p>🕐 Loaded at: <strong>${now.toLocaleString()}</strong></p>
    <p>🌐 Served by: <strong>Nginx</strong></p>
    <p>📦 Container: <strong>Docker + k3s</strong></p>
    <p>🔁 CI/CD: <strong>GitHub Actions</strong></p>
  `;
});
