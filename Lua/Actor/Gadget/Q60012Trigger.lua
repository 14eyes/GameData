require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60012Trigger = class("Q60012Trigger", GadgetActorProxy)
Q60012Trigger.defaultAlias = "Q60012Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60012Trigger:OnPostDataPrepare()
    print("Q60012Trigger - OnPostDataPrepare")
    this = self
end

function Q60012Trigger:OnPostComponentPrepare()
    print("Q60012Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(6, 6, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60012Trigger:TriggerIn()
    print("Q60012Trigger - TriggerIn")
    actorMgr:GetActor("600"):RequestInteraction(npcs.Npc15240_1.alias, "", true)
end

function Q60012Trigger:PreTriggerIn()
    print("Q60012Trigger - PreTriggerIn")
end

function Q60012Trigger:LightUpTriggerIn()
    print("Q60012Trigger - LightUpTriggerIn")
end

function Q60012Trigger:TriggerOut()
    print("Q60012Trigger - TriggerOut")
end

return Q60012Trigger
