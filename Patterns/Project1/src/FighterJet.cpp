
#include "FighterJet.h"
#include "Singleton.h"

FighterJet::FighterJet()
{
	renderer = Singleton::GetInstance().GetRenderer();
	shader = Singleton::GetInstance().GetDefaultShader();

	LoadFighterModel();
}

FighterJet::FighterJet(Model* copyModel)
{
	renderer = Singleton::GetInstance().GetRenderer();
	shader = Singleton::GetInstance().GetDefaultShader();

	this->copyModel = copyModel;

	LoadFighterModel();
}

FighterJet::~FighterJet()
{
}

void FighterJet::LoadFighterModel()
{
	if (copyModel == nullptr)
	{
		copyModel = new Model("Models/FighterJet/FighterJet.ply");
	}

	model = new Model(*copyModel);
	//model = new Model("Models/Asteroids/AsteroidGroup.ply");
	model->id = "FIGHTER";
	SetGameObjectId(model->id);

	renderer->AddModelsAndShader(model, shader);
}

void FighterJet::SetPosition(const glm::vec3& position)
{
	model->transform.SetPosition(position);
}

void FighterJet::SetRotation(const glm::vec3& rotation)
{
	model->transform.SetRotation(rotation);

}

void FighterJet::SetScale(const glm::vec3& scale)
{
	model->transform.SetScale(scale);

}

void FighterJet::SetId(const std::string& id)
{
	model->id = id;
	SetGameObjectId(id);
}
