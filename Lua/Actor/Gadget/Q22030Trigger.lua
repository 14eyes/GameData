require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22030Trigger = class("Q22030Trigger", GadgetActorProxy)
Q22030Trigger.defaultAlias = "Q22030Trigger"
local Q22030ClientConfig = require("Quest/Client/Q22030ClientConfig")

local subIDs = Q22030ClientConfig.SubIDs
local npcs = Q22030ClientConfig.Npcs
local gadgets = Q22030ClientConfig.Gadgets
local datas = Q22030ClientConfig.Datas

function Q22030Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22030Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22030Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22030"):FinishQuestID(false, 2203002)
    self:DestroySelf()
end

function Q22030Trigger:TriggerOut()
    print("TriggerOut")
end

return Q22030Trigger
