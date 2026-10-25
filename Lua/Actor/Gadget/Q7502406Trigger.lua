require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502406Trigger = class("Q7502406Trigger", GadgetActorProxy)
Q7502406Trigger.defaultAlias = "Q7502406Trigger"
local Q75024ClientConfig = require("Quest/Client/Q75024ClientConfig")

local this
local subIDs = Q75024ClientConfig.SubIDs
local datas = Q75024ClientConfig.Datas
local npcs = Q75024ClientConfig.Npcs
local points = Q75024ClientConfig.Points

function Q7502406Trigger:OnPostDataPrepare()
    print("Q7502406Trigger - OnPostDataPrepare")
    this = self
end

function Q7502406Trigger:OnPostComponentPrepare()
    print("Q7502406Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3.9377117, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75024)
end

function Q7502406Trigger:TriggerIn()
    print("Q7502406Trigger - TriggerIn")
    actorMgr:GetActor("75024"):RequestInteraction(npcs.Npc21498.alias, "", true)
    this:DestroySelf()
end

function Q7502406Trigger:PreTriggerIn()
    print("Q7502406Trigger - PreTriggerIn")
end

function Q7502406Trigger:LightUpTriggerIn()
    print("Q7502406Trigger - LightUpTriggerIn")
end

function Q7502406Trigger:TriggerOut()
    print("Q7502406Trigger - TriggerOut")
end

return Q7502406Trigger
