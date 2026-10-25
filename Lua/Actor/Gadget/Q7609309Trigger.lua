require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609309Trigger = class("Q7609309Trigger", GadgetActorProxy)
Q7609309Trigger.defaultAlias = "Q7609309Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609309Trigger:OnPostDataPrepare()
    print("Q7609309Trigger - OnPostDataPrepare")
    this = self
end

function Q7609309Trigger:OnPostComponentPrepare()
    print("Q7609309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609309Trigger:TriggerIn()
    print("Q7609309Trigger - TriggerIn")
    actorMgr:GetActor("76093"):RequestInteraction(npcs.Npc7181.alias, "", true)
    this:DestroySelf()
end

function Q7609309Trigger:PreTriggerIn()
    print("Q7609309Trigger - PreTriggerIn")
end

function Q7609309Trigger:LightUpTriggerIn()
    print("Q7609309Trigger - LightUpTriggerIn")
end

function Q7609309Trigger:TriggerOut()
    print("Q7609309Trigger - TriggerOut")
end

return Q7609309Trigger
