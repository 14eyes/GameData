require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328138_EnterTriggerA = class("Q7328138_EnterTriggerA", GadgetActorProxy)
Q7328138_EnterTriggerA.defaultAlias = "Q7328138_EnterTriggerA"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q7328138_EnterTriggerA:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328138_EnterTriggerA:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328138_EnterTriggerA:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328138)
    this:DestroySelf()
end

function Q7328138_EnterTriggerA:TriggerOut()
    print("TriggerOut")
end

return Q7328138_EnterTriggerA
