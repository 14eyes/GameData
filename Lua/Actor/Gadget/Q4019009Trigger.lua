require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019009Trigger = class("Q4019009Trigger", GadgetActorProxy)
Q4019009Trigger.defaultAlias = "Q4019009Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019009Trigger:OnPostDataPrepare()
    print("Q4019009Trigger - OnPostDataPrepare")
    this = self
end

function Q4019009Trigger:OnPostComponentPrepare()
    print("Q4019009Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019009Trigger:TriggerIn()
    print("Q4019009Trigger - TriggerIn")
    actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc1038.alias, "", true)
    this:DestroySelf()
end

function Q4019009Trigger:PreTriggerIn()
    print("Q4019009Trigger - PreTriggerIn")
end

function Q4019009Trigger:LightUpTriggerIn()
    print("Q4019009Trigger - LightUpTriggerIn")
end

function Q4019009Trigger:TriggerOut()
    print("Q4019009Trigger - TriggerOut")
end

return Q4019009Trigger
