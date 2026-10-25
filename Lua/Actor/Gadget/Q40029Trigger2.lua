require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40029Trigger2 = class("Q40029Trigger2", GadgetActorProxy)
Q40029Trigger2.defaultAlias = "Q40029Trigger2"
local Q40029ClientConfig = require("Quest/Client/Q40029ClientConfig")

local subIDs = Q40029ClientConfig.SubIDs
local npcs = Q40029ClientConfig.Npcs
local datas = Q40029ClientConfig.Datas

function Q40029Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40029Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40029Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40029"):FinishQuestID(false, 4002905)
    self:DestroySelf()
end

function Q40029Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40029Trigger2
