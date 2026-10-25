require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613211Trigger = class("Q7613211Trigger", GadgetActorProxy)
Q7613211Trigger.defaultAlias = "Q7613211Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613211Trigger:OnPostDataPrepare()
    print("Q7613211Trigger - OnPostDataPrepare")
    this = self
end

function Q7613211Trigger:OnPostComponentPrepare()
    print("Q7613211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(64.55397, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613211Trigger:TriggerIn()
    print("Q7613211Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613211)
    this:DestroySelf()
end

function Q7613211Trigger:PreTriggerIn()
    print("Q7613211Trigger - PreTriggerIn")
end

function Q7613211Trigger:LightUpTriggerIn()
    print("Q7613211Trigger - LightUpTriggerIn")
end

function Q7613211Trigger:TriggerOut()
    print("Q7613211Trigger - TriggerOut")
end

return Q7613211Trigger
