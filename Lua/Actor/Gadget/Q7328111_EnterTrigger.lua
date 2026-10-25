require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328111_EnterTrigger = class("Q7328111_EnterTrigger", GadgetActorProxy)
Q7328111_EnterTrigger.defaultAlias = "Q7328111_EnterTrigger"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q7328111_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328111_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 10, true, {x = -2.0, y = 2.0, z = 5.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328111_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328111)
    this:DestroySelf()
end

function Q7328111_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328111_EnterTrigger
