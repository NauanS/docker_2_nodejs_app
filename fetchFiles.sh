#!/bin/bash
read -p "Give the url of the  repository: " urlOriginRepoBack
git clone $urlOriginRepoBack backend
git remote -v
cd ..

echo "Creating .env file..."
yes | cp ./.env_file .env

echo "Creating backend .env file..."
yes | cp ./backend/.env_file ./backend/.env

echo "Finish!"