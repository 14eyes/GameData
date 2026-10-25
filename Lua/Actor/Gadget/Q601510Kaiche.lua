require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601510Kaiche = class("Q601510Kaiche", GadgetActorProxy)
Q601510Kaiche.defaultAlias = "Q601510Kaiche"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601510Kaiche:OnPostDataPrepare()
    print("Q601510Kaiche - OnPostDataPrepare")
    this = self
end

function Q601510Kaiche:OnPostComponentPrepare()
    print("Q601510Kaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601510Kaiche:TriggerIn()
    print("Q601510Kaiche - TriggerIn")
    actorMgr:GetActor("6015"):QuestNarratorTask(datas.Q601503Kaiche02, nil)
    actorMgr:GetActor("6015"):EnterSceneLookCameraByParam(datas.Q601510SceneLook)
    this:DestroySelf()
end

function Q601510Kaiche:PreTriggerIn()
    print("Q601510Kaiche - PreTriggerIn")
end

function Q601510Kaiche:LightUpTriggerIn()
    print("Q601510Kaiche - LightUpTriggerIn")
end

function Q601510Kaiche:TriggerOut()
    print("Q601510Kaiche - TriggerOut")
end

return Q601510Kaiche
