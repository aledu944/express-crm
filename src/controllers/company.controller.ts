import { Request, Response } from "express";
import { prisma } from "../lib/prisma";


async function getCompanies( req:Request, res: Response ){
    const companies = await prisma.company.findMany();
    return res.json({companies});
}


async function showCompany( req:Request, res: Response ){

    const { id } = req.params;

    const company = await prisma.company.findFirst({
        where: { id }
    });

    if( !company ){
        res.status(404).json({
            message: "No se encontro la empresa"
        })

        return;
    }

    return res.json({company});
}


async function createNewCompany( req:Request, res: Response ){
    const { name, email, direction, numberPhone } = req.body;

    if( !name ) return res.status(400).json({message: "Debe asignar un nombre"});
    if( !email ) return res.status(400).json({message: "Debe agregar un correo"});
    if( !direction ) return res.status(400).json({message: "Debe asignar una direccion"});
    if( !numberPhone ) return res.status(400).json({message: "Debe asignar un numero de telefono"});

    const company = await prisma.company.create({
        data: { name, email, direction, numberPhone } 
    })

    res.status(201).json({
        message: "Se guardo la empresa",
        company
    })
}


async function deleteCompany( req:Request, res: Response ){
    const { id } = req.params;

    const company = await prisma.company.findFirst({
        where: { id }
    });

    if( !company ){
        res.status(404).json({
            message: "No se encontro la empresa"
        })

        return;
    }

    await prisma.company.delete({where: {id}});
    res.status(200).json({
        message: "Se elimino la empresa",
        company
    })

}


export default {
    getCompanies,
    showCompany,
    createNewCompany,
    deleteCompany,
}



