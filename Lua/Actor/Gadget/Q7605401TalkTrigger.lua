require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7605401TalkTrigger = class("Q7605401TalkTrigger", GadgetActorProxy)
Q7605401TalkTrigger.defaultAlias = "Q7605401TalkTrigger"
local Q76054ClientConfig = require("Quest/Client/Q76054ClientConfig")

local this
local subIDs = Q76054ClientConfig.SubIDs
local datas = Q76054ClientConfig.Datas
local npcs = Q76054ClientConfig.Npcs
local points = Q76054ClientConfig.Points

function Q7605401TalkTrigger:OnPostDataPrepare()
    print("Q7605401TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7605401TalkTrigger:OnPostComponentPrepare()
    print("Q7605401TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76054)
end

function Q7605401TalkTrigger:TriggerIn()
    print("Q7605401TalkTrigger - TriggerIn")
    actorMgr:GetActor("76054"):RequestInteraction(npcs.Npc1318.alias, "", true)
    this:DestroySelf()
end

function Q7605401TalkTrigger:PreTriggerIn()
    print("Q7605401TalkTrigger - PreTriggerIn")
end

function Q7605401TalkTrigger:LightUpTriggerIn()
    print("Q7605401TalkTrigger - LightUpTriggerIn")
end

function Q7605401TalkTrigger:TriggerOut()
    print("Q7605401TalkTrigger - TriggerOut")
end

return Q7605401TalkTrigger
