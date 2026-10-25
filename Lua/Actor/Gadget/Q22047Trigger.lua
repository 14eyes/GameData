require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22047Trigger = class("Q22047Trigger", GadgetActorProxy)
Q22047Trigger.defaultAlias = "Q22047Trigger"
local Q22047ClientConfig = require("Quest/Client/Q22047ClientConfig")

local subIDs = Q22047ClientConfig.SubIDs
local npcs = Q22047ClientConfig.Npcs
local gadgets = Q22047ClientConfig.Gadgets
local datas = Q22047ClientConfig.Datas

function Q22047Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22047Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22047Trigger:TriggerIn()
    print("TriggerIn")
end

function Q22047Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("22047"):FinishQuestID(true, 2204702)
    self:DestroySelf()
end

return Q22047Trigger
