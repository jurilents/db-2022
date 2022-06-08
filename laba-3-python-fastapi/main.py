from typing import List

from fastapi import FastAPI, Depends
from starlette.responses import Response

from crud import CrudService
from database import db
from models import ManagerCreate, Manager, Result

app = FastAPI()


@app.on_event("startup")
async def on_startup():
    await db.ensure_created()


@app.get("/managers/{id}", response_model=Manager)
async def get_manager_by_id(id: int, crud: CrudService = Depends()):
    return await crud.get_by_id(id)


@app.get("/managers", response_model=List[Manager])
async def get_list_of_all_managers(response: Response, crud: CrudService = Depends()):
    response.headers["X-Count"] = str(await crud.count_all())
    return await crud.get_all()


@app.post("/managers", response_model=Result)
async def create(model: ManagerCreate, crud: CrudService = Depends()):
    await crud.create(model)
    return Result(status="Manager created successfully.")


@app.put("/managers/{id}", response_model=Result)
async def update_manager_by_id(id: int, model: ManagerCreate, crud: CrudService = Depends()):
    await crud.update(id, model)
    return Result(status="Manager updated successfully.")


@app.delete("/managers/{id}", response_model=Result)
async def delete_manager_by_id(id: int, crud: CrudService = Depends()):
    await crud.delete(id)
    return Result(status="Manager deleted successfully.")
