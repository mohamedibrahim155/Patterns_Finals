#include "ScaleTo.h"

ScaleTo::ScaleTo(Model*& model, const glm::vec3& Scale, const float& time)
{
	this->model = model;
	this->targetScale = Scale;
	this->time = time;
}

ScaleTo::~ScaleTo()
{
}

void ScaleTo::Start()
{
	timeStep = 0;
}

void ScaleTo::Update(float deltatime)
{
	timeStep += deltatime / time;

	if (time == 0)
	{
		lerpValue = 1;
		timeStep = 1;
	}
	//else if (easeInTime != 0 && timeStep <= easeInRatio)
	//{
	//	lerpValue = EaseIn(timeStep / easeInRatio);
	//	lerpValue *= easeInRatio;
	//}
	//else if (easeOutTime != 0 && timeStep >= easeOutStart)
	//{
	//	lerpValue = EaseOut((timeStep - easeOutStart) / easeOutRatio);
	//	lerpValue *= easeOutRatio;
	//	lerpValue += easeOutStart;
	//}
	else
	{
		lerpValue = timeStep;
	}
	model->transform.SetScale(LerpObject(currentScale, targetScale, lerpValue));
}

void ScaleTo::SetStarted(bool isStarted)
{
}

bool ScaleTo::IsComplete()
{
	if (!updatedOnce)
	{
		return false;
	}
	if (lerpValue >= 1)
	{
		return true;
	}

	return false;
}

bool ScaleTo::IsStarted()
{
	return false;
}

glm::vec3 ScaleTo::LerpObject(const glm::vec3& a, const glm::vec3& b, float t)
{
	t = glm::clamp(t, 0.0f, 1.0f);

	return a + t * (b - a);
}
