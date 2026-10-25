require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025130Trigger_1 = class("Q4025130Trigger_1", GadgetActorProxy)
Q4025130Trigger_1.defaultAlias = "Q4025130Trigger_1"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025130Trigger_1:OnPostDataPrepare()
    print("Q4025130Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q4025130Trigger_1:OnPostComponentPrepare()
    print("Q4025130Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025130Trigger_1:TriggerIn()
    print("Q4025130Trigger_1 - TriggerIn")
    actorMgr:GetActor("40251"):RequestInteraction(npcs.Npc17259.alias, "", true)
    this:DestroySelf()
end

function Q4025130Trigger_1:PreTriggerIn()
    print("Q4025130Trigger_1 - PreTriggerIn")
end

function Q4025130Trigger_1:LightUpTriggerIn()
    print("Q4025130Trigger_1 - LightUpTriggerIn")
end

function Q4025130Trigger_1:TriggerOut()
    print("Q4025130Trigger_1 - TriggerOut")
end

return Q4025130Trigger_1
