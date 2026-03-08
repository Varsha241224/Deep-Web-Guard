# 🛡️ Deep Web Guard - AI-Powered Security Platform

> **Complete Security Solution: Web Vulnerability Scanner + Network Intrusion Detection System**

An enterprise-grade security platform powered by **AI + Machine Learning** that provides comprehensive protection for web applications and network infrastructure.

![Platform](https://img.shields.io/badge/Platform-Complete_Security-blue)
![AI](https://img.shields.io/badge/AI-OpenAI_GPT-orange)
![ML](https://img.shields.io/badge/ML-scikit--learn-red)
![NIDS](https://img.shields.io/badge/NIDS-Scapy-purple)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 🌟 Platform Overview

Deep Web Guard is a **dual-mode security platform** combining:

### 🔍 1. Web Vulnerability Scanner
- **AI-Powered Analysis** - GPT integration for intelligent detection
- **Machine Learning** - Anomaly detection and risk scoring
- **Active Fuzzing** - Payload injection testing
- **CVE Database** - Known vulnerability matching
- **PDF Reports** - Professional security documentation

### 🛡️ 2. Network Intrusion Detection System (NIDS)
- **Real-time Packet Capture** - Live network monitoring with Scapy
- **Hybrid Threat Detection** - Signature-based + ML anomaly detection
- **Interactive Alerts** - Expandable cards with detailed analysis
- **AI-Powered Insights** - GPT-driven threat analysis
- **Live Visualizations** - Charts and particle animations

---

## 🎯 Key Features

### Web Scanner Features
✅ **AI-Powered Vulnerability Detection**
- GPT integration for intelligent analysis
- NLP-powered remediation guidance
- Context-aware false positive filtering

✅ **Machine Learning Analysis**
- One-Class SVM for anomaly detection
- SVR for risk score prediction (0-10)
- 16 security metrics analyzed
- Zero-day vulnerability detection

✅ **Active Security Testing**
- XSS, SQLi, Path Traversal, Command Injection
- Smart payload injection with response analysis
- Rate-limited safe testing

✅ **CVE Database Integration**
- Known vulnerability matching
- Version detection (WordPress, Apache, PHP, nginx)
- Auto-remediation mapping

✅ **Professional PDF Reports**
- Executive-ready documentation
- ML insights and risk assessments
- Step-by-step remediation guides

### NIDS Features
✅ **Real-Time Network Monitoring**
- Live packet capture using Scapy
- Continuous threat detection
- Network traffic analysis

✅ **Hybrid Detection System**
- **Signature-Based:** Port scans, SQL injection, XSS, C2 traffic
- **ML-Based:** Anomaly detection with Isolation Forest
- **AI-Powered:** GPT threat analysis

✅ **Interactive Dashboard**
- Real-time packet flow charts
- Live network activity animations
- Expandable alert cards with tabs
- AI analysis on-demand

✅ **Professional Visualizations**
- Area charts with gradient fills
- Particle-based network animation
- Color-coded severity indicators
- Smooth Framer Motion animations

---

## 🚀 Quick Start

### Prerequisites
- **Node.js 18+**
- **Python 3.8+**
- **Npcap** (Windows) or **libpcap** (Linux/Mac) - for NIDS
- **OpenAI API Key** (for AI analysis)

### 1. Clone Repository
```bash
git clone https://github.com/yourusername/deep-web-guard.git
cd deep-web-guard
```

### 2. Setup ML Service (Required for both features)
```bash
cd ml-service

# Install dependencies
pip install -r requirements.txt

# Add your OpenAI API key
# Create .env file and add:
# OPENAI_API_KEY=your_key_here

# Train ML models (first time only, 2-3 minutes)
python train.py

# Start ML service
python app.py
```

**ML Service:** http://localhost:5001 ✅

### 3. Setup NIDS Service (For network monitoring)
```bash
# Open new terminal
cd nids-service

# Install dependencies
pip install -r requirements.txt

# Start NIDS service (requires admin/sudo)
# Windows:
python app.py

# Linux/Mac:
sudo python app.py
```

**NIDS Service:** http://localhost:5002 ✅

### 4. Setup Backend
```bash
# Open new terminal
cd backend

# Install dependencies
npm install

# Create .env file with API keys
# (Copy from backend/.env.example)

# Start backend
npm start
```

**Backend:** http://localhost:5000 ✅

### 5. Setup Frontend
```bash
# Open new terminal (in project root)
npm install

# Start frontend
npm run dev
```

**Frontend:** http://localhost:8081 ✅

### 6. Access the Platform! 🎉

**Web Scanner:**
- Open: http://localhost:8081
- Go to: Dashboard → New Scan
- Enter URL and start scanning

**Network IDS:**
- Open: http://localhost:8081/nids
- Click "Start Detection"
- Run: `nmap -sS localhost` to test
- Watch real-time alerts!

---

## 📁 Project Structure

```
deep-web-guard/
├── src/                        # React Frontend
│   ├── pages/
│   │   ├── Landing.tsx         # Homepage
│   │   ├── Dashboard.tsx       # Scan management
│   │   ├── ScanConfig.tsx      # Scanner configuration
│   │   ├── Scanning.tsx        # Live scan progress
│   │   ├── Results.tsx         # Scan results
│   │   └── NIDSPageFixed.tsx   # NIDS Dashboard ⭐
│   └── components/             # Reusable UI components
│
├── backend/                    # Node.js Backend
│   ├── server.js              # Express API + NIDS proxy
│   ├── scanner.js             # Web scan orchestration
│   ├── aiAnalyzer.js          # AI vulnerability analysis
│   ├── fuzzer.js              # Payload fuzzing
│   ├── vulnDatabase.js        # CVE checking
│   └── reportGenerator.js     # PDF generation
│
├── ml-service/                 # Python ML Service
│   ├── app.py                 # Flask API + AI analysis
│   ├── train.py               # Model training
│   ├── models/
│   │   ├── svm_model.py       # Anomaly detection
│   │   └── svr_model.py       # Risk scoring
│   └── trained_models/        # Saved ML models
│
├── nids-service/               # Python NIDS Service ⭐
│   ├── app.py                 # Flask API + Packet capture
│   ├── detection.py           # Signature detection
│   ├── ml_detector.py         # Anomaly detection
│   └── requirements.txt
│
├── docs/                       # Documentation
│   ├── AI_ANALYSIS_SETUP.md   # AI integration guide
│   ├── NIDS_QUICKSTART.md     # NIDS setup guide
│   └── ...                    # All other docs
│
└── README.md                  # This file
```

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────┐
│         React Frontend (Port 8081)                  │
│  ┌──────────────────┐  ┌──────────────────┐        │
│  │ Web Scanner UI   │  │ NIDS Dashboard   │        │
│  │ - Scan config    │  │ - Real-time view │        │
│  │ - Results view   │  │ - Interactive    │        │
│  │ - PDF download   │  │ - AI analysis    │        │
│  └──────────────────┘  └──────────────────┘        │
└───────────┬────────────────────┬────────────────────┘
            │                    │
    ┌───────▼────────┐   ┌──────▼──────────┐
    │ Backend        │   │ Backend (Proxy) │
    │ (Port 5000)    │   │ → NIDS Service  │
    │ - Scanner      │   │   (Port 5002)   │
    │ - AI Analysis  │   └─────────────────┘
    │ - Fuzzing      │
    │ - CVE Check    │
    └───────┬────────┘
            │
    ┌───────▼────────────────────────────────┐
    │ ML Service (Port 5001)                 │
    │ - SVM/SVR Models                       │
    │ - OpenAI GPT Analysis ⭐                │
    │ - Feature Engineering                  │
    └────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│ NIDS Service (Port 5002)                            │
│ - Scapy Packet Capture                             │
│ - Signature Detection (Nmap, SQLi, XSS)            │
│ - ML Anomaly Detection (Isolation Forest)          │
│ - Alert Management                                  │
└─────────────────────────────────────────────────────┘
```

---

## 🔬 How It Works

### Web Vulnerability Scanner Flow

1. **User enters URL** → Frontend sends to backend
2. **Web Crawling** → Cheerio extracts forms, headers, technologies
3. **ML Analysis** → Python service predicts anomalies and risk scores
4. **CVE Matching** → Checks for known vulnerabilities
5. **AI Analysis** → GPT analyzes security data
6. **Payload Fuzzing** → Tests for XSS, SQLi, etc.
7. **Results Display** → Shows vulnerabilities with remediation
8. **PDF Generation** → Creates professional report

### NIDS Detection Flow

1. **User starts detection** → NIDS begins packet capture
2. **Packet Analysis** → Scapy captures all network traffic
3. **Signature Detection** → Matches known attack patterns
4. **ML Anomaly Detection** → Identifies unusual network behavior
5. **Alert Generation** → Creates severity-classified alerts
6. **Interactive Display** → Shows expandable alert cards
7. **AI Analysis** → GPT provides context and recommendations
8. **Visualization** → Real-time charts and animations

---

## 🎨 Screenshots

### Web Scanner
- **Dashboard** - Scan management and history
- **Scanning** - Live progress with real-time updates
- **Results** - Detailed vulnerabilities with ML insights
- **PDF Report** - Professional documentation

### NIDS Dashboard
- **Real-time Charts** - Packet flow visualization
- **Network Animation** - Live particle-based activity
- **Interactive Alerts** - Expandable cards with tabs
- **AI Analysis** - GPT-powered threat insights

---

## 🛠️ Tech Stack

### Frontend
- React 18.3 + TypeScript
- Tailwind CSS + shadcn/ui
- Recharts (visualizations)
- Framer Motion (animations)
- Lucide Icons

### Backend
- Node.js + Express
- Axios (HTTP client)
- Cheerio (HTML parsing)
- Puppeteer (PDF generation)

### ML Service
- Python + Flask
- scikit-learn (SVM, SVR)
- OpenAI API (GPT analysis)
- NumPy + Pandas

### NIDS Service
- Python + Flask
- Scapy (packet capture)
- Isolation Forest (anomaly detection)
- Threading (async capture)

---

## 📊 Detection Capabilities

### Web Scanner
✅ Missing Security Headers
✅ Insecure Cookies
✅ CSRF Vulnerabilities
✅ XSS (Reflected, Stored, DOM)
✅ SQL Injection
✅ Path Traversal
✅ Command Injection
✅ Zero-Day Patterns (ML)
✅ Known CVEs

### NIDS
✅ Port Scans (Nmap, Masscan)
✅ SQL Injection (network-level)
✅ XSS Attacks (HTTP traffic)
✅ Brute Force Attempts
✅ C2 Communication
✅ Data Exfiltration
✅ Network Anomalies (ML)
✅ DDoS Patterns

---

## 🧪 Testing

### Test Web Scanner
```bash
# Try these vulnerable sites:
http://testphp.vulnweb.com
http://demo.testfire.net
http://zero.webappsecurity.com
```

### Test NIDS
```bash
# Generate test traffic:

# 1. Port scan (triggers signature detection)
nmap -sS localhost

# 2. SQL injection attempt
curl "http://localhost:5000/api/test?id=1' OR '1'='1"

# 3. Normal traffic (for baseline)
curl http://localhost:5000/api/health
```

---

## 📖 Documentation

Comprehensive guides available in the `docs/` folder:

### Setup & Installation
- **[Quick Start](docs/QUICKSTART.md)** - 5-minute setup
- **[Setup Guide](docs/SETUP_GUIDE.md)** - Detailed installation
- **[NIDS Setup](docs/NIDS_QUICKSTART.md)** - NIDS-specific guide

### Features & Usage
- **[Features Implemented](docs/FEATURES_IMPLEMENTED.md)** - Complete feature list
- **[AI Analysis Setup](docs/AI_ANALYSIS_SETUP.md)** - GPT integration
- **[NIDS Interactive Features](docs/NIDS_INTERACTIVE_FEATURES.md)** - Dashboard guide

### Technical Documentation
- **[Implementation Guide](docs/IMPLEMENTATION_GUIDE.md)** - Architecture details
- **[Project Summary](docs/PROJECT_SUMMARY.md)** - Overview
- **[Components Map](docs/COMPONENTS_MAP.txt)** - File structure

### Troubleshooting
- **[Debug Guide](docs/DEBUG_WHITE_SCREEN.md)** - Common issues
- **[Visualization Fix](docs/VISUALIZATION_FIX.md)** - Chart issues

---

## 🎓 Academic Project

Built as a 2nd-year Engineering project demonstrating:

### Technical Skills
- ✅ Full-stack development (React + Node + Python)
- ✅ AI/ML integration in cybersecurity
- ✅ Real-time data processing
- ✅ Network programming (packet capture)
- ✅ RESTful API design
- ✅ Modern UI/UX design

### Security Concepts
- ✅ OWASP Top 10
- ✅ Network intrusion detection
- ✅ Machine learning in security
- ✅ Threat analysis and response
- ✅ Vulnerability assessment

---

## 🔒 Security & Ethics

⚠️ **IMPORTANT DISCLAIMER**

This tool is for **EDUCATIONAL and AUTHORIZED TESTING ONLY**.

### Allowed Use:
✅ Educational purposes
✅ Testing your own websites
✅ Authorized security assessments
✅ Academic projects

### Prohibited Use:
❌ Unauthorized testing
❌ Malicious activities
❌ Attacking others' systems
❌ Illegal activities

**Unauthorized security testing is illegal and unethical.**

---

## 🐛 Troubleshooting

### Services Won't Start?

**ML Service:**
```bash
# Check port 5001 is free
netstat -ano | findstr :5001

# Reinstall dependencies
cd ml-service
pip install -r requirements.txt
```

**NIDS Service:**
```bash
# Must run as admin/sudo
# Windows: Run terminal as Administrator
# Linux/Mac: Use sudo

# Check Npcap/libpcap installed
# Windows: https://npcap.com/
```

**Backend:**
```bash
# Check .env file exists
ls backend/.env

# Check port 5000 is free
netstat -ano | findstr :5000
```

**Frontend:**
```bash
# Clear node_modules if needed
rm -rf node_modules package-lock.json
npm install
```

### Common Issues

**"NIDS service unavailable"**
- NIDS service not running on port 5002
- Run as administrator (Windows)
- Install Npcap (Windows) or libpcap (Linux)

**"AI service unavailable"**
- ML service not running on port 5001
- Add OpenAI API key to `ml-service/.env`
- Check: `OPENAI_API_KEY=sk-proj-...`

**"No vulnerabilities found"**
- Check backend console for errors
- Verify AI API key is valid
- Try a different test URL

**Charts/Visualizations not showing**
- Wait 4-6 seconds after starting detection
- Refresh browser
- Check browser console (F12) for errors

---

## 💰 Costs

### Free Components
✅ Frontend/Backend (free)
✅ ML Models (free, open-source)
✅ Scapy/Npcap (free)

### Paid Components (Optional)
💵 **OpenAI API** (for AI analysis)
- Free trial: $5 credit
- Per analysis: ~$0.001
- 100 analyses: ~$0.10
- Very affordable for demos!

---

## 📝 License

MIT License - Free for educational and personal use.

See [LICENSE](LICENSE) for details.

---

## 👨‍💻 Author

**TheActivist** - 2nd Year Engineering Student

Built with ❤️ for academic excellence!

---

## 🙏 Acknowledgments

- **OpenAI** - GPT API for intelligent analysis
- **OWASP** - Security standards and guidelines
- **Scapy** - Powerful packet manipulation
- **scikit-learn** - Machine learning models
- **shadcn/ui** - Beautiful UI components
- **Lovable.dev** - Initial frontend scaffolding

---

## 🌟 Why This Project Stands Out

### Compared to Other Student Projects:

**Most Projects:**
- ❌ Single-purpose tools
- ❌ Basic detection only
- ❌ Static analysis
- ❌ Simple UI

**Deep Web Guard:**
- ✅ **Dual-mode platform** (Web + Network)
- ✅ **AI + ML integration**
- ✅ **Real-time processing**
- ✅ **Interactive visualizations**
- ✅ **Professional UI/UX**
- ✅ **Comprehensive documentation**

### Innovation Points:
1. **AI-Powered Threat Analysis** - GPT integration
2. **Hybrid Detection** - Signatures + ML
3. **Interactive Alerts** - Expandable cards with tabs
4. **Real-time Visualizations** - Charts and animations
5. **Complete Platform** - Not just a scanner

---

## 🚀 Future Enhancements

### Planned Features:
- [ ] Docker containerization
- [ ] User authentication system
- [ ] Database integration for scan history
- [ ] Advanced ML models (Deep Learning)
- [ ] Automated remediation
- [ ] Cloud deployment
- [ ] Mobile app
- [ ] API documentation (Swagger)
- [ ] Performance benchmarking
- [ ] Multi-language support

---

## 📧 Contact

For questions, suggestions, or collaboration:
- **GitHub Issues** - Report bugs or request features
- **Project Repository** - Star and follow for updates

---

## ⭐ Star This Project!

If you found this project helpful, please give it a star! It helps others discover this work.

---

**Built with 🛡️ for cybersecurity education**

**Deep Web Guard - Complete AI-Powered Security Platform**
