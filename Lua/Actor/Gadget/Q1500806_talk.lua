require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500806_talk = class("Q1500806_talk", GadgetActorProxy)
Q1500806_talk.defaultAlias = "Q1500806_talk"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500806_talk:OnPostDataPrepare()
    print("Q1500806_talk - OnPostDataPrepare")
    this = self
end

function Q1500806_talk:OnPostComponentPrepare()
    print("Q1500806_talk - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500806_talk:TriggerIn()
    print("Q1500806_talk - TriggerIn")
    actorMgr:GetActor("15008"):RequestInteraction(npcs.Npc1087.alias, "", true)
    this:DestroySelf()
end

function Q1500806_talk:PreTriggerIn()
    print("Q1500806_talk - PreTriggerIn")
end

function Q1500806_talk:LightUpTriggerIn()
    print("Q1500806_talk - LightUpTriggerIn")
end

function Q1500806_talk:TriggerOut()
    print("Q1500806_talk - TriggerOut")
end

return Q1500806_talk
