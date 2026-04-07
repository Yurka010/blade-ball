-- Завантаження бібліотеки інтерфейсу
local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

-- Створення вікна хабу
local Window = Rayfield:CreateWindow({
   Name = "Blade Ball Custom Hub",
   LoadingTitle = "Завантаження...",
   ConfigurationSaving = {
      Enabled = true,
      FileName = "BB_Config"
   }
})

-- Створення вкладки
local MainTab = Window:CreateTab("Головна", 4483362458)

-- Кнопка для Auto Parry
MainTab:CreateButton({
   Name = "Активувати Auto Parry",
   Callback = function()
       print("Скрипт відстеження м'яча запущено!")
       -- Тут буде твоя логіка Blade Ball
   end,
})

-- Слайдер для налаштування дистанції
MainTab:CreateSlider({
   Name = "Дистанція блоку",
   Range = {0, 100},
   Increment = 1,
   Suffix = " studs",
   CurrentValue = 20,
   Callback = function(Value)
       _G.ParryDistance = Value
   end,
})

Rayfield:Notify({
   Title = "Успішно!",
   Content = "Хаб завантажено",
   Duration = 5,
})
