import express from "express"

const ProyectoController = () => {
    const path = "/proyectos"

    const router = express.Router()

    // Operacion para listar proyectos
    router.get("/", (req, resp ) => {
        resp.json({
            msg : "",
            proyectos : [
                {
                    id : 1,
                    nombre : "Proyecto 1",
                    nro_pom : 5,
                    categoria : 1,
                    status : 1
                },
                {
                    id : 2,
                    nombre : "Proyecto 2",
                    nro_pom : 2,
                    categoria : 2,
                    status : 1
                }
            ]
        })
    })

    // Operacion para obtener un proyecto segun id
    router.get("/:id", (req, resp ) => {
        const id = req.params.id
        resp.json({
            msg : "",
            proyecto : {
                id : id,
                nombre : "Proyecto 1",
                nro_pom : 5,
                categoria : 1,
                status : 1
            }
        })
    })

    return { router, path }
}

export default ProyectoController;