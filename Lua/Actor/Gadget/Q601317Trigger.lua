require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601317Trigger = class("Q601317Trigger", GadgetActorProxy)
Q601317Trigger.defaultAlias = "Q601317Trigger"
local Q6013ClientConfig = require("Quest/Client/Q6013ClientConfig")

local this
local subIDs = Q6013ClientConfig.SubIDs
local datas = Q6013ClientConfig.Datas
local npcs = Q6013ClientConfig.Npcs
local points = Q6013ClientConfig.Points

function Q601317Trigger:OnPostDataPrepare()
    print("Q601317Trigger - OnPostDataPrepare")
    this = self
end

function Q601317Trigger:OnPostComponentPrepare()
    print("Q601317Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6013)
end

function Q601317Trigger:TriggerIn()
    print("Q601317Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601317)
    this:DestroySelf()
end

function Q601317Trigger:PreTriggerIn()
    print("Q601317Trigger - PreTriggerIn")
end

function Q601317Trigger:LightUpTriggerIn()
    print("Q601317Trigger - LightUpTriggerIn")
end

function Q601317Trigger:TriggerOut()
    print("Q601317Trigger - TriggerOut")
end

return Q601317Trigger
