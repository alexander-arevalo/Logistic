import express, { Request, Response, NextFunction } from "express";
import { createUser, getUserByUsername } from "../services/user.service";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

const router = express.Router();

// Register a new user
router.post(
  "/register",
  async (req: Request, res: Response, next: NextFunction): Promise<void> => {
    const { username, password, email, role } = req.body;
    try {
      const user = await createUser(username, password, email, role);
      res.json(user);
    } catch (error) {
      res.status(400).json({ error: "User already exists" });
    }
  }
);

// Login endpoint
router.post(
  "/login",
  async (req: Request, res: Response, next: NextFunction): Promise<void> => {
    try {
      const { username, password } = req.body;
      const user = await getUserByUsername(username);

      if (!user || !(await bcrypt.compare(password, user.password))) {
        res.status(401).json({ error: "Invalid credentials" });
        return;
      }

      const token = jwt.sign(
        { userId: user.id, role: user.role },
        "your_secret_key",
        { expiresIn: "1h" }
      );
      res.json({ token });
    } catch (error) {
      next(error);
    }
  }
);

export default router;
