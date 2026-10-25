require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007808Trigger = class("Q4007808Trigger", GadgetActorProxy)
Q4007808Trigger.defaultAlias = "Q4007808Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.03155, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007808Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007808)
    actorMgr:GetActor("40078"):NarratorOnlyTaskByData(datas.NarratorWithId4007804)
    self:DestroySelf()
end

function Q4007808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007808Trigger
