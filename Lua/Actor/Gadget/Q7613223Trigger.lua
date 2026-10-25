require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613223Trigger = class("Q7613223Trigger", GadgetActorProxy)
Q7613223Trigger.defaultAlias = "Q7613223Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613223Trigger:OnPostDataPrepare()
    print("Q7613223Trigger - OnPostDataPrepare")
    this = self
end

function Q7613223Trigger:OnPostComponentPrepare()
    print("Q7613223Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.443282, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613223Trigger:TriggerIn()
    print("Q7613223Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613223)
    this:DestroySelf()
end

function Q7613223Trigger:PreTriggerIn()
    print("Q7613223Trigger - PreTriggerIn")
end

function Q7613223Trigger:LightUpTriggerIn()
    print("Q7613223Trigger - LightUpTriggerIn")
end

function Q7613223Trigger:TriggerOut()
    print("Q7613223Trigger - TriggerOut")
end

return Q7613223Trigger
