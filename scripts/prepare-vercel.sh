#!/bin/bash

echo "🚀 Preparando deploy para o Vercel..."

# Criar diretório de dados se não existir
mkdir -p server/data

# Criar arquivos JSON vazios se não existirem
echo "[]" > server/data/beneficiaries.json 2>/dev/null || true
echo "[]" > server/data/donations.json 2>/dev/null || true
echo "[]" > server/data/necessidades.json 2>/dev/null || true
echo "[]" > server/data/schedules.json 2>/dev/null || true

echo "✅ Preparação concluída!"
echo ""
echo "📋 Próximos passos:"
echo "1. Configure as variáveis de ambiente no Vercel:"
echo "   - ADMIN_PASSWORD=kahoot"
echo "   - ADMIN_SESSION_SECRET=seu-secret-super-seguro"
echo "   - NODE_ENV=production"
echo ""
echo "2. Faça o deploy:"
echo "   vercel --prod"
echo ""
echo "3. Teste o login admin com a senha definida na variável ADMIN_PASSWORD"