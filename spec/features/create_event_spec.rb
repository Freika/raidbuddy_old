require 'rails_helper'

feature 'Event creation' do
  let(:user) { create :user }
  let(:event) { create :event }
  scenario 'User creates a new event' do
    sign_in_with(user.email, user.password)

    click_link 'Создать событие'

    fill_in 'Название события', with: event.name
    fill_in 'Энкаунтер', with: event.encounter_id
    fill_in 'Дата и время начала', with: event.startdate
    fill_in 'Время завершения', with: event.endtime
    fill_in 'Описание событи', with: event.description
    fill_in 'Стиль игры', with: event.playstyle
    fill_in 'Танки', with: event.tanks
    fill_in 'Лекари', with: event.healers
    fill_in 'DPS', with: event.dps
    fill_in 'Тип разделения добычи', with: event.loottype
    fill_in 'Минимальный уровень персонажа', with: event.min_level
    fill_in 'Минимальный уровень предметов', with: event.min_item_level

    click_button 'Сохранить событие'
  end
end
