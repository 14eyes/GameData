require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610103Trigger = class("Q7610103Trigger", GadgetActorProxy)
Q7610103Trigger.defaultAlias = "Q7610103Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610103Trigger:OnPostDataPrepare()
    print("Q7610103Trigger - OnPostDataPrepare")
    this = self
end

function Q7610103Trigger:OnPostComponentPrepare()
    print("Q7610103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610103Trigger:TriggerIn()
    print("Q7610103Trigger - TriggerIn")
    actorMgr:GetActor("76101"):RequestInteraction(npcs.Npc7180.alias, "", true)
    this:DestroySelf()
end

function Q7610103Trigger:PreTriggerIn()
    print("Q7610103Trigger - PreTriggerIn")
end

function Q7610103Trigger:LightUpTriggerIn()
    print("Q7610103Trigger - LightUpTriggerIn")
end

function Q7610103Trigger:TriggerOut()
    print("Q7610103Trigger - TriggerOut")
end

return Q7610103Trigger
