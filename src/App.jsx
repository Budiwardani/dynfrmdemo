const apiUrl = import.meta.env.VITE_API_URL || 'https://api.dynfrm.example.com';

const stats = [
  { label: 'Open Work Orders', value: '128', delta: '+12%' },
  { label: 'In Progress', value: '46', delta: '+8%' },
  { label: 'Completed', value: '320', delta: '+15%' },
  { label: 'Pending QA', value: '19', delta: '-3%' },
];

const jobs = [
  { id: 'WO-1024', client: 'RS Harapan', unit: 'AC-08', status: 'On Progress', date: '2026-08-18' },
  { id: 'WO-1027', client: 'Klinik Sehat', unit: 'GenSet-02', status: 'Pending', date: '2026-08-18' },
  { id: 'WO-1030', client: 'Hotel Mentari', unit: 'Boiler-01', status: 'Completed', date: '2026-08-17' },
  { id: 'WO-1032', client: 'RSUD Cendana', unit: 'Elevator-03', status: 'On Progress', date: '2026-08-17' },
];

const statusClass = {
  Pending: 'badge pending',
  'On Progress': 'badge progress',
  Completed: 'badge success',
};

export default function App() {
  return (
    <div className="app-shell">
      <aside className="sidebar">
        <div className="brand-block">
          <div className="brand-logo">D</div>
          <div>
            <p className="small-label">SYSTEM</p>
            <h3>DynFRM</h3>
          </div>
        </div>

        <nav className="nav">
          <button className="nav-item active">Dashboard</button>
          <button className="nav-item">Work Orders</button>
          <button className="nav-item">Technicians</button>
          <button className="nav-item">Hospitals</button>
          <button className="nav-item">Reports</button>
        </nav>

        <div className="sidebar-card">
          <p className="small-label">MODE</p>
          <strong>DEMO PROGRAM</strong>
        </div>
      </aside>

      <main className="content">
        <header className="topbar">
          <div>
            <p className="small-label">Operation Center</p>
            <h1>Maintenance Dashboard</h1>
          </div>
          <div className="topbar-actions">
            <button className="ghost-btn">Export</button>
            <button className="primary-btn">Create Work Order</button>
          </div>
        </header>

        <section className="stats-grid">
          {stats.map((item) => (
            <article className="stat-card" key={item.label}>
              <p>{item.label}</p>
              <div className="stat-row">
                <strong>{item.value}</strong>
                <span>{item.delta}</span>
              </div>
            </article>
          ))}
        </section>

        <section className="main-panel">
          <div className="panel-header">
            <h2>Recent Work Orders</h2>
            <button className="ghost-btn small">View All</button>
          </div>

          <table>
            <thead>
              <tr>
                <th>ID</th>
                <th>Client</th>
                <th>Unit</th>
                <th>Status</th>
                <th>Date</th>
              </tr>
            </thead>
            <tbody>
              {jobs.map((job) => (
                <tr key={job.id}>
                  <td>{job.id}</td>
                  <td>{job.client}</td>
                  <td>{job.unit}</td>
                  <td>
                    <span className={statusClass[job.status]}>{job.status}</span>
                  </td>
                  <td>{job.date}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </section>

        <section className="bottom-grid">
          <div className="chart-panel">
            <div className="panel-header">
              <h2>Service Load</h2>
            </div>
            <div className="bars">
              {[48, 72, 40, 65, 78, 58, 83].map((value, idx) => (
                <span key={idx} style={{ height: `${value}%` }} />
              ))}
            </div>
          </div>

          <div className="info-panel">
            <div className="panel-header">
              <h2>API Target</h2>
            </div>
            <p className="api-label">Backend Laravel</p>
            <code>{apiUrl}</code>
            <p className="hint">
              Frontend demo akan terhubung ke backend VPS pada saat deployment production.
            </p>
          </div>
        </section>
      </main>
    </div>
  );
}
