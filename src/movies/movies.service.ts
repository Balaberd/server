import { Injectable } from "@nestjs/common";
import { InjectModel } from "@nestjs/sequelize";
import { Movie } from "./movies.model";
import { Op } from "sequelize";
import { MoviePerson } from "src/person/movie-person.model";
import { Person } from "src/person/person.model";

@Injectable()
export class MoviesService {
  constructor(@InjectModel(Movie) private movieRepository: typeof Movie) {}

  async getMovieByActor(id: number) {
    const movies = await this.movieRepository.findAll({
      include: [
        {
          model: Person,
          as: "actors",
          where: { id: id },
          through: { attributes: [] },
        },
      ],
    });
    return movies;
  }

  async getMovieByDirector(id: number) {
    const movies = await this.movieRepository.findAll({
      where: { director_id: id },
    });
    return movies;
  }

  async getMoviesById(id: number) {
    const movie = await this.movieRepository.findOne({
      where: { id },
      include: { all: true },
    });
    return movie;
  }

  async createMovie(movieDataList: any[]): Promise<Movie[]> {
    const movies = [];
    for (const movieData of movieDataList) {
      const movie = new Movie(movieData);
      await movie.save();
      movies.push(movie);
    }
    return movies;
  }

  async createMoviePerson(moviePersonDataList: any[]): Promise<MoviePerson[]> {
    const moviePersons = [];
    for (const movieData of moviePersonDataList) {
      const moviePerson = new MoviePerson(movieData);
      await moviePerson.save();
      moviePersons.push(moviePerson);
    }
    return moviePersons;
  }

  // ДИНАМИЧЕСКИЙ ПОИСК --------------------------

  async searchMovies(
    genre: string,
    country: string,
    years: string,
    rating: number
  ): Promise<Movie[]> {
    try {
      const where = {};

      if (genre) {
        where["genre"] = { [Op.eq]: genre };
      }

      if (country) {
        where["country"] = { [Op.eq]: country };
      }

      if (years) {
        where["years"] = { [Op.eq]: years };
      }

      if (rating) {
        where["rating"] = { [Op.gte]: rating };
      }

      return this.movieRepository.findAll({
        where,
        include: [
          { model: Person, as: "actors", through: { attributes: [] } },
          { model: Person, as: "director" },
        ],
      });
    } catch (error) {
      console.error("Ошибка при поиске фильмов:", error);
      throw error;
    }
  }
  // БАНЕР ---------------------------------------
  async getPromoMovie() {
    const movies = await this.movieRepository.findAll({
      where: { years: "2023" },
      limit: 5,
      attributes: ["id", "name", "original_name", "text", "promo"],
    });
    return movies;
  }
  // ЛУЧШЕЕ --------------------------------------
  async getRecMovie() {
    const movies = await this.movieRepository.findAll({
      where: { country: "США", rating: { [Op.gt]: 8 } },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
      limit: 10,
    });
    return movies;
  }

  async getFavoriteMovie() {
    const movies = await this.movieRepository.findAll({
      where: { rating: { [Op.gt]: 9 } },
      limit: 10,
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return movies;
  }
  // ЖАНРЫ --------------------------------------
  async getDrama() {
    const data = await this.movieRepository.findAll({
      where: { genre: "драма" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getСomedy() {
    const data = await this.movieRepository.findAll({
      where: { genre: "комедия" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }

  async getThriller() {
    const data = await this.movieRepository.findAll({
      where: { genre: "триллер" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getAdventures() {
    const data = await this.movieRepository.findAll({
      where: { genre: "приключения" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getForeign() {
    const data = await this.movieRepository.findAll({
      where: { country: { [Op.not]: "Россия" } },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getMelodramas() {
    const data = await this.movieRepository.findAll({
      where: { genre: "мелодрама" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getFantastic() {
    const data = await this.movieRepository.findAll({
      where: { genre: "фантастика" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getFantasy() {
    const data = await this.movieRepository.findAll({
      where: { genre: "фэнтези" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getFamily() {
    const data = await this.movieRepository.findAll({
      where: { genre: "семейный" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getDetective() {
    const data = await this.movieRepository.findAll({
      where: { genre: "детектив" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getHorror() {
    const data = await this.movieRepository.findAll({
      where: { genre: "ужасы" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getMilitary() {
    const data = await this.movieRepository.findAll({
      where: { genre: "военный" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getCrime() {
    const data = await this.movieRepository.findAll({
      where: { genre: "криминал" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getWestern() {
    const data = await this.movieRepository.findAll({
      where: { genre: "вестерн" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getBiography() {
    const data = await this.movieRepository.findAll({
      where: { genre: "биография" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
  async getSport() {
    const data = await this.movieRepository.findAll({
      where: { genre: "спорт" },
      attributes: [
        "id",
        "avatars",
        "name",
        "original_name",
        "rating",
        "years",
        "durations",
        "country",
        "genre",
      ],
    });
    return data;
  }
}
