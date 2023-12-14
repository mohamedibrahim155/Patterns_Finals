#pragma once

#include "GameObject.h"
#include "GraphicsRender.h"
class Asteroid : public   GameObject
{
public:
	Asteroid();
	Asteroid(Model* model);
	~Asteroid();
	void LoadAsteroidModel();

	void SetPosition(const glm::vec3& position);
	void SetRotation(const glm::vec3& rotation);
	void SetScale(const glm::vec3& scale);

	void SetId(const std::string& id);
private:

	GraphicsRender* renderer;
	Shader* shader;

	Model* copyModel;
};

