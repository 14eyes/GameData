require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102609Trigger = class("Q1102609Trigger", GadgetActorProxy)
Q1102609Trigger.defaultAlias = "Q1102609Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102609Trigger:FuncBegin()
    print("FuncBegin")
    actorUtils.FinishQuestID(false, 1102609)
    actorMgr:DestroyEntityActor("Q1102609Trigger", 3, false)
end

function Q1102609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(130, 127.5728, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102609Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11026"):NarratorOnlyTaskByData(datas.NarratorWithId1102602, self.FuncBegin, 11026)
end

function Q1102609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102609Trigger
