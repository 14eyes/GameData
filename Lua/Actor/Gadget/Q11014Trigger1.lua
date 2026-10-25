require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11014Trigger1 = class("Q11014Trigger1", GadgetActorProxy)
Q11014Trigger1.defaultAlias = "Q11014Trigger1"
local Q11014ClientConfig = require("Quest/Client/Q11014ClientConfig")

local subIDs = Q11014ClientConfig.SubIDs
local npcs = Q11014ClientConfig.Npcs
local datas = Q11014ClientConfig.Datas

function Q11014Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11014Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(250, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11014Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("11014")
    actor:NarratorOnlyTaskByData(datas.NarratorWithIdSeaWarning)
    actor:FinishQuestID(false, 1101421)
    self:DestroySelf()
end

function Q11014Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q11014Trigger1
