from fastapi import APIRouter
from server.app.code import code_router

api_router = APIRouter()

api_router.include_router(code_router, tags=["code"])