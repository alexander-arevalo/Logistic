import { PrismaClient } from "@prisma/client";
import bcrypt from "bcrypt";

const prisma = new PrismaClient();

export const createUser = async (username: string, password: string, role: "ADMIN" | "ACCOUNTING" | "DISPATCHER") => {
  const hashedPassword = await bcrypt.hash(password, 10);
  return prisma.user.create({
    data: { username, password: hashedPassword, role },
  });
};

export const getUserByUsername = async (username: string) => {
  return prisma.user.findUnique({ where: { username } });
};