require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710428Trigger = class("Q7710428Trigger", GadgetActorProxy)
Q7710428Trigger.defaultAlias = "Q7710428Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710428Trigger:OnPostDataPrepare()
    print("Q7710428Trigger - OnPostDataPrepare")
    this = self
end

function Q7710428Trigger:OnPostComponentPrepare()
    print("Q7710428Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710428Trigger:TriggerIn()
    print("Q7710428Trigger - TriggerIn")
    local questGlobalVar = actorMgr:GetActor("77104"):GetQuestGlobalVar(7721401)
    if questGlobalVar == 0 then
        actorMgr:GetActor("77104"):QuestNarratorTask(datas.NarratorWithId_77104283, nil)
        this:DestroySelf()
    elseif questGlobalVar == 1 then
        actorMgr:GetActor("77104"):QuestNarratorTask(datas.NarratorWithId_77104281, nil)
        this:DestroySelf()
    end
end

function Q7710428Trigger:PreTriggerIn()
    print("Q7710428Trigger - PreTriggerIn")
end

function Q7710428Trigger:LightUpTriggerIn()
    print("Q7710428Trigger - LightUpTriggerIn")
end

function Q7710428Trigger:TriggerOut()
    print("Q7710428Trigger - TriggerOut")
end

return Q7710428Trigger
