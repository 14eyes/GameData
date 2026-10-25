require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714811Trigger = class("Q7714811Trigger", GadgetActorProxy)
Q7714811Trigger.defaultAlias = "Q7714811Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714811Trigger:OnPostDataPrepare()
    print("Q7714811Trigger - OnPostDataPrepare")
    this = self
end

function Q7714811Trigger:OnPostComponentPrepare()
    print("Q7714811Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714811Trigger:TriggerIn()
    print("Q7714811Trigger - TriggerIn")
    actorMgr:GetActor("77148"):QuestNarratorTask(datas.NarratorWithId_97714811, nil)
    actorUtils.FinishQuestWithParam({false}, {7714811})
    this:DestroySelf()
end

function Q7714811Trigger:PreTriggerIn()
    print("Q7714811Trigger - PreTriggerIn")
end

function Q7714811Trigger:LightUpTriggerIn()
    print("Q7714811Trigger - LightUpTriggerIn")
end

function Q7714811Trigger:TriggerOut()
    print("Q7714811Trigger - TriggerOut")
end

return Q7714811Trigger
