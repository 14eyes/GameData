require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801611igger = class("Q801611igger", GadgetActorProxy)
Q801611igger.defaultAlias = "Q801611igger"
local Q8016ClientConfig = require("Quest/Client/Q8016ClientConfig")

local this
local subIDs = Q8016ClientConfig.SubIDs
local datas = Q8016ClientConfig.Datas
local npcs = Q8016ClientConfig.Npcs
local points = Q8016ClientConfig.Points

function Q801611igger:OnPostDataPrepare()
    print("Q801611igger - OnPostDataPrepare")
    this = self
end

function Q801611igger:OnPostComponentPrepare()
    print("Q801611igger - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8016)
end

function Q801611igger:TriggerIn()
    print("Q801611igger - TriggerIn")
    actorUtils.FinishQuestID(false, 801611)
    actorMgr:GetActor("8016"):QuestNarratorTask(datas.Q801602Kaiche, nil)
    this:DestroySelf()
    actorMgr:GetActor("8016"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
end

function Q801611igger:PreTriggerIn()
    print("Q801611igger - PreTriggerIn")
end

function Q801611igger:LightUpTriggerIn()
    print("Q801611igger - LightUpTriggerIn")
end

function Q801611igger:TriggerOut()
    print("Q801611igger - TriggerOut")
end

return Q801611igger
