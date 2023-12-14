#pragma once

#include "GameObject.h"
#include "GraphicsRender.h"
#include "PhysicsEngine.h"

class FighterJet : public GameObject
{
public:
	FighterJet();
	FighterJet(Model* copyModel);
	FighterJet(Model* copyModel, Shader* DestroyShader);
	~FighterJet();

	void LoadFighterModel();

	void SetPosition(const glm::vec3& position);
	void SetRotation(const glm::vec3& rotation);
	void SetScale(const glm::vec3& scale);

	void  AddPhysicsForthisObject();
	

	void SetId(const std::string& id);

private:

	GraphicsRender* renderer;

	Shader* shader;

	PhysicsEngine* engine;

	Model* copyModel = nullptr;

	PhysicsObject* fighterPhysics = nullptr;

};
