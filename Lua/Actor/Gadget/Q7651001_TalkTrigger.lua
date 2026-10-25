require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7651001_TalkTrigger = class("Q7651001_TalkTrigger", GadgetActorProxy)
Q7651001_TalkTrigger.defaultAlias = "Q7651001_TalkTrigger"
local Q76510ClientConfig = require("Quest/Client/Q76510ClientConfig")

local this
local subIDs = Q76510ClientConfig.SubIDs
local npcs = Q76510ClientConfig.Npcs
local points = Q76510ClientConfig.Points

function Q7651001_TalkTrigger:OnPostDataPrepare()
    print("Q7651001_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7651001_TalkTrigger:OnPostComponentPrepare()
    print("Q7651001_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76510)
end

function Q7651001_TalkTrigger:TriggerIn()
    print("Q7651001_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76510"):RequestInteraction(npcs.Npc30956.alias, "", true)
    this:DestroySelf()
end

function Q7651001_TalkTrigger:PreTriggerIn()
    print("Q7651001_TalkTrigger - PreTriggerIn")
end

function Q7651001_TalkTrigger:LightUpTriggerIn()
    print("Q7651001_TalkTrigger - LightUpTriggerIn")
end

function Q7651001_TalkTrigger:TriggerOut()
    print("Q7651001_TalkTrigger - TriggerOut")
end

return Q7651001_TalkTrigger
