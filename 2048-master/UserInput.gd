extends Control

var current_score = 0
var best_score = 0
var previous_score = 0  # Переменная для хранения предыдущего счёта

func on_point_scored(amount):
	previous_score = current_score  # Сохраняем текущее состояние перед изменением
	current_score += amount

	# Обновляем текст текущего счета
	$Score.text = str('Score: ', current_score)
	
	# Проверяем, является ли текущий счет новым лучшим результатом
	if current_score > best_score:
		best_score = current_score
		$best_score.text = str('Best Score: ', best_score)  # Обновляем текст лучшего результата

func _on_ButtonExit_pressed():
	current_score = previous_score  # Восстанавливаем предыдущее состояние
	$Score.text = str('Score: ', current_score)  # Обновляем отображение счета

func _on_ButtonNewGame_pressed():
	current_score = 0
	previous_score = 0  # Сбрасываем предыдущее состояние
	$Score.text = str('Score: ', current_score)
	$best_score.text = str('Best Score: ', best_score)  # Обновляем текст лучшего результата


