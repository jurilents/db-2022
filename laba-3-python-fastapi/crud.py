from typing import List

from fastapi import Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession, AsyncConnection
from sqlalchemy.sql import text

from database import db
from models import Manager, ManagerCreate


class CrudService:
    def __init__(self, session: AsyncSession = Depends(db.get_session)):
        self._session = session

    async def get_by_id(self, id: int) -> Manager:
        query = text("""SELECT * FROM managers WHERE id=:id""")
        result = await self._session.execute(query, {"id": id})
        model = result.one_or_none()
        if not model:
            raise HTTPException(status_code=404, detail="Manager not found.")
        return Manager(
            id=model[0],
            firstname=model[1],
            lastname=model[2],
            email=model[3],
            phone_number=model[3],
        )

    async def count_all(self) -> int:
        query = text("""SELECT COUNT(*) FROM managers""")
        result = await self._session.execute(query)
        return result.scalar()

    async def get_all(self) -> List[Manager]:
        query = text("""SELECT id, firstname, lastname, email, phone_number FROM managers""")
        result = await self._session.execute(query)
        models = []
        for row in result.all():
            manager = Manager(
                id=row[0],
                firstname=row[1],
                lastname=row[2],
                email=row[3],
                phone_number=row[3],
            )
            models.append(manager)
        return models

    async def create(self, model: ManagerCreate) -> Manager:
        query = text("""
            INSERT INTO managers (firstname, lastname, email, phone_number)
            VALUES (:firstname, :lastname, :email, :phone_number)
            """)
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def update(self, id: int, model: ManagerCreate) -> None:
        query = text("""
            UPDATE managers 
            SET firstname=:firstname, lastname=:lastname, email=:email, phone_number=:phone_number
            WHERE id=:id
            """)
        params = {"id": id}
        params.update(model.dict())
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def delete(self, id: int) -> None:
        query = text("""DELETE FROM managers WHERE id=:id""")
        await self._session.execute(query, {"id": id})
        await self._session.commit()
