require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617001_TalkTrigger = class("Q7617001_TalkTrigger", GadgetActorProxy)
Q7617001_TalkTrigger.defaultAlias = "Q7617001_TalkTrigger"
local Q76170ClientConfig = require("Quest/Client/Q76170ClientConfig")

local this
local subIDs = Q76170ClientConfig.SubIDs
local npcs = Q76170ClientConfig.Npcs
local points = Q76170ClientConfig.Points

function Q7617001_TalkTrigger:OnPostDataPrepare()
    print("Q7617001_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7617001_TalkTrigger:OnPostComponentPrepare()
    print("Q7617001_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76170)
end

function Q7617001_TalkTrigger:TriggerIn()
    print("Q7617001_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76170"):RequestInteraction(npcs.Npc7087.alias, "", true)
    this:DestroySelf()
end

function Q7617001_TalkTrigger:PreTriggerIn()
    print("Q7617001_TalkTrigger - PreTriggerIn")
end

function Q7617001_TalkTrigger:LightUpTriggerIn()
    print("Q7617001_TalkTrigger - LightUpTriggerIn")
end

function Q7617001_TalkTrigger:TriggerOut()
    print("Q7617001_TalkTrigger - TriggerOut")
end

return Q7617001_TalkTrigger
