require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609303Trigger = class("Q7609303Trigger", GadgetActorProxy)
Q7609303Trigger.defaultAlias = "Q7609303Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609303Trigger:OnPostDataPrepare()
    print("Q7609303Trigger - OnPostDataPrepare")
    this = self
end

function Q7609303Trigger:OnPostComponentPrepare()
    print("Q7609303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609303Trigger:TriggerIn()
    print("Q7609303Trigger - TriggerIn")
    actorMgr:GetActor("76093"):RequestInteraction(npcs.Npc7183.alias, "", true)
    this:DestroySelf()
end

function Q7609303Trigger:PreTriggerIn()
    print("Q7609303Trigger - PreTriggerIn")
end

function Q7609303Trigger:LightUpTriggerIn()
    print("Q7609303Trigger - LightUpTriggerIn")
end

function Q7609303Trigger:TriggerOut()
    print("Q7609303Trigger - TriggerOut")
end

return Q7609303Trigger
