#!/bin/bash
# Скрипт для проверки кода перед коммитом
# Запускайте из директории расширения: ./check.sh

echo "🔍 Running lint checks..."
npm run lint

if [ $? -ne 0 ]; then
  echo ""
  echo "❌ Linting failed! Running auto-fix..."
  npm run fix-lint
  echo ""
  echo "✅ Auto-fix completed. Please review changes and commit."
  exit 1
fi

echo ""
echo "✅ All checks passed!"
exit 0


