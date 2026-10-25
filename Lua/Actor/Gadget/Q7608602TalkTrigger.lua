require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608602TalkTrigger = class("Q7608602TalkTrigger", GadgetActorProxy)
Q7608602TalkTrigger.defaultAlias = "Q7608602TalkTrigger"
local Q76086ClientConfig = require("Quest/Client/Q76086ClientConfig")

local this
local subIDs = Q76086ClientConfig.SubIDs
local datas = Q76086ClientConfig.Datas
local npcs = Q76086ClientConfig.Npcs
local points = Q76086ClientConfig.Points

function Q7608602TalkTrigger:OnPostDataPrepare()
    print("Q7608602TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7608602TalkTrigger:OnPostComponentPrepare()
    print("Q7608602TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76086)
end

function Q7608602TalkTrigger:TriggerIn()
    print("Q7608602TalkTrigger - TriggerIn")
    actorMgr:GetActor("76086"):RequestInteraction(npcs.Npc1318.alias, "", true)
    this:DestroySelf()
end

function Q7608602TalkTrigger:PreTriggerIn()
    print("Q7608602TalkTrigger - PreTriggerIn")
end

function Q7608602TalkTrigger:LightUpTriggerIn()
    print("Q7608602TalkTrigger - LightUpTriggerIn")
end

function Q7608602TalkTrigger:TriggerOut()
    print("Q7608602TalkTrigger - TriggerOut")
end

return Q7608602TalkTrigger
