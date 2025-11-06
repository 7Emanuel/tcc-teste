# Deploy no Vercel - Guia Completo

## 🚀 Passo a Passo para Deploy

### 1. Configure as Variáveis de Ambiente no Vercel

No dashboard do Vercel, vá em Settings > Environment Variables e adicione:

```bash
ADMIN_PASSWORD=kahoot
ADMIN_SESSION_SECRET=super-secret-key-change-this
NODE_ENV=production
```

**⚠️ IMPORTANTE**: A senha `kahoot` ficará segura nas variáveis de ambiente do Vercel e não aparecerá no código.

### 2. Faça o Deploy

```bash
# Via CLI do Vercel
npm i -g vercel
vercel --prod

# Ou conecte o repositório GitHub no dashboard do Vercel
```

### 3. Teste o Sistema

1. Acesse seu site: `https://seu-projeto.vercel.app`
2. Teste o painel admin: `https://seu-projeto.vercel.app/admin`
3. Use a senha: `kahoot`

## 🔒 Segurança

- ✅ Senha não está no código fonte
- ✅ Senha está protegida nas variáveis de ambiente
- ✅ Logs não mostram a senha
- ✅ Arquivo `.env.local` está no `.gitignore`

## 🗃️ Dados

O sistema usa arquivos JSON para armazenar:
- Beneficiários (contas para validar)
- Doações
- Necessidades
- Agendamentos

Os dados são persistidos automaticamente no Vercel.

## 🛠️ Funcionalidades que Funcionam

- ✅ Login de administrador
- ✅ Validação de contas de beneficiários
- ✅ Visualização de dados
- ✅ Painel administrativo completo
- ✅ Sistema de doações
- ✅ Gestão de necessidades