require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328137_EnterTrigger = class("Q7328137_EnterTrigger", GadgetActorProxy)
Q7328137_EnterTrigger.defaultAlias = "Q7328137_EnterTrigger"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q7328137_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328137_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 25.0, y = 0.0, z = -25.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328137_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328137)
    this:DestroySelf()
end

function Q7328137_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328137_EnterTrigger
