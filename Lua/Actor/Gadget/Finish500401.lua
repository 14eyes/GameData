require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Finish500401 = class("Finish500401", GadgetActorProxy)
Finish500401.defaultAlias = "Finish500401"
local Q5004ClientConfig = require("Quest/Client/Q5004ClientConfig")

local this
local subIDs = Q5004ClientConfig.SubIDs
local datas = Q5004ClientConfig.Datas
local npcs = Q5004ClientConfig.Npcs
local points = Q5004ClientConfig.Points

function Finish500401:OnPostDataPrepare()
    print("Finish500401 - OnPostDataPrepare")
    this = self
end

function Finish500401:OnPostComponentPrepare()
    print("Finish500401 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5004)
end

function Finish500401:TriggerIn()
    print("Finish500401 - TriggerIn")
    actorMgr:GetActor("5004"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams_500401)
    actorMgr:GetActor("5004"):ClearNarratorTask()
    if actorUtils.HasMetNpc(npcs.Npc6100.id) then
        actorMgr:GetActor("5004"):QuestNarratorTask(datas.NarratorWithId_500403, nil)
        actorUtils.FinishQuestID(false, 500401)
        this:DestroySelf()
    else
        actorMgr:GetActor("5004"):QuestNarratorTask(datas.NarratorWithId_500402, nil)
        actorUtils.FinishQuestID(false, 500401)
        this:DestroySelf()
    end
end

function Finish500401:PreTriggerIn()
    print("Finish500401 - PreTriggerIn")
end

function Finish500401:LightUpTriggerIn()
    print("Finish500401 - LightUpTriggerIn")
end

function Finish500401:TriggerOut()
    print("Finish500401 - TriggerOut")
end

return Finish500401
