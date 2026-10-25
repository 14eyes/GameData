require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73295Trigger1 = class("Q73295Trigger1", GadgetActorProxy)
Q73295Trigger1.defaultAlias = "Q73295Trigger1"
local Q73295ClientConfig = require("Quest/Client/Q73295ClientConfig")

local this
local subIDs = Q73295ClientConfig.SubIDs
local npcs = Q73295ClientConfig.Npcs
local points = Q73295ClientConfig.Points
local datas = Q73295ClientConfig.Datas

function Q73295Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73295Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73295Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329505)
    this:DestroySelf()
end

function Q73295Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73295Trigger1
