# Copy Chief — Copy Quality Auditor & Elevator

**Autor:** Mikael Lovrin  
**Licença:** [CC BY 4.0](LICENSE) — atribuição obrigatória ao autor.

Agente de IA que eleva copy **já escrita** (rascunho) para nível A, usando os 9 Power Prompts literais extraídos do "AI Copy Chief Training" de Stefan Georgi + checklist de 6 eixos de qualidade. Trabalha por sugestão citada (nunca substitui silenciosamente), e opcionalmente gera headlines/micro-leads melhorados.

Este repositório é o **repo-fonte** da skill — instale uma vez, depois trabalhe em pastas dedicadas por marca/produto.

---

## Requisitos

- [Claude Code](https://claude.com/claude-code) instalado
- Copy já escrita (rascunho) para revisar

---

## Instalação

1. Baixe/clone este repositório
2. Rode `Install.bat` (duplo clique, ou `.\Install.bat` num terminal)

---

## Como usar (por marca/produto)

1. Crie uma pasta vazia dedicada para a marca (ex. `minhas-marcas/acme/`), fora deste repo
2. Abra um terminal dentro dela e rode `claude`
3. Cole a copy (ou aponte para o arquivo) e peça para revisar:
   - *"copy chief essa VSL"* → aplica os 9 Power Prompts iterativamente
   - *"eleva esse advertorial e gera uma headline melhor"* → revisão + headline/micro-lead
   - *"revisa os subject lines desse email"* → aplicado aos tópicos de email

---

## Estrutura

```
copy-chief/  (repo-fonte)
├── CLAUDE.md
├── README.md
├── LICENSE
├── Install.bat
└── skills/
    └── copy-chief/
        ├── SKILL.md
        ├── knowledge/
        │   ├── power-prompts.md
        │   ├── qa-checklist.md
        │   └── headlines-and-microleads.md
        └── prompts/
```

---

## Como funciona

| Etapa | O que faz |
|---|---|
| Input | Copy já escrita (VSL, advertorial, ads, email, social) |
| Power Prompts | Aplica os 9 prompts de elevação (dimensionalização, prova, clareza, ritmo, power words, etc.) |
| QA Checklist | Avalia contra 6 eixos da metodologia de Stefan |
| Headlines | Gera 3-5 alternativas de headline/micro-lead se aplicável |
| Output | Antes/Depois com sugestões citadas + resumo dos 6 eixos |

---

## Os 9 Power Prompts

1. Dimensionalização de dor/benefício
2. Modalidades de prova (social, científica, resultados)
3. Remoção de fluff (clareza via corte)
4. Nível de leitura (ajusta complexidade)
5. Ritmo conversacional (cadência, natureza)
6. Power words (palavra-chave crítica)
7. Progressive tense (movimento, ação)
8. Remoção de qualifiers desnecessários
9. Verificação final de promessa central única

---

## Princípios fundamentais

- **Nunca gera copy do zero** — só eleva o que já existe
- **Trabalha por citação + sugestão** — nunca substitui silenciosamente
- **Nunca inventa prova** — sem fonte real, marca `[A VALIDAR]`
- **Preserva mecanismo único** — se existir `unique-mechanism.md`

---

## Copyright

© 2026 Mikael Lovrin. Licenciado sob [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)
