from os import path

from pydantic import BaseSettings

_app_dir = path.dirname(path.abspath(__file__))


class Settings(BaseSettings):
    """
    Set common API configuration variables.
    """

    # Common
    # --------------------------------------------------------------------
    APP_DIR = _app_dir

    # API Configuration
    # --------------------------------------------------------------------
    DEBUG: bool = False
    SERVER_PORT: int = 8888
    SERVER_HOST: str = "localhost"

    # SQLAlchemy database
    # --------------------------------------------------------------------
    SQLALCHEMY_DATABASE_URI: str

    class Config:
        env_file = path.join(_app_dir, ".env")


settings = Settings()
