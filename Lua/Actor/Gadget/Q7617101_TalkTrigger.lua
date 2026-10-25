require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617101_TalkTrigger = class("Q7617101_TalkTrigger", GadgetActorProxy)
Q7617101_TalkTrigger.defaultAlias = "Q7617101_TalkTrigger"
local Q76171ClientConfig = require("Quest/Client/Q76171ClientConfig")

local this
local subIDs = Q76171ClientConfig.SubIDs
local npcs = Q76171ClientConfig.Npcs
local points = Q76171ClientConfig.Points

function Q7617101_TalkTrigger:OnPostDataPrepare()
    print("Q7617101_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7617101_TalkTrigger:OnPostComponentPrepare()
    print("Q7617101_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76171)
end

function Q7617101_TalkTrigger:TriggerIn()
    print("Q7617101_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76171"):RequestInteraction(npcs.Npc7087.alias, "", true)
    this:DestroySelf()
end

function Q7617101_TalkTrigger:PreTriggerIn()
    print("Q7617101_TalkTrigger - PreTriggerIn")
end

function Q7617101_TalkTrigger:LightUpTriggerIn()
    print("Q7617101_TalkTrigger - LightUpTriggerIn")
end

function Q7617101_TalkTrigger:TriggerOut()
    print("Q7617101_TalkTrigger - TriggerOut")
end

return Q7617101_TalkTrigger
