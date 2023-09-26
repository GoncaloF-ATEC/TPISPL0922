from fastapi import FastAPI
from modelo import usr
import sqlite3


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "teste"}


@app.post("/dbSetup")
async def setup(nome:str):
    conn = sqlite3.connect(nome)

    conn.execute("""CREATE TABLE alunos ( 
    id int not null primary key,
    nome varchar(50),
    passwod varchar(100)
    )""")

    conn.close()



@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}

@app.post("/addUsr")
async def login(usr_info:usr):


    '''conn = sqlite3.connect("Alunos")

    conn.execute(f"""INSERT INTO alunos (id, nome, passwod) 
    VALUES
     ({usr_info.id}, "{usr_info.name}", "{usr_info.password}")""")

    conn.commit()

    conn.close()
    '''

    print(f"\n\nnome:{usr_info.name}, pass:{usr_info.password}\n\n")


@app.post("/teste")
async def teste(nome: usr):
    print(f"it works {nome.name}")



@app.post("/teste2")
async def teste(nome: str):
    print(f"it works {nome}")
