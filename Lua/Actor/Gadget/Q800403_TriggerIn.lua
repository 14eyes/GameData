require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800403_TriggerIn = class("Q800403_TriggerIn", GadgetActorProxy)
Q800403_TriggerIn.defaultAlias = "Q800403_TriggerIn"
local Q8004ClientConfig = require("Quest/Client/Q8004ClientConfig")

local subIDs = Q8004ClientConfig.SubIDs
local npcs = Q8004ClientConfig.Npcs
local datas = Q8004ClientConfig.Datas

function Q800403_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800403_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800403_TriggerIn:TriggerIn()
    print("TriggerIn")
    local questGlobalVar = self:GetQuestGlobalVar(800401)
    if questGlobalVar == 0 then
        local actor = actorMgr:GetActor("8004")
        if actor ~= nil then
            actor:EnterSceneLookCamera(sceneData:GetDummyPoint(6, "Q800403_guide_Door").pos, 3, 3, true, false)
            actor:NarratorOnlyTaskByData(datas.NarratorWithId_800401)
            actor:FinishQuestID(true, 800403)
        end
    elseif questGlobalVar == 1 then
        local actor = actorMgr:GetActor("8004")
        if actor ~= nil then
            actor:FinishQuestID(true, 800403)
        end
    end

    self:DestroySelf()
end

function Q800403_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800403_TriggerIn
