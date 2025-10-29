# 🛍️ TTSAPP — Aplicativo de E-commerce

O **TTSAPP** é um aplicativo mobile multiplataforma desenvolvido em **Flutter**, voltado para soluções de **e-commerce**.  
O projeto tem como objetivo oferecer uma base sólida para a criação de lojas virtuais completas, com funcionalidades essenciais para comercialização de produtos online.

---

## Tecnologias Utilizadas

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=apple&logoColor=white)

**Framework:** Flutter (Google)  
**Linguagem:** Dart  
**Plataformas Suportadas:** Android e iOS  

---

📍Objetivo do Projeto

O TTSAPP foi desenvolvido para **demonstrar o potencial do Flutter na construção de aplicativos móveis de e-commerce**, com foco em:

- Interface moderna e responsiva  
- Compatibilidade multiplataforma (iOS e Android)  
- Arquitetura escalável e modular  
- Facilidade de integração com serviços de backend, como **Firebase**

---

🗂️ Estrutura e Arquitetura

O projeto segue a arquitetura padrão do Flutter para aplicações mobile, mantendo **separação de responsabilidades** e **organização de pastas clara**:
```
/
├── lib/
│   ├── screens/        # Telas do aplicativo (home, produto, carrinho, etc.)
│   ├── widgets/        # Componentes reutilizáveis
│   ├── models/         # Estruturas de dados
│   ├── services/       # Integrações (ex: Firebase, API, Auth)
│   └── main.dart       # Ponto de entrada da aplicação
├── assets/             # Imagens, ícones e recursos visuais
└── pubspec.yaml        # Dependências e configurações do projeto
```
---
💼 Funcionalidades do E-commerce

O projeto segue o modelo de um aplicativo completo de e-commerce, incluindo as seguintes funcionalidades:

🛒 Catálogo de produtos: exibição de fotos, descrições e preços

👤 Autenticação de usuários: cadastro e login via Firebase

💳 Carrinho de compras: adição, remoção e totalização de produtos

📦 Gerenciamento de pedidos: controle do fluxo de compra

🔍 Busca e filtros: pesquisa por nome, categoria e preço

💬 Avaliações e comentários: interação com produtos

☁️ Integração com Firebase Firestore: armazenamento e sincronização em nuvem

---

👥 Público-Alvo

O TTSAPP é voltado para lojistas e empreendedores que desejam expandir seus negócios para o ambiente mobile, oferecendo aos clientes uma experiência de compra:

📱 Otimizada para dispositivos móveis

🎨 Moderna e intuitiva

⚡ Rápida e escalável

---

🧠 Aprendizados e Desenvolvimento

Durante o desenvolvimento do projeto, foram abordados e aplicados conceitos essenciais do desenvolvimento mobile:

🧱 Estruturação de um projeto Flutter profissional

🔄 Gerenciamento de estado e navegação entre telas

🔐 Integração com Firebase (Auth, Firestore, Storage)

📏 Responsividade e design adaptativo

💡 Princípios de UX/UI aplicados a aplicativos de e-commerce

---

⚙️ Como Executar o Projeto

Certifique-se de ter o **Flutter SDK** instalado e configurado corretamente.

Clone o repositório
````
git clone https://github.com/ysabela001/TTSAPP.git
````

Acesse a pasta do projeto
````
cd TTSAPP
````

Instale as dependências
````
flutter pub get
````

Execute o app
````
flutter run
````

