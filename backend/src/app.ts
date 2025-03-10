import express from "express";
import cors from "cors";
import userRoutes from "@/routes/user.routes";

const app = express();
app.use(
  cors({
    origin: "http://localhost:3001",
    credentials: true,
  })
);
app.use(express.json());

app.use("/users", userRoutes);

export default app;
