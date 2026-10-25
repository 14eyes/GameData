require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714803Trigger = class("Q7714803Trigger", GadgetActorProxy)
Q7714803Trigger.defaultAlias = "Q7714803Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714803Trigger:OnPostDataPrepare()
    print("Q7714803Trigger - OnPostDataPrepare")
    this = self
end

function Q7714803Trigger:OnPostComponentPrepare()
    print("Q7714803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714803Trigger:TriggerIn()
    print("Q7714803Trigger - TriggerIn")
    actorMgr:GetActor("77148"):QuestNarratorTask(datas.NarratorWithId_97714803, nil)
    actorUtils.FinishQuestID(false, 7714803)
    this:DestroySelf()
end

function Q7714803Trigger:PreTriggerIn()
    print("Q7714803Trigger - PreTriggerIn")
end

function Q7714803Trigger:LightUpTriggerIn()
    print("Q7714803Trigger - LightUpTriggerIn")
end

function Q7714803Trigger:TriggerOut()
    print("Q7714803Trigger - TriggerOut")
end

return Q7714803Trigger
