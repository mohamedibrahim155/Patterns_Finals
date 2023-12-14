#pragma once

#include "GameObject.h"
#include "GraphicsRender.h"

class FighterJet : public GameObject
{
public:
	FighterJet();
	FighterJet(Model* copyModel);
	~FighterJet();

	void LoadFighterModel();

	void SetPosition(const glm::vec3& position);
	void SetRotation(const glm::vec3& rotation);
	void SetScale(const glm::vec3& scale);

	void SetId(const std::string& id);

private:

	GraphicsRender* renderer;

	Shader* shader;

	Model* copyModel = nullptr;

};
