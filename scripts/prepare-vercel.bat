@echo off
echo 🚀 Preparando deploy para o Vercel...

REM Criar diretório de dados se não existir
if not exist "server\data" mkdir "server\data"

REM Criar arquivos JSON vazios se não existirem
echo [] > "server\data\beneficiaries.json"
echo [] > "server\data\donations.json"
echo [] > "server\data\necessidades.json"
echo [] > "server\data\schedules.json"

echo ✅ Preparação concluída!
echo.
echo 📋 Próximos passos:
echo 1. Configure as variáveis de ambiente no Vercel:
echo    - ADMIN_PASSWORD=kahoot
echo    - ADMIN_SESSION_SECRET=seu-secret-super-seguro
echo    - NODE_ENV=production
echo.
echo 2. Faça o deploy:
echo    vercel --prod
echo.
echo 3. Teste o login admin com a senha definida na variável ADMIN_PASSWORD

pause