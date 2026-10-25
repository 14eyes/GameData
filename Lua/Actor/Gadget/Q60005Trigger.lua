require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60005Trigger = class("Q60005Trigger", GadgetActorProxy)
Q60005Trigger.defaultAlias = "Q60005Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60005Trigger:OnPostDataPrepare()
    print("Q60005Trigger - OnPostDataPrepare")
    this = self
end

function Q60005Trigger:OnPostComponentPrepare()
    print("Q60005Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 9, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60005Trigger:TriggerIn()
    print("Q60005Trigger - TriggerIn")
    actorMgr:GetActor("600"):RequestInteraction(npcs.Npc15240_1.alias, "", true)
    this:DestroySelf()
end

function Q60005Trigger:PreTriggerIn()
    print("Q60005Trigger - PreTriggerIn")
end

function Q60005Trigger:LightUpTriggerIn()
    print("Q60005Trigger - LightUpTriggerIn")
end

function Q60005Trigger:TriggerOut()
    print("Q60005Trigger - TriggerOut")
end

return Q60005Trigger
