require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger = class("Q40194Trigger", GadgetActorProxy)
Q40194Trigger.defaultAlias = "Q40194Trigger"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger:OnPostDataPrepare()
    print("Q40194Trigger - OnPostDataPrepare")
    this = self
end

function Q40194Trigger:OnPostComponentPrepare()
    print("Q40194Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger:TriggerIn()
    print("Q40194Trigger - TriggerIn")
    actorMgr:GetActor("40194"):RequestInteraction(npcs.Npc1088.alias, "", true)
    this:DestroySelf()
end

function Q40194Trigger:PreTriggerIn()
    print("Q40194Trigger - PreTriggerIn")
end

function Q40194Trigger:LightUpTriggerIn()
    print("Q40194Trigger - LightUpTriggerIn")
end

function Q40194Trigger:TriggerOut()
    print("Q40194Trigger - TriggerOut")
end

return Q40194Trigger
