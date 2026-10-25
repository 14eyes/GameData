require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600005Trigger = class("Q7600005Trigger", GadgetActorProxy)
Q7600005Trigger.defaultAlias = "Q7600005Trigger"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600005Trigger:OnPostDataPrepare()
    print("Q7600005Trigger - OnPostDataPrepare")
    this = self
end

function Q7600005Trigger:OnPostComponentPrepare()
    print("Q7600005Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 25, 25, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600005Trigger:TriggerIn()
    print("Q7600005Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600005)
    this:DestroySelf()
end

function Q7600005Trigger:PreTriggerIn()
    print("Q7600005Trigger - PreTriggerIn")
end

function Q7600005Trigger:LightUpTriggerIn()
    print("Q7600005Trigger - LightUpTriggerIn")
end

function Q7600005Trigger:TriggerOut()
    print("Q7600005Trigger - TriggerOut")
end

return Q7600005Trigger
