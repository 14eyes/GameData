require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7324410NewTrigger = class("Q7324410NewTrigger", GadgetActorProxy)
Q7324410NewTrigger.defaultAlias = "Q7324410NewTrigger"
local Q73244ClientConfig = require("Quest/Client/Q73244ClientConfig")

local this
local subIDs = Q73244ClientConfig.SubIDs
local npcs = Q73244ClientConfig.Npcs
local datas = Q73244ClientConfig.Datas

function Q7324410NewTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7324410NewTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(35.47898, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7324410NewTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7324410)
    this:DestroySelf()
end

function Q7324410NewTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7324410NewTrigger
