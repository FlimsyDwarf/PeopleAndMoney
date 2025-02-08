# People and Money – Soviet Price Calculator

## Project Overview

**People and Money** is an interactive service that enables users to explore historical economic data from the Soviet era. The application provides detailed information for a selected year within the official existence of the Soviet Union, including:

- **Currency Conversion:** Convert modern Russian rubles to Soviet rubles for a specific year.
- **Salaries Data:** View salary information for a static set of popular professions, with values converted to the modern ruble exchange rate.
- **Product Prices:** Check the costs of various products and goods, organized by categories. Products that were subject to speculative pricing or not regulated by the state are marked with a special symbol (e.g., `*`).
- **Historical Context:** Read a brief historical note explaining the reasons behind the pricing and economic policies of the selected period (accompanied by an illustrative image).

All data is compiled and presented consistently for any given year within a defined historical interval.

## Historical Intervals

The data is grouped according to the leadership periods of the Soviet Union:

- **Lenin**
  - NEP (Lenin Stage): 1921–1924
- **Stalin**
  - NEP (Stalin Stage): 1924–1931
  - Pre-war Period: 1931–1941
  - War Period: 1941–1945 
  - Post-war Period: 1945–1953
- **Khrushchev**
  - Pre-reform Period: 1953–1961
  - Post-reform Period: 1961–1964
- **Brezhnev**
  - Stagnation: 1964–1982
- **Andropov, Chernenko**
  - Stagnation: 1982–1985 
- **Gorbachev**
  - Perestroika: 1985–1991

## Project Structure

The project is divided into several key departments:

- **Frontend:** Built using Vue.js along with HTML, CSS, and JavaScript.
- **Backend:** Developed in Java using Maven for build management. This module handles business logic and integrates with custom databases.
- **Data Search and Analyze:** Responsible for collecting and processing historical data across all periods.

## Technologies Used

- **Backend:** Java, Maven, and custom database integrations for historical data storage.
- **Frontend:** Vue.js, HTML/CSS, and JavaScript.
- **Data Analysis:** Various tools and scripts for data collection and processing.
- **Version Control:** Git (hosted on GitHub).

## Installation and Setup

### Prerequisites

- Java JDK installed (version 8 or above)
- Maven installed
- Node.js and npm (for the frontend)

### Steps

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/AgafonovVadim/PeopleAndMoney.git
   cd PeopleAndMoney
   ```

2. **Backend Setup:**

   - Navigate to the backend directory:
     ```bash
     cd backend/PeopleAndMoney
     ```
   - Build the project using Maven:
     ```bash
     mvn clean install
     ```
   - Ensure that your custom databases are properly configured and accessible by the application. Configuration details can be adjusted in the provided configuration files.

3. **Frontend Setup:**

   - Navigate to the frontend directory:
     ```bash
     cd ../../frontend
     ```
   - Install the dependencies:
     ```bash
     npm install
     ```
   - Start the development server:
     ```bash
     npm run dev
     ```

4. **Running the Application:**

   - Start the backend service as described above.
   - Ensure that the frontend is running and properly connected to the backend service.

## Best Practices

- **Modular Development:** The project is divided into clear modules (Frontend, Backend, Data Analysis), ensuring that responsibilities are separated and code remains maintainable.
- **Version Control:** Regular commits and use of Git for source control help in tracking changes and facilitating collaboration.
- **Configuration Management:** Externalize configuration for database connections and environment-specific settings to allow smooth deployments across different environments.
- **Code Reviews and Testing:** Incorporate thorough code reviews and unit testing (e.g., using JUnit for Java) to maintain code quality and reliability.
- **Documentation:** Keep documentation up-to-date for both users and developers to streamline onboarding and troubleshooting.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).

## Team

The development team is structured as follows:

- **Frontend Team:** Focuses on creating an engaging user interface using Vue.js.
- **Backend Team:** Implements business logic in Java and manages database integrations with Maven.
- **Data Search and Analysis Team:** Responsible for gathering and processing historical data across all Soviet periods.

