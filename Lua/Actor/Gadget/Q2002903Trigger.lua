require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2002903Trigger = class("Q2002903Trigger", GadgetActorProxy)
Q2002903Trigger.defaultAlias = "Q2002903Trigger"
local Q20029ClientConfig = require("Quest/Client/Q20029ClientConfig")

local subIDs = Q20029ClientConfig.SubIDs
local npcs = Q20029ClientConfig.Npcs
local datas = Q20029ClientConfig.Datas

function Q2002903Trigger:FuncBegin()
    print("FuncBegin")
    local actor = actorMgr:GetActor("20029")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2002903_N1573").pos, 0, 3, false, false)
    actor:NarratorOnlyTask(datas.NarratorTable, nil, "")
    actor:FinishQuestID(false, 2002903)
end

function Q2002903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2002903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2002903Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("20029")
    if actor:GetSubQuestState(2002903) == 2 then
        actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2002903_N1573").pos, 0, 3, false, false)
        actor:NarratorOnlyTask(datas.NarratorTable, nil, "")
        actor:FinishQuestID(false, 2002903)
    end

    self:DestroySelf()
end

function Q2002903Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2002903Trigger
