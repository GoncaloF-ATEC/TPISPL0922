from pydantic import  BaseModel

class usr(BaseModel):
    id: int
    name: str
    password: str


"""  {"password":"1234","nome":"Gonçalo","id":0} """