#!/bin/bash

# Run all project services at once

# Set environment variables
export JUPYTER_PLATFORM_DIRS=1
export PYTHONWARNINGS="ignore::DeprecationWarning:jupyter_core.utils,ignore::DeprecationWarning:traitlets.traitlets,ignore::DeprecationWarning:nbconvert.exporters.templateexporter"

echo "🚀 Starting Travel-Log project services..."
echo "============================================"

# Run mkdocs in the background
echo "📚 Starting documentation server on localhost:8002..."
mkdocs serve --dev-addr=localhost:8002 &
MKDOCS_PID=$!

# Run the main application
echo "🎯 Running main application..."
python main/main.py &
MAIN_PID=$!

echo "============================================"
echo "✅ All services started!"
echo "   📚 Docs: http://localhost:8002"
echo "   Press Ctrl+C to stop all services"
echo "============================================"

# Wait for all background processes
wait $MKDOCS_PID $MAIN_PID