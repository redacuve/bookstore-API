<!-- Badges -->
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: GPLv3 " src="https://img.shields.io/badge/License-GPL-yellow.svg" />
  </a>
  <a href="https://twitter.com/redacuve" target="_blank">
    <img alt="Twitter: redacuve " src="https://img.shields.io/twitter/follow/redacuve.svg?style=social" />
  </a>
</p>


<!-- Project Header -->
  <h1 align="center">BookStore API</h1>
  <p align="center">
  <br>
   <a href="https://github.com/redacuve/bookstore-API/"><strong>Explore the repo »</strong></a>
  <br>
    <a href="https://github.com/redacuve/bookstore-API//issues">Request Feature</a>
  </p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

* [About the Project](#about-the-project)

* [Built With](#built-with)

* [Getting Started](#getting-started)

* [How it Works](#how-it-works)

* [Contributing](#contributing)

* [License](#license)

* [Contact](#contact)

<!-- ABOUT THE PROJECT -->

## About The Project

This is a Restful API build with rails.
It returns results in JSON.

## Built With

* [Ruby](https://ruby-doc.org/core-2.7.0/)

* [Rails](https://guides.rubyonrails.org/getting_started.html)

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

Clone or fork the <a href="https://github.com/redacuve/bookstore-API/">repo</a> [git@github.com:redacuve/bookstore-API/.git]

Note* Ruby and Rails needs to be installed to run the code, check [here](https://www.ruby-lang.org/en/documentation/installation/) and [here](https://guides.rubyonrails.org/getting_started.html) for further steps.

<!-- HOW IT WORKS -->
## How it Works

It uses rails 6 to create an API-only app, it doesn't generate views because all information needed is shown in JSON, the test has been written first because of TDD.
Before the use, you need to register with an email and password, then login to the API to obtain the token, and use that token in the headers of the request to use this API.

## Running the code

*   Navigate to the root directory of the project

*   Run this command on your terminal to install all the needed gems:
    ```
    $ bundle install
    ```
*   Install Yarn
    ```
    $ yarn install --check-files
    ```
*   Create and migrate the database
    ```
    $ rails db:create
    $ rails db:migrate
    ```
*   Run the develpment server with
    ```
    $ rails server
    ```
*   Take a look at the app
    ```
    http://127.0.0.1:3000/
    ```
*   Also you can test the app with
    ```
    $ rspec .
    ```

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project

2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)

3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the Branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

<!-- LICENSE -->

## License

This project is under the <a href="https://www.gnu.org/licenses/gpl-3.0.html">GNU Public License V3</a>. For more information see <a href="https://github.com/redacuve/bookstore-API//blob/master/LICENSE">here</a>

<!-- CONTACT -->

## Contact

Facundo Iglesias - [fig.igle@gmail.com](mailto:fig.igle@gmail.com) - [linkedin.com/in/figlesias](https://www.linkedin.com/in/figlesias/)

Rey David Cuevas Vela - [@redacuve](https://twitter.com/redacuve) - [redacuve@gmail.com](mailto:redacuve@gmail.com) - [linkedin.com/in/redacuve/](https://www.linkedin.com/in/redacuve/)

Project Link: [github.com/redacuve/bookstore-API/](https://github.com/redacuve/bookstore-API/) - Bookstore API.