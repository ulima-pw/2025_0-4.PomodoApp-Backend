import express, {Request, Response} from "express"

const UsuarioController = () => {
    const path = "/usuarios"

    const router = express.Router()

    // Endpoint Login
    // Ruta : "/login"
    // Method: POST
    // Form : usuario, password
    // Output:
    //  En el caso que login sea correcto:
    //  {
    //      "msg" : ""  
    //  }
    //  En el caso de error en el login:
    //  {
    //      "msg" : "Error en login"  
    //  }
    router.post("/login", (req : Request, resp : Response) => {
        console.log(req.body)
        const usuario = req.body.usuario
        const password = req.body.password
    
        if (usuario == "PW" && password == "123"){
            // Login es correcto
            resp.json({
                msg : ""
            })
        }else {
            // Login es correcto
            resp.json({
                msg : "Error en login"
            })
        }
    })
    return [ path, router ]
}

export default UsuarioController