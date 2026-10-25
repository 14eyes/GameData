require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613217Trigger = class("Q7613217Trigger", GadgetActorProxy)
Q7613217Trigger.defaultAlias = "Q7613217Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613217Trigger:OnPostDataPrepare()
    print("Q7613217Trigger - OnPostDataPrepare")
    this = self
end

function Q7613217Trigger:OnPostComponentPrepare()
    print("Q7613217Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(18.998447, 23.917042, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613217Trigger:TriggerIn()
    print("Q7613217Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613217)
    this:DestroySelf()
end

function Q7613217Trigger:PreTriggerIn()
    print("Q7613217Trigger - PreTriggerIn")
end

function Q7613217Trigger:LightUpTriggerIn()
    print("Q7613217Trigger - LightUpTriggerIn")
end

function Q7613217Trigger:TriggerOut()
    print("Q7613217Trigger - TriggerOut")
end

return Q7613217Trigger
