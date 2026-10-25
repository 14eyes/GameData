require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019006Trigger = class("Q4019006Trigger", GadgetActorProxy)
Q4019006Trigger.defaultAlias = "Q4019006Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019006Trigger:OnPostDataPrepare()
    print("Q4019006Trigger - OnPostDataPrepare")
    this = self
end

function Q4019006Trigger:OnPostComponentPrepare()
    print("Q4019006Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(24, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019006Trigger:TriggerIn()
    print("Q4019006Trigger - TriggerIn")
    actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc1037.alias, "", true)
    this:DestroySelf()
end

function Q4019006Trigger:PreTriggerIn()
    print("Q4019006Trigger - PreTriggerIn")
end

function Q4019006Trigger:LightUpTriggerIn()
    print("Q4019006Trigger - LightUpTriggerIn")
end

function Q4019006Trigger:TriggerOut()
    print("Q4019006Trigger - TriggerOut")
end

return Q4019006Trigger
