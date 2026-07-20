# Log

## 2026-07-17 — Criação (mesma sessão DEV do hook-lab, ver FEG\SESSIONS\2026-07-17_*_DEV.md)

- Identificado como gap no reconhecimento inicial (`FEG_MASTER.md` §8), bloqueado por falta de material-fonte (prompts em Google Docs não baixados).
- **Descoberta chave:** Google Docs linkados no corpus StefanGeorgi são exportáveis sem autenticação via `https://docs.google.com/document/d/{ID}/export?format=txt` (docs compartilhados "qualquer um com o link"). Testado com sucesso, depois usado em lote pra baixar 49 docs únicos das 6 formações de IA (`AI-Mechanism-Machine`, `AI-Copy-Chief-Training`, `AI-Template-Drops`, `6-Hour-AI-Sales-Letter`, `30x-Copywriter`, `Breakthrough-Ideas`) — 865KB de conteúdo real, salvos em `Knowledge/StefanGeorgi/{espaço}/attachments/gdocs-fetched/`.
- Os 6 docs de `AI-Copy-Chief-Training` foram lidos na íntegra por um subagente (modelo Haiku, econômico) e o relatório de extração ficou em `Knowledge/StefanGeorgi/AI-Copy-Chief-Training/EXTRACTED-PROMPTS-FOR-COPY-CHIEF-AGENT.md` — este skill foi construído diretamente a partir dele.
- Estrutura montada seguindo o mesmo padrão de `mechanism-lab`/`hook-lab` (repo-fonte + Install.bat + skills/copy-chief/SKILL.md + knowledge/).
- Ainda **não instalado** nem **testado em produto real** — ver `BACKLOG.md`.
- Material adicional baixado mas ainda não processado em skill: `AI-Template-Drops` (32 templates, índice denso salvo em `Knowledge/StefanGeorgi/AI-Template-Drops/EXTRACTED-TEMPLATES-INDEX.md`) e `6-Hour-AI-Sales-Letter` (cadeia de 30 prompts pra VSL/sales letter completa) — candidatos a enriquecer `ads-builder`/`vsl-builder`/`hook-lab` numa próxima sessão, não usados ainda.
