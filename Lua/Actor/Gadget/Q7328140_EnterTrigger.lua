require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328140_EnterTrigger = class("Q7328140_EnterTrigger", GadgetActorProxy)
Q7328140_EnterTrigger.defaultAlias = "Q7328140_EnterTrigger"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q7328140_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328140_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328140_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328140)
    this:DestroySelf()
end

function Q7328140_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328140_EnterTrigger
