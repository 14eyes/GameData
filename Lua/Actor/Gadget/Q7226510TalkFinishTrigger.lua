require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226510TalkFinishTrigger = class("Q7226510TalkFinishTrigger", GadgetActorProxy)
Q7226510TalkFinishTrigger.defaultAlias = "Q7226510TalkFinishTrigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226510TalkFinishTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226510TalkFinishTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226510TalkFinishTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):RequestInteraction("20484")
    self:DestroySelf()
end

function Q7226510TalkFinishTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7226510TalkFinishTrigger
