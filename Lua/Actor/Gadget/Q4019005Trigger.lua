require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019005Trigger = class("Q4019005Trigger", GadgetActorProxy)
Q4019005Trigger.defaultAlias = "Q4019005Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019005Trigger:OnPostDataPrepare()
    print("Q4019005Trigger - OnPostDataPrepare")
    this = self
end

function Q4019005Trigger:OnPostComponentPrepare()
    print("Q4019005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019005Trigger:TriggerIn()
    print("Q4019005Trigger - TriggerIn")
    actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc1044.alias, "", true)
    this:DestroySelf()
end

function Q4019005Trigger:PreTriggerIn()
    print("Q4019005Trigger - PreTriggerIn")
end

function Q4019005Trigger:LightUpTriggerIn()
    print("Q4019005Trigger - LightUpTriggerIn")
end

function Q4019005Trigger:TriggerOut()
    print("Q4019005Trigger - TriggerOut")
end

return Q4019005Trigger
