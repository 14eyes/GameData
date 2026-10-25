require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609605Trigger = class("Q7609605Trigger", GadgetActorProxy)
Q7609605Trigger.defaultAlias = "Q7609605Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609605Trigger:OnPostDataPrepare()
    print("Q7609605Trigger - OnPostDataPrepare")
    this = self
end

function Q7609605Trigger:OnPostComponentPrepare()
    print("Q7609605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(24.866783, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609605Trigger:TriggerIn()
    print("Q7609605Trigger - TriggerIn")
    actorMgr:GetActor("76096"):QuestNarratorTask(datas.NarratorWithId_7609605, nil)
    actorUtils.FinishQuestID(false, 7609605)
    this:DestroySelf()
end

function Q7609605Trigger:PreTriggerIn()
    print("Q7609605Trigger - PreTriggerIn")
end

function Q7609605Trigger:LightUpTriggerIn()
    print("Q7609605Trigger - LightUpTriggerIn")
end

function Q7609605Trigger:TriggerOut()
    print("Q7609605Trigger - TriggerOut")
end

return Q7609605Trigger
