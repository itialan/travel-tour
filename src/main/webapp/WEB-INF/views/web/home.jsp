<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Home Page</title>

</head>

<body>
	<header class="my-header">
		<!-- nav -->
		<div class="my-nav">
			<nav class="nav nav--tours">
				<a href="#" class="nav__el">All tours</a>
				<form class="nav__search">
					<button class="nav__search-btn">
						<svg>
							<use xlink:href="img/icons.svg#icon-search"></use>
						</svg>
					</button>
					<input
						type="text"
						placeholder="Search tours" class="nav__search-input" /> </form> </nav>
			<div class="header__logo">
				<img src="/template/web/img/logo-white.png" alt="Natours logo" />
			</div>
			<nav class="nav nav--user">
				<!--<a href="#" class="nav__el">My bookings</a>
				<a href="#" class="nav__el">
					<img src="img/user.jpg" alt="User photo" class="nav__user-img" />
					<span>QuangHoa</span>
				</a>-->

				<button class="nav__el">Log in</button>
				<button class="nav__el nav__el--cta">Sign up</button>
			</nav>
		</div>

		<!-- Landing -->
		<div class="landing">
			<div class="hero-text-box">
				<p>BOOK A TICKET AND JUST LEAVE.<br>CHOICES YOU MAKE.</p>
			</div>
			<div class="landing-img">
				<div class="slick-lide logo-landing"><img src="/template/web/img/landing1.jpg"></div>
				<div class="slick-lide logo-landing"><img src="/template/web/img/landing2.jpg"></img></div>
			</div>
		</div>
    </header>

		<div class="row pre-main">
			<div class="pre-main-logo">
				<p>logo</p>
			</div>
			<div class="pre-main-text">
				<p>WE PROVIDE A NICE TOURS VIETNAM AND ASIA. WITH MORE THAN 15 YEARS EXPERIENCE IN THE TRAVEL INDUSTRY, NQHTOUR IS A POPULAR TRAVEL IN VIETNAM AND AROUND THE GLOBE. YOU ARE MORE COMFORTABLE WITH PRIVATE CAR AND GUIDES AS WELL AS SUPPORT SERVICE 24 HOURS PER DAY.</p>
			</div>
		</div>

    <!-- <section class="overview"> -->
    <main class="main">
      <div class="card-container">
        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-1-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The Forest Hiker</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Easy 5-day tour</h4>
            <p class="card__text">
              Breathtaking hike through the Canadian Banff National Park
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>Banff, Canada</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>April 2021</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>3 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>25 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$297</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.9</span>
              <span class="card__footer-text">rating (21)</span>
            </p>
            <a href="#" class="btn btn--green btn--small">Details</a>
          </div>
        </div>

        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-2-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The Sea Explorer</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Medium-difficult 7-day tour</h4>
            <p class="card__text">
              Exploring the jaw-dropping US east coast by foot and by boat
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>Oregon, US</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>June 2021</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>4 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>15 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$497</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.8</span>
              <span class="card__footer-text">rating (12)</span>
            </p>
            <a href="#" class="btn btn--green btn--small">Details</a>
          </div>
        </div>

        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-3-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The Snow Adventurer</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Difficult 3-day tour</h4>
            <p class="card__text">
              Exciting adventure in the snow with snowboarding and skiing
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>Aspen, USA</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>January 2022</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>2 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>10 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$697</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.9</span>
              <span class="card__footer-text">rating (7)</span>
            </p>
            <a href="#" class="btn btn--green btn--small">Details</a>
          </div>
        </div>

        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-4-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The City Wanderer</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Easy 7-day tour</h4>
            <p class="card__text">
              Living the life of Wanderlust in the US' most beatiful cities
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>NYC, USA</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>March 2021</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>3 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>20 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$997</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.8</span>
              <span class="card__footer-text">rating (31)</span>
            </p>
            <a href="#" class="btn btn--green btn--small">Details</a>
          </div>
        </div>

        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-5-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The Park Camper</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Medium-Difficult 10-day tour</h4>
            <p class="card__text">
              Breathing in Nature in America's most spectacular National Parks
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>Las Vegas, USA</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>August 2021</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>4 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>15 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$1,497</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.9</span>
              <span class="card__footer-text">rating (19)</span>
            </p>
            <a href="/tour.html" class="btn btn--green btn--small">Details</a>
          </div>
        </div>

        <div class="card">
          <div class="card__header">
            <div class="card__picture">
              <div class="card__picture-overlay">&nbsp;</div>
              <img
                src="img/tour-6-cover.jpg"
                alt="Tour 1"
                class="card__picture-img"
              />
            </div>

            <h3 class="heading-tertirary">
              <span>The Sports Lover</span>
            </h3>
          </div>

          <div class="card__details">
            <h4 class="card__sub-heading">Difficult 14-day tour</h4>
            <p class="card__text">
              Surfing, skating, parajumping, rock climbing and more, all in one
              tour
            </p>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-map-pin"></use>
              </svg>
              <span>California, USA</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-calendar"></use>
              </svg>
              <span>July 2021</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-flag"></use>
              </svg>
              <span>5 stops</span>
            </div>
            <div class="card__data">
              <svg class="card__icon">
                <use xlink:href="img/icons.svg#icon-user"></use>
              </svg>
              <span>8 people</span>
            </div>
          </div>

          <div class="card__footer">
            <p>
              <span class="card__footer-value">$1,997</span>
              <span class="card__footer-text">per person</span>
            </p>
            <p class="card__ratings">
              <span class="card__footer-value">4.7</span>
              <span class="card__footer-text">rating (23)</span>
            </p>
            <a href="#" class="btn btn--green btn--small">Details</a>
          </div>
        </div>
      </div>
    </main>
</body>

</html>