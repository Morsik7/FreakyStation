# SPDX-FileCopyrightText: 2023 Guillaume E <262623+quatre@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vascreeper@yahoo.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Hannah Giovanna Dawson <karakkaraz@gmail.com>
# SPDX-FileCopyrightText: 2024 eoineoineoin <github@eoinrul.es>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

analysis-console-info-durability = [font="Monospace" size=11]Долговечность:[/font]
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
    [true] {$info}
    *[false] Разблокируйте узлы для перехода
}[/color][/font]
analysis-console-extract-value = [font="Monospace" size=11][color=orange]Очков {$id} (+{$value})[/color][/font]
analysis-console-extract-none = [font="Monospace" size=11][color=orange] Нет разблокированных узлов для извлечения очков[/color][/font]
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]Всего очков: {$value}[/color][/font]
analyzer-artifact-extract-popup = На поверхности артефакта мерцает энергия!