# Copy Chief — Elevar Copy de Rascunho pra Nível A
> Autor: Mikael Lovrin · Copyright (c) 2026 Mikael Lovrin

## O que é este projeto

Skill que fecha o gap identificado no reconhecimento de 2026-07-17 (`FEG_MASTER.md` §8): nenhuma ferramenta do ecossistema fazia o passo de "elevar copy de rascunho pra nível A" depois que `vsl-builder`/`adv-builder`/`ads-builder`/`mail-mkt`/`social-media-agent` já escreveram algo. Implementa literalmente os "9 Power Prompts" do curso "AI Copy Chief Training" de Stefan Georgi — dimensionalização de pain/benefit, proof modalities, remoção de fluff, nível de leitura, clareza, ritmo conversacional, power words, progressive tense, remoção de qualifiers — mais o checklist interno de 6 eixos que a agência do Stefan usa pra QA, mais templates de headline/micro-lead.

**Como o gap foi resolvido:** o material-fonte (Google Docs linkados nos posts do curso) não tinha sido baixado no reconhecimento inicial — só o resumo/índice estava local. Em 2026-07-17, os ~49 Google Docs relevantes das formações de IA do corpus StefanGeorgi foram baixados via export direto (`docs.google.com/document/d/{id}/export?format=txt`, funciona sem autenticação pra docs com sharing "qualquer um com o link"). Os 6 docs do `AI-Copy-Chief-Training` foram lidos na íntegra e este skill foi construído a partir deles no mesmo dia.

## Por que existe separado das skills de escrita e do `hook-lab`

- `hook-lab` responde "qual é a primeira frase que faz alguém parar de rolar o feed" (hooks/ângulos, ANTES da copy ser escrita).
- Skills de escrita (`vsl-builder`/`adv-builder`/etc.) respondem "qual é a copy inteira" (geração do zero).
- **`copy-chief` responde "essa copy que já existe está no seu melhor nível?"** (revisão/elevação, DEPOIS da copy escrita) — não compete com nenhuma das duas, é a terceira etapa que faltava no pipeline.

## Modelo Operacional

Mesmo modelo de dois camadas de `mechanism-lab`/`hook-lab`: este repo é o repo-fonte; o trabalho real acontece na pasta do produto.

1. **Instalar**: rode `Install.bat` — copia `skills/copy-chief/` para `%USERPROFILE%\.claude\skills\`.
2. **Trabalhar num produto**: abra o Claude Code na pasta do produto (ex. `FEG/Projects/Badrock/03-BeefOrgans/`) e peça pra revisar/elevar uma copy já escrita.

## Estrutura do Repo-Fonte

```
copy-chief/
├── CLAUDE.md
├── Install.bat
└── skills/
    └── copy-chief/
        ├── SKILL.md
        └── knowledge/
            ├── power-prompts.md          ← os 9 Power Prompts literais
            ├── qa-checklist.md            ← checklist de 6 eixos da "7-Figure Agency"
            └── headlines-and-microleads.md ← 5 templates de headline + 3 tipos de micro-lead
```

## Como usar

1. (Uma vez) Rode `Install.bat`.
2. Abra o Claude Code na pasta do produto, com a copy já escrita disponível (arquivo em `05-Criativos/`/`06-Advertoriais/` ou colada na conversa).
3. Peça pra revisar/elevar/fazer "copy chief" da peça — o skill aplica os prompts relevantes iterativamente e entrega antes/depois citado, mais headline/micro-lead se aplicável, mais resumo nos 6 eixos.

## Princípios Fundamentais

- **Nunca gera copy do zero** — só eleva o que já existe.
- **Trabalha por citação → sugestão**, nunca substitui silenciosamente.
- **Nunca inventa prova/dado** — sem fonte real, marca `[A VALIDAR]`.
- **Preserva a promessa central única** do produto (se `unique-mechanism.md` existir).
- **`progress.md` é compartilhado** — gerencia apenas a seção `## Copy Chief`.

## Fonte

`Knowledge/StefanGeorgi/AI-Copy-Chief-Training/` — Google Docs baixados e lidos na íntegra em 2026-07-17. Relatório de extração completo: `Knowledge/StefanGeorgi/AI-Copy-Chief-Training/EXTRACTED-PROMPTS-FOR-COPY-CHIEF-AGENT.md`. Ver também `FEG_MASTER.md` §8 (spec original do agente) e `FEG/SESSIONS/2026-07-17_*_DEV.md`.
