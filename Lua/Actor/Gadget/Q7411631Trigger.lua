require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411631Trigger = class("Q7411631Trigger", GadgetActorProxy)
Q7411631Trigger.defaultAlias = "Q7411631Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411631Trigger:OnPostDataPrepare()
    print("Q7411631Trigger - OnPostDataPrepare")
    this = self
end

function Q7411631Trigger:OnPostComponentPrepare()
    print("Q7411631Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411631Trigger:TriggerIn()
    print("Q7411631Trigger - TriggerIn")
    actorMgr:GetActor("74116"):RequestInteraction(npcs.Npc21158Data.alias, "", true)
end

function Q7411631Trigger:PreTriggerIn()
    print("Q7411631Trigger - PreTriggerIn")
end

function Q7411631Trigger:LightUpTriggerIn()
    print("Q7411631Trigger - LightUpTriggerIn")
end

function Q7411631Trigger:TriggerOut()
    print("Q7411631Trigger - TriggerOut")
end

return Q7411631Trigger
