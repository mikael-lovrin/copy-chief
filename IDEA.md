# Ideia / Hipótese

**Hipótese:** o pipeline de agentes do grupo FEG tinha um buraco real depois da escrita — todas as skills (`vsl-builder`, `adv-builder`, `ads-builder`, `mail-mkt`, `social-media-agent`) geram copy nova, mas nenhuma eleva a qualidade do que já foi escrito. Isso deixava a "última milha" (dimensionalizar pain/benefit, cortar fluff, baixar nível de leitura, headline final) dependendo 100% de revisão humana.

**De onde veio:** identificado no reconhecimento de 2026-07-17 (`FEG_MASTER.md`), bloqueado inicialmente porque o material-fonte (9 Power Prompts do `AI-Copy-Chief-Training`) estava em Google Docs não baixados. Resolvido na mesma sessão ao descobrir que os docs são exportáveis sem autenticação (`export?format=txt`), baixando os ~49 docs relevantes das formações de IA do corpus e lendo os 6 do Copy Chief na íntegra.

**Por que separado de `hook-lab` e das skills de escrita:** three perguntas diferentes — hook-lab = "qual a primeira frase" (antes), skills de escrita = "qual é a copy inteira" (geração), copy-chief = "essa copy já está no seu melhor nível" (depois). Cada uma com seu próprio corpo de metodologia literal do Stefan Georgi, sem overlap real.

**Risco conhecido:** ainda não testado em produto real (ver `EXPERIMENTS.md`). O material de headline/micro-lead (`headlines-and-microleads.md`) foi validado com um único case study real (Wild Belly TSL, nicho pet health) — pode precisar de ajuste pra nichos muito diferentes (ex: financeiro, high-ticket).
