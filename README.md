# 🗳️ Every Voice

**Every Voice** is a civic engagement iOS app built with SwiftUI that helps users explore U.S. congressional bills, track political media, and stay informed about their elected officials. The app integrates live data from Congress.gov and presents it in a clean, modern UI.

## 📱 Features

- **Explore Bills**: View and read summaries of recent congressional bills with links to full text.
- **Track Media**: (Coming Soon) Analyze political news and align it with representatives and bills.
- **Your Officials**: (Coming Soon) Personalized list of your elected representatives.
- **Clean UI**: Tabbed navigation with responsive layout, icons, and dark mode-ready views.
- **Async Data Fetching**: Uses `async/await` and `URLSession` to load recent bills.
- **Firebase & Firestore Ready**: Project structure supports cloud-based authentication and user data tracking.

## 🧱 Tech Stack

- **Frontend**: SwiftUI
- **Networking**: URLSession + async/await
- **Backend API**: [Congress.gov API](https://api.data.gov/)
- **Design**: Apple SF Symbols + Custom Assets
- **Build Tools**: Xcode 14.2, Swift 5.7
- **Platform**: iOS 16+

## 📂 Project Structure

EveryVoice/
├── Models/
│ ├── CongressBill.swift
│ ├── CongressBillArrayResponse.swift
│ └── CongressBillService.swift
├── Views/
│ ├── ExploreBillsView.swift
│ ├── BillRowCard.swift
│ └── [Other SwiftUI Views]
├── Assets/
│ └── everyvoice_logo.png
├── info.plist
├── AppDelegate.swift
└── Every_VoiceApp.swift

🚧 Coming Soon
Personalized recommendations based on political alignment

Smart media fact-checking

Alerts for local town halls and bills that affect you

User profiles, bookmarks, and shareable summaries


