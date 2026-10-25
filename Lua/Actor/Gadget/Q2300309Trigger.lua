require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300309Trigger = class("Q2300309Trigger", GadgetActorProxy)
Q2300309Trigger.defaultAlias = "Q2300309Trigger"
local Q23003ClientConfig = require("Quest/Client/Q23003ClientConfig")

local subIDs = Q23003ClientConfig.SubIDs
local npcs = Q23003ClientConfig.Npcs
local datas = Q23003ClientConfig.Datas

function Q2300309Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300309Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(15, 15, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300309Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("23003")
    if actor:GetSubQuestState(2300306) == 2 then
        actor:NarratorOnlyTask(datas.NarratorTable230039906, nil, "")
        actorUtils.FinishQuestID(false, 2300309)
        self:DestroySelf()
    end
end

function Q2300309Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300309Trigger
