require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018502Trigger = class("Q4018502Trigger", GadgetActorProxy)
Q4018502Trigger.defaultAlias = "Q4018502Trigger"
local Q40185ClientConfig = require("Quest/Client/Q40185ClientConfig")

local this
local subIDs = Q40185ClientConfig.SubIDs
local datas = Q40185ClientConfig.Datas
local npcs = Q40185ClientConfig.Npcs
local points = Q40185ClientConfig.Points

function Q4018502Trigger:OnPostDataPrepare()
    print("Q4018502Trigger - OnPostDataPrepare")
    this = self
end

function Q4018502Trigger:OnPostComponentPrepare()
    print("Q4018502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40185)
end

function Q4018502Trigger:TriggerIn()
    print("Q4018502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4018502)
    actorMgr:GetActor("40185"):QuestNarratorTask(datas.NarratorWithId_4018502, nil)
    this:DestroySelf()
end

function Q4018502Trigger:PreTriggerIn()
    print("Q4018502Trigger - PreTriggerIn")
end

function Q4018502Trigger:LightUpTriggerIn()
    print("Q4018502Trigger - LightUpTriggerIn")
end

function Q4018502Trigger:TriggerOut()
    print("Q4018502Trigger - TriggerOut")
end

return Q4018502Trigger
