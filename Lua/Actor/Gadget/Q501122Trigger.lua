require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501122Trigger = class("Q501122Trigger", GadgetActorProxy)
Q501122Trigger.defaultAlias = "Q501122Trigger"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501122Trigger:OnPostDataPrepare()
    print("Q501122Trigger - OnPostDataPrepare")
    this = self
end

function Q501122Trigger:OnPostComponentPrepare()
    print("Q501122Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501122Trigger:TriggerIn()
    print("Q501122Trigger - TriggerIn")
    actorMgr:GetActor("5011"):RequestInteraction(npcs.Npc1088_1.alias, "", true)
    this:DestroySelf()
end

function Q501122Trigger:PreTriggerIn()
    print("Q501122Trigger - PreTriggerIn")
end

function Q501122Trigger:LightUpTriggerIn()
    print("Q501122Trigger - LightUpTriggerIn")
end

function Q501122Trigger:TriggerOut()
    print("Q501122Trigger - TriggerOut")
end

return Q501122Trigger
