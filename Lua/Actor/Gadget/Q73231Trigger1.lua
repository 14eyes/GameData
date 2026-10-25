require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73231Trigger1 = class("Q73231Trigger1", GadgetActorProxy)
Q73231Trigger1.defaultAlias = "Q73231Trigger1"
local Q73231ClientConfig = require("Quest/Client/Q73231ClientConfig")

local this
local subIDs = Q73231ClientConfig.SubIDs
local npcs = Q73231ClientConfig.Npcs
local points = Q73231ClientConfig.Points
local datas = Q73231ClientConfig.Datas

function Q73231Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73231Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73231Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323115)
    this:DestroySelf()
end

function Q73231Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73231Trigger1
