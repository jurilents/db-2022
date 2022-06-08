from sqlmodel import SQLModel, Field


class Result(SQLModel):
    status: str


class Manager(SQLModel, table=True):
    __tablename__ = "managers"

    id: int = Field(primary_key=True)
    firstname: str = Field()
    lastname: str = Field()
    email: str = Field()
    phone_number: str = Field()


class ManagerCreate(SQLModel):
    firstname: str = Field(default="Joe")
    lastname: str = Field(default="Doe")
    email: str = Field(default="example@tacles.net")
    phone_number: str = Field(default="+1 123 44 55")
