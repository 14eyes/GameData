require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501114Trigger = class("Q501114Trigger", GadgetActorProxy)
Q501114Trigger.defaultAlias = "Q501114Trigger"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501114Trigger:OnPostDataPrepare()
    print("Q501114Trigger - OnPostDataPrepare")
    this = self
end

function Q501114Trigger:OnPostComponentPrepare()
    print("Q501114Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501114Trigger:TriggerIn()
    print("Q501114Trigger - TriggerIn")
    actorMgr:GetActor("5011"):RequestInteraction(npcs.Npc14392.alias, "", true)
    this:DestroySelf()
end

function Q501114Trigger:PreTriggerIn()
    print("Q501114Trigger - PreTriggerIn")
end

function Q501114Trigger:LightUpTriggerIn()
    print("Q501114Trigger - LightUpTriggerIn")
end

function Q501114Trigger:TriggerOut()
    print("Q501114Trigger - TriggerOut")
end

return Q501114Trigger
