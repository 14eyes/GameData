require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402706_Trigger = class("Q1402706_Trigger", GadgetActorProxy)
Q1402706_Trigger.defaultAlias = "Q1402706_Trigger"
local Q14027ClientConfig = require("Quest/Client/Q14027ClientConfig")

local this
local subIDs = Q14027ClientConfig.SubIDs
local datas = Q14027ClientConfig.Datas
local npcs = Q14027ClientConfig.Npcs
local points = Q14027ClientConfig.Points

function Q1402706_Trigger:OnPostDataPrepare()
    print("Q1402706_Trigger - OnPostDataPrepare")
    this = self
end

function Q1402706_Trigger:OnPostComponentPrepare()
    print("Q1402706_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14027)
end

function Q1402706_Trigger:TriggerIn()
    print("Q1402706_Trigger - TriggerIn")
    actorMgr:GetActor("14027"):RequestInteraction(npcs.Npc14047.alias, "", true)
    this:DestroySelf()
end

function Q1402706_Trigger:PreTriggerIn()
    print("Q1402706_Trigger - PreTriggerIn")
end

function Q1402706_Trigger:LightUpTriggerIn()
    print("Q1402706_Trigger - LightUpTriggerIn")
end

function Q1402706_Trigger:TriggerOut()
    print("Q1402706_Trigger - TriggerOut")
end

return Q1402706_Trigger
