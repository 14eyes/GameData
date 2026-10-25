require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403104Trigger = class("Q1403104Trigger", GadgetActorProxy)
Q1403104Trigger.defaultAlias = "Q1403104Trigger"
local Q14031ClientConfig = require("Quest/Client/Q14031ClientConfig")

local this
local subIDs = Q14031ClientConfig.SubIDs
local datas = Q14031ClientConfig.Datas
local npcs = Q14031ClientConfig.Npcs
local points = Q14031ClientConfig.Points

function Q1403104Trigger:OnPostDataPrepare()
    print("Q1403104Trigger - OnPostDataPrepare")
    this = self
end

function Q1403104Trigger:OnPostComponentPrepare()
    print("Q1403104Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14031)
end

function Q1403104Trigger:TriggerIn()
    print("Q1403104Trigger - TriggerIn")
    actorMgr:GetActor("14031"):RequestInteraction(npcs.Npc1077.alias, "", true)
    this:DestroySelf()
end

function Q1403104Trigger:PreTriggerIn()
    print("Q1403104Trigger - PreTriggerIn")
end

function Q1403104Trigger:LightUpTriggerIn()
    print("Q1403104Trigger - LightUpTriggerIn")
end

function Q1403104Trigger:TriggerOut()
    print("Q1403104Trigger - TriggerOut")
end

return Q1403104Trigger
