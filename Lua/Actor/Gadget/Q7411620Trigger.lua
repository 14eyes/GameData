require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411620Trigger = class("Q7411620Trigger", GadgetActorProxy)
Q7411620Trigger.defaultAlias = "Q7411620Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411620Trigger:OnPostDataPrepare()
    print("Q7411620Trigger - OnPostDataPrepare")
    this = self
end

function Q7411620Trigger:OnPostComponentPrepare()
    print("Q7411620Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411620Trigger:TriggerIn()
    print("Q7411620Trigger - TriggerIn")
    actorMgr:GetActor("74116"):RequestInteraction(npcs.Npc21158Data.alias, "", true)
end

function Q7411620Trigger:PreTriggerIn()
    print("Q7411620Trigger - PreTriggerIn")
end

function Q7411620Trigger:LightUpTriggerIn()
    print("Q7411620Trigger - LightUpTriggerIn")
end

function Q7411620Trigger:TriggerOut()
    print("Q7411620Trigger - TriggerOut")
end

return Q7411620Trigger
