require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7219003Trigger_04 = class("Q7219003Trigger_04", GadgetActorProxy)
Q7219003Trigger_04.defaultAlias = "Q7219003Trigger_04"
local Q72190ClientConfig = require("Quest/Client/Q72190ClientConfig")

local mainID = Q72190ClientConfig.MainID
local actorAlias = Q72190ClientConfig.ActorAlias
local subIDs = Q72190ClientConfig.SubIDs
local datas = Q72190ClientConfig.Datas

function Q7219003Trigger_04:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7219003Trigger_04:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4.984585, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7219003Trigger_04:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219003)
    self:DestroySelf()
end

function Q7219003Trigger_04:TriggerOut()
    print("TriggerOut")
end

return Q7219003Trigger_04
