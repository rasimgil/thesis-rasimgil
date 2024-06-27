.PHONY: backend frontend clear help

default: backend frontend

backend:
	@echo "Setting up the backend..."
	@source ./thesis/bin/activate && pip install -r ./requirements.txt

frontend:
	@echo "Setting up the frontend..."
	@cd music-generator/frontend && npm install

run: backend frontend
	@echo "Starting the backend server..."
	@cd music-generator/backend && python manage.py runserver &

	@echo "Starting the frontend server..."
	@cd music-generator/frontend && npm start

clear:
	@echo "Deleting MIDI files..."
	@rm -rf midi-emotion/output/*/generations/radio/*.mid

help:
	@echo "Usage:"
	@echo "  make             - Setup both the backend and the frontend
	@echo "  make run         - Setup and run both the backend and the frontend
	@echo "  make clear       - Delete the MIDI files that were created
	@echo "  make help        - Show this message
