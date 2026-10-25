require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411614Trigger = class("Q7411614Trigger", GadgetActorProxy)
Q7411614Trigger.defaultAlias = "Q7411614Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411614Trigger:OnPostDataPrepare()
    print("Q7411614Trigger - OnPostDataPrepare")
    this = self
end

function Q7411614Trigger:OnPostComponentPrepare()
    print("Q7411614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411614Trigger:TriggerIn()
    print("Q7411614Trigger - TriggerIn")
    actorMgr:GetActor("74116"):RequestInteraction(npcs.Npc21167Data.alias, "", true)
end

function Q7411614Trigger:PreTriggerIn()
    print("Q7411614Trigger - PreTriggerIn")
end

function Q7411614Trigger:LightUpTriggerIn()
    print("Q7411614Trigger - LightUpTriggerIn")
end

function Q7411614Trigger:TriggerOut()
    print("Q7411614Trigger - TriggerOut")
end

return Q7411614Trigger
